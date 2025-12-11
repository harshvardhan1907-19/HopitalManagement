using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Doctors_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        // Connection string
        string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename='D:\SEM IV\C#\WebSiteV01\App_Data\SoulDB.mdf';Integrated Security=True;User Instance=True";

        // User input (replace these with your TextBox values in a real application)
        string userDID = TXTDid.Text; // Replace TxtSID.Text with the actual textbox value for SID
        string userPass = TXTPassword.Text; // Replace TxtPass.Text with the actual textbox value for password

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            // Query to check if both SID and APASS match
            string query = "SELECT COUNT(*) FROM Doctor WHERE Id = @Id AND D_pass = @D_pass";

            using (SqlCommand command = new SqlCommand(query, connection))
            {
                // Adding parameters to avoid SQL injection
                command.Parameters.AddWithValue("@Id", userDID);
                command.Parameters.AddWithValue("@D_pass", userPass);

                // Execute the query
                int count = (int)command.ExecuteScalar();

                // Check if a match exists
                if (count > 0)
                {
                    Response.Redirect("~/Doctor/DoctorUser.aspx?Did=" + TXTDid.Text);
                }
                else
                {
                    Response.Write("<script>alert('Invalid Username Or Password !');</script>");
                }
            }
        }
    }
}