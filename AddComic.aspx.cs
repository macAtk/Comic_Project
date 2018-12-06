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

public partial class AddComic : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=LAPTOP-42TNU7F2\\SQLEXPRESS;Initial Catalog=InternetProgrammingTest;Integrated Security=True");


    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("INSERT into Comics values('" + comicName.Text + "','" + comicVolume.Text + "','" + comicPro.Text + "','" + comicAnt.Text + "','" + comicDate.Text + "','" + comicAuthor.Text + "','U')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        lblMsg.ForeColor = Color.Green;
        lblMsg.Text = "Comic Added!";
        Response.Redirect("UserHomePage.aspx");
    }
}
