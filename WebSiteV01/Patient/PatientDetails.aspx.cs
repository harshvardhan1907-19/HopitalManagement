using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Patient_PatientDetails : System.Web.UI.Page
{
    public int PID;
    protected void Page_Load(object sender, EventArgs e)
    {
        string pid = Request.QueryString["Pid"];
        //PID = System.Convert.ToInt32(pid);
        LBLPid.Text = pid;
    }
}