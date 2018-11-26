using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;
using System.Drawing;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=LAPTOP-42TNU7F2\\SQLEXPRESS;Initial Catalog=InternetProgrammingTest;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["UNAME"] != null && Request.Cookies["PWD"] != null)
            {
                Username.Text = Request.Cookies["UNAME"].Value;
                Password.Attributes["value"] = Request.Cookies["PWD"].Value;
                CheckBox1.Checked = true;
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string check = "select count(*) from [Users] where User_Username = '" + Username.Text + "' and User_Password = '" + Password.Text + "' ";
        SqlCommand com = new SqlCommand(check, con);
        con.Open();
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        con.Close();
        if (temp == 1)
        {
            if(CheckBox1.Checked)
            {
                Response.Cookies["UNAME"].Value = Username.Text;
                Response.Cookies["PWD"].Value = Password.Text;
                Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(15);
                Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(15);
            }
            else
            {
                Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(-1);
            }
            Session["USERNAME"] = Username.Text;
            Response.Redirect("UserHomePage.aspx");

        }
        else
        {
            Label4.ForeColor = System.Drawing.Color.Red;
            Label4.Text = "Your User Name or Password is Invaild";
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminLogin.aspx");
    }
}