using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Doctor_DoctorUser : System.Web.UI.Page
{
    public int id;
    public string name;
    public string Specialization;

    protected void Page_Load(object sender, EventArgs e)
    {
        id = System.Convert.ToInt32(Request.QueryString["Did"]);

        string connStr = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connStr))
        {
            try
            {


                conn.Open();

                // select query
                string query = "SELECT D_Name, Specialization FROM Doctor WHERE Id = @id";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    //injection
                    cmd.Parameters.AddWithValue("@id", id);
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        // Storing in variables
                        name = reader["D_Name"].ToString();
                        Specialization = reader["Specialization"].ToString();

                        
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
            }

        }
        LBLDname.Text = name;
        LBLSpecialization.Text = Specialization;
    
    }
}