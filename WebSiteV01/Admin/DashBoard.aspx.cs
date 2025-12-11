using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Admin_DashBoard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            LoadDashboardData();
        }
    }
    private void LoadDashboardData()
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connStr))
        {
            conn.Open();

            // Count Total Doctors
            using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM Doctor", conn))
            {
                lblTotalDoctors.Text = cmd.ExecuteScalar().ToString();
            }

            // Count Total Patients
            using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM patients", conn))
            {
                lblTotalPatients.Text = cmd.ExecuteScalar().ToString();
            }

            // Count Today's Appointments
            using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM patients WHERE CAST(Date AS DATE) = CAST(GETDATE() AS DATE)", conn))
            {
                lblTotalAppointments.Text = cmd.ExecuteScalar().ToString();
            }

            // Count Messages
            using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM ContactUs", conn))
            {
                lblTotalMessages.Text = cmd.ExecuteScalar().ToString();
            }
        }
    }
}