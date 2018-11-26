using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserHomePage : System.Web.UI.Page

{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["USERNAME"] !=null)
        {
            lblSuccess.Text = "Login Successful, Welcome "+Session["USERNAME"].ToString()+"";
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
}