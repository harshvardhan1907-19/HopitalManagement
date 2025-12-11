using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Patient_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        // Connection string
        string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename='D:\SEM IV\C#\WebSiteV01\App_Data\SoulDB.mdf';Integrated Security=True;User Instance=True";

        // User input (replace these with your TextBox values in a real application)
        string userPID = TXTPid.Text; // Replace TxtSID.Text with the actual textbox value for SID
        string userPhone = TXTPhone.Text; // Replace TxtPass.Text with the actual textbox value for password

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            // Query to check if both SID and APASS match
            string query = "SELECT COUNT(*) FROM patients WHERE P_id = @userPID AND Phone = @userPhone";

            using (SqlCommand command = new SqlCommand(query, connection))
            {
                // Adding parameters to avoid SQL injection
                command.Parameters.AddWithValue("@userPID", userPID);
                command.Parameters.AddWithValue("@userPhone", userPhone);

                // Execute the query
                int count = (int)command.ExecuteScalar();

                // Check if a match exists
                if (count > 0)
                {
                    Response.Redirect("PatientDetails.aspx?Pid="+TXTPid.Text);
                }
                else
                {
                    Response.Write("<script>alert('Invalid PatientID Or Phone Number !');</script>");
                }
            }
        }
    }
}