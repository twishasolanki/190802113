using System;
using System.Collections.Generic;
using System.Linq;    
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default3 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Print();
    }
    public void Print()
    {
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [id], [fullname], [email], [password] FROM [users]", con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [id], [fullname], [email], [password] FROM [users] WHERE [id] = " + btn.CommandArgument, con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        TextBox1.Text = dt.Rows[0][1].ToString();
        TextBox2.Text = dt.Rows[0][2].ToString();
        
        TextBox4.Text = dt.Rows[0][3].ToString();
        ViewState["user_id"] = btn.CommandArgument;
        Button1.Text = "Update";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        SqlCommand cmd = new SqlCommand("DELETE FROM [users] WHERE [id] = @id", con);
        cmd.Parameters.AddWithValue("@Id", btn.CommandArgument);
        con.Open();
        int s = cmd.ExecuteNonQuery();
        con.Close();
        if (s == 1)
        {
            Literal1.Text = "Data Deleted Sucessfully !";
            Print();
        }
        else
        {
            Literal1.Text = "Error for Delete Data !";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Button1.Text == "Submit")
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [users] ([fullname], [email], [password]) VALUES (@fullname, @email, @password)", con);
            
            cmd.Parameters.AddWithValue("@fullname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@email", TextBox2.Text);
            cmd.Parameters.AddWithValue("@password", TextBox4.Text);
            con.Open();
            int s = cmd.ExecuteNonQuery();
            con.Close();
            if (s == 1)
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
                
                TextBox4.Text = "";
                //Response.Redirect("~/LOGIN.aspx");
                Literal1.Text = "Inserted Sucessfully..";
                Print();
            }
            else
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
               
                TextBox4.Text = "";
                Literal1.Text = "Error in Inserted data ";
                Print();
            }
        }
        else
        {

            SqlCommand cmd = new SqlCommand("UPDATE [users] SET [fullname] = @fullname, [email] = @email, [password] = @password WHERE [id] = @id", con);
            
            cmd.Parameters.AddWithValue("@fullname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@email", TextBox2.Text);
            cmd.Parameters.AddWithValue("@password", TextBox4.Text);
            cmd.Parameters.AddWithValue("@id", ViewState["user_id"]);
            con.Open();
            int s = cmd.ExecuteNonQuery();
            con.Close();
            if (s == 1)
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
                
                TextBox4.Text = "";
                //Response.Redirect("~/LOGIN.aspx");
                Literal1.Text = "Updated Sucessfully..";
                Button1.Text = "Submit";
                Print();
            }
            else
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
                
                TextBox4.Text = "";
                Button1.Text = "Submit";
                Literal1.Text = "Error in Updation ";
                Print();
            }
        }

    }
}