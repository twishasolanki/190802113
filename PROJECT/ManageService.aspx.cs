using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        //DeleteCommand="DELETE FROM [services] WHERE [id] = @id"
        //InsertCommand="INSERT INTO [services] ([title], [description], [status]) VALUES (@title, @description, @status)"
        //SelectCommand="SELECT [id], [title], [description], [status] FROM [services]"
        //UpdateCommand="UPDATE [services] SET [title] = @title, [description] = @description, [status] = @status WHERE [id] = @id"
        Print();
    }

    public void Print()
    {
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [id], [title], [description], [status] FROM [services]", con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Button1.Text == "Submit")
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [services] ([title], [description], [status]) VALUES (@title, @description, @status)", con);
            cmd.Parameters.AddWithValue("@title", TextBox1.Text);
            cmd.Parameters.AddWithValue("@description", TextBox2.Text);
            cmd.Parameters.AddWithValue("@status", RadioButtonList1.SelectedValue);
            con.Open();
            int s = cmd.ExecuteNonQuery();
            con.Close();
            if (s == 1)
            {
                TextBox1.Text = "";
                TextBox2.Text = "";

                //Response.Redirect("~/LOGIN.aspx");
                Literal7.Text = "Inserted Service Sucessfully..";
                Print();
            }
            else
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
                Literal7.Text = "Error in Inserted data ";
                Print();
            }
        }
        else
        {
            SqlCommand cmd = new SqlCommand("UPDATE [services] SET [title] = @title, [description] = @description, [status] = @status WHERE [id] = @id", con);
            cmd.Parameters.AddWithValue("@title", TextBox1.Text);
            cmd.Parameters.AddWithValue("@description", TextBox2.Text);
            cmd.Parameters.AddWithValue("@status", RadioButtonList1.SelectedValue);
            cmd.Parameters.AddWithValue("@id", ViewState["service_id"]);
            con.Open();
            int s = cmd.ExecuteNonQuery();
            con.Close();
            if (s == 1)
            {
                TextBox1.Text = "";
                TextBox2.Text = "";

                //Response.Redirect("~/LOGIN.aspx");
                Literal7.Text = "Service Updated Sucessfully..";
                Button1.Text = "Submit";
                Print();
            }
            else
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
                Button1.Text = "Submit";
                Literal7.Text = "Error in Updation Service ";
                Print();
            }
        }
    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [id], [title], [description], [status] FROM [services] WHERE[id] =  " + btn.CommandArgument, con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        TextBox1.Text = dt.Rows[0][1].ToString();
        TextBox2.Text = dt.Rows[0][2].ToString();
        RadioButtonList1.SelectedValue = dt.Rows[0][3].ToString();
        ViewState["service_id"] = btn.CommandArgument;
        Button1.Text = "Update";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        SqlCommand cmd = new SqlCommand("DELETE FROM [services] WHERE [id] = @id", con);
        cmd.Parameters.AddWithValue("@id", btn.CommandArgument);
        con.Open();
        int s = cmd.ExecuteNonQuery();
        con.Close();
        if (s == 1)
        {
            Literal7.Text = "Data Service Deleted Sucessfully !";
            Print();
        }
        else
        {
            Literal7.Text = "Error for Delete Data Service !";
        }
    }
}