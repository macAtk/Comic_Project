using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USERNAME"] != null)
        {
            lblSuccess.Text = "Login Successful, Welcome " + Session["USERNAME"].ToString() + "";
        }
        else
        {
            Response.Redirect("~/Login.aspx");
        }
    }

    protected void BtnSignOut_Click(object sender, EventArgs e)
    {
        Session["USERNAME"] = null;
        Response.Redirect("index.html");
    }

    protected void lbInsert_Click(object sender, EventArgs e)
    {
        SqlDataSource1.InsertParameters["User_Username"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtUsername")).Text;

        SqlDataSource1.InsertParameters["User_Password"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtPassword")).Text;

        SqlDataSource1.InsertParameters["User_Email"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtEmail")).Text;

        SqlDataSource1.InsertParameters["User_Fname"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtFname")).Text;

        SqlDataSource1.InsertParameters["User_Lname"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtLname")).Text;

        SqlDataSource1.InsertParameters["User_Country"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtCountry")).Text;

        SqlDataSource1.Insert();
    }
}