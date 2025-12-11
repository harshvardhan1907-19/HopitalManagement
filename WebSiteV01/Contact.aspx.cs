using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Contact : System.Web.UI.Page
{
    public double recordCount; // Variable to store count
    public double Cid = 0; //count +1
    
    protected void Page_Load(object sender, EventArgs e)
    {
        TXTPhone.Attributes.Add("type", "tel");//textbox tel type
        TXTEmail.Attributes.Add("type", "email");//email

        string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\SEM IV\C#\WebSiteV01\App_Data\SoulDB.mdf;Integrated Security=True;User Instance=True";

        string query = "SELECT count(*) FROM ContactUs"; // this will be count records for take new P_id



        using (SqlConnection con = new SqlConnection(connectionString))
        {
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            recordCount = (int)cmd.ExecuteScalar(); // Get count from database
            con.Dispose();
        }
        if (recordCount == 0)
        {
            Cid = 1;
        }
        else
        {
            Cid = recordCount + 1;
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        // Get user input
        // string Pid = System.Convert.ToString(id);
        string currentDateTime = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
        Console.WriteLine(currentDateTime);

        string Cname=TXTName.Text;
        string Cemail = TXTEmail.Text;
        Decimal Cphone = System.Convert.ToDecimal(TXTPhone.Text);
        string Cmsg = TXTMassage.Text;

       

        // Define connection string (update accordingly)
        string connStr = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connStr))
        {
            try
            {
                conn.Open();

                // Insert query (assuming p_id is auto-generated in the database)
                string query = "INSERT INTO ContactUs (C_id, C_name, C_email, C_phone, C_massage, Datetime) VALUES (@Cid, @Cname, @Cemail, @Cphone, @Cmsg, @currentDateTime)";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    // Add parameters to prevent SQL injection
                    cmd.Parameters.AddWithValue("@Cid", Cid);
                    cmd.Parameters.AddWithValue("@Cname", Cname);
                    cmd.Parameters.AddWithValue("@Cemail", Cemail);
                    cmd.Parameters.AddWithValue("@Cphone", Cphone);
                    cmd.Parameters.AddWithValue("@Cmsg", Cmsg);
                    cmd.Parameters.AddWithValue("@currentDateTime", currentDateTime);


                    int rows = cmd.ExecuteNonQuery();

                    if (rows > 0)
                    {

                        if (rows > 0)
                        {
                            Response.Write("<script>alert('Data Submitted successfully!');</script>");
                        }


                    }
                    else
                    {
                        Response.Write("<script>alert('Failed to insert Data.');</script>");

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