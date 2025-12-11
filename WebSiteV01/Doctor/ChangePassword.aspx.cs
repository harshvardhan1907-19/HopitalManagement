using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Doctors_ChangePassword : System.Web.UI.Page
{
    public string page;
    protected void Page_Load(object sender, EventArgs e)
    {
        string Did = Request.QueryString["Did"];
        LBLDid.Text = Did;
        page = "DoctorUser.aspx?Did="+LBLDid.Text;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        // Get user input
       
        string pass = TXTCPassword.Text;
        int id = System.Convert.ToInt32(LBLDid.Text);
        

        // Define connection string (update accordingly)
        string connStr = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connStr))
        {
            try
            {
                

                conn.Open();

                // Update query
                string query = "UPDATE Doctor SET D_pass = @pass WHERE Id = @id";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    // Add parameters to prevent SQL injection
                    cmd.Parameters.AddWithValue("@pass", pass);
                    cmd.Parameters.AddWithValue("@id", id);

                    int rows = cmd.ExecuteNonQuery();

                    if (rows > 0)
                    {
                        string script = @"alert('Your Password has been Changed Successfully!');  
                 window.location='" + page + "';";


                        ClientScript.RegisterStartupScript(this.GetType(), "redirect", script, true);


                    }
                    else
                    {
                        Response.Write("<script>alert('The Password was not changed.');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
            }
        }

    }
}