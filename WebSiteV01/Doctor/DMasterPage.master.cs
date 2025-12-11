using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Doctor_DMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["Did"] != null)
        {
            string Did = Request.QueryString["Did"];
            LBLDid.Text = Did;

        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Doctor/ChangePassword.aspx?Did=" + LBLDid.Text);
    }
}
