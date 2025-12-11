using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Admin_Manage_Doctors_New_Add : System.Web.UI.Page
{
    public double recordCount; // Variable to store count
    public double id = 0; //count +1
    public string time = "7.00 - 9.00";
    protected void Page_Load(object sender, EventArgs e)
    {
        string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\SEM IV\C#\WebSiteV01\App_Data\SoulDB.mdf;Integrated Security=True;User Instance=True";

        string query = "SELECT ISNULL(MAX(Id), 0) + 1 FROM Doctor";
        // this will be count records for take new P_id



        using (SqlConnection con = new SqlConnection(connectionString))
        {
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            id = Convert.ToInt32(cmd.ExecuteScalar()); // Get next P_id
        }



        LBLPid.Text = System.Convert.ToString(id);


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        // Get user input
        double Id = id;
        int Depid = System.Convert.ToInt32(DDLDep.SelectedValue);
        string DPname = System.Convert.ToString(DDLDep.SelectedItem);
        string Dname = TXTDname.Text;
        string Sp = TXTSp.Text;
        Decimal phone = System.Convert.ToDecimal(TXTPhone.Text);
        string pass = TXTCPass.Text;

        // Define connection string (update accordingly)
        string connStr = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connStr))
        {
            try
            {
                conn.Open();

                // Insert query (assuming Id is auto-generated in the database)
                string query = "INSERT INTO Doctor (Id, D_Name, D_id, Dep, D_pass, D_Phone, Specialization) VALUES (@Id, @Dname, @Depid, @DPname, @pass, @phone, @Sp)";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    // Add parameters to prevent SQL injection
                    cmd.Parameters.AddWithValue("@Id", Id);
                    cmd.Parameters.AddWithValue("@Dname", Dname);
                    cmd.Parameters.AddWithValue("@Depid", Depid);
                    cmd.Parameters.AddWithValue("@DPname", DPname);
                    cmd.Parameters.AddWithValue("@pass", pass);
                    cmd.Parameters.AddWithValue("@phone", phone);
                    cmd.Parameters.AddWithValue("@Sp", Sp);

                    int rows = cmd.ExecuteNonQuery();

                    if (rows > 0)
                    {
                        string scheduleQuery = "INSERT INTO Schedule (Doctor_Id, sunday) VALUES (@Did, @time)";
                        using (SqlCommand scheduleCmd = new SqlCommand(scheduleQuery, conn))
                        {
                            scheduleCmd.Parameters.AddWithValue("@Did", Id);
                            scheduleCmd.Parameters.AddWithValue("@time", time);
                            
                            scheduleCmd.ExecuteNonQuery();
                        }
                        Response.Write("<script>alert('New Doctor User Created successfully!');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('The Doctor user did not Insert.');</script>");
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
