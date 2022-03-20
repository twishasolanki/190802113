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
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);
        print();
    }
    //DeleteCommand="DELETE FROM [users] WHERE [id] = @id"
    //InsertCommand="INSERT INTO [users] ([name], [mobile], [city]) VALUES (@name, @mobile, @city)" 
    //ProviderName="<%$ ConnectionStrings:DatabaseConnectionString1.ProviderName %>" 
    //SelectCommand="SELECT [id], [name], [mobile], [city] FROM [user]"
    //UpdateCommand="UPDATE [users] SET [name] = @name, [mobile] = @mobile, [city] = @city WHERE [id] = @id">

    public void print()
    {
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [id], [name], [mobile], [city] FROM [users]", con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Button1.Text == "submit")
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [users] ([name], [mobile], [city]) VALUES (@name, @mobile, @city)", con);
            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@mobile", TextBox2.Text);
            cmd.Parameters.AddWithValue("@city", TextBox3.Text);
            con.Open();
            int s = cmd.ExecuteNonQuery();
            con.Close();
            if (s == 1)
            {
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
                TextBox3.Text = string.Empty;
                Literal1.Text = "user inserted succesfully";
            }
            else
            {
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
                TextBox3.Text = string.Empty;
                Literal1.Text = "Error!";
            }
        }
        else
        {
            SqlCommand cmd = new SqlCommand("UPDATE [users] SET [name] = @name, [mobile] = @mobile, [city] = @city WHERE [id] = @id", con);
            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@mobile", TextBox2.Text);
            cmd.Parameters.AddWithValue("@city", TextBox3.Text);
            cmd.Parameters.AddWithValue("@id", ViewState["id"]);
            con.Open();
            int s = cmd.ExecuteNonQuery();
            con.Close();
            if (s == 1)
            {
                TextBox1.Text = string.Empty;
                TextBox1.Text = string.Empty;
                TextBox1.Text = string.Empty;
                Literal1.Text = "user updated succesfully";
            }
            else
            {
                TextBox1.Text = string.Empty;
                TextBox1.Text = string.Empty;
                TextBox1.Text = string.Empty;
                Literal1.Text = "Error!";
            }
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Button btn =(Button)sender;
        SqlCommand cmd = new SqlCommand("DELETE FROM [users] WHERE [id] = @id", con);
        cmd.Parameters.AddWithValue("@id", btn.CommandArgument);
        con.Open();
        int s = cmd.ExecuteNonQuery();
        con.Close();
        if (s == 1)
        {
           
            Literal1.Text = "user Deleted succesfully";
            print();
        }
        else
        {
            Literal1.Text = "Error!";
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [id], [name], [mobile], [city] FROM [users]WHERE [id] = " + btn.CommandArgument,con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        TextBox1.Text = dt.Rows[0][1].ToString();
        TextBox2.Text = dt.Rows[0][2].ToString();
        TextBox3.Text = dt.Rows[0][3].ToString();
        Button1.Text = "update";
        ViewState["id"] = btn.CommandArgument;
        
    }
}