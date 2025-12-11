using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Appointment : System.Web.UI.Page
{
    public double recordCount; // Variable to store count
    public double id = 0; //count +1
    
    protected void Page_Load(object sender, EventArgs e)
    {
        TXTPhone.Attributes.Add("type", "tel");//textbox tel type
        txtDate.Attributes.Add("type", "date");// date
        TXTEmail.Attributes.Add("type", "email");//email

        string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\SEM IV\C#\WebSiteV01\App_Data\SoulDB.mdf;Integrated Security=True;User Instance=True";

        string query = "SELECT ISNULL(MAX(P_id), 0) + 1 FROM patients";
        // this will be count records for take new P_id



        using (SqlConnection con = new SqlConnection(connectionString))
        {
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            id = Convert.ToInt32(cmd.ExecuteScalar()); // Get next P_id
        }

        
        
        LBLPid.Text = "<h1><b>Appointment Id: <u><font color='red'>"+ System.Convert.ToString(id)+"</font></u></b></h1>";

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        // Get user input
       // string Pid = System.Convert.ToString(id);
        string currentDateTime = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
        Console.WriteLine(currentDateTime);

        string did = System.Convert.ToString(DDLDid.SelectedValue);
        double Pid = id;
        string dep = System.Convert.ToString(DDLDep.SelectedItem);
        string fname = TXTFName.Text;
        string lname = TXTLName.Text;
        DateTime DateofBirth = DateTime.Parse(txtDate.Text);
        string gender = RBTNSex.SelectedValue;
        string email = TXTEmail.Text;
        Decimal phone = System.Convert.ToDecimal(TXTPhone.Text);
        string msg = TXTMsg.Text;
        
        //doctor phone Number and Name
       // string DPhone = "";
        string Dname = System.Convert.ToString(DDLDid.SelectedItem);

        

        //if (DDLDep.SelectedIndex == 0) {
        //    //dep1
        //    if (DDLDid.SelectedIndex == 0)
        //    {
        //        DPhone = "9997766611";//d1
        //    }
        //    else
        //        if (DDLDid.SelectedIndex == 1) {
        //            DPhone = "9997788442";//d2
        //        }
        //}
        //else
        //    // now each dep have only a doctor
        //if (DDLDep.SelectedIndex == 1)
        //{
        //    DPhone = "9997733221";
        //}
        //else
        //if (DDLDep.SelectedIndex == 2)
        //{
        //    DPhone = "9997769640";
        //}
        //else
        //if (DDLDep.SelectedIndex == 3)
        //{
        //    DPhone = "9997832154";
        //}
        //else
        //if (DDLDep.SelectedIndex == 4)
        //{
        //    DPhone = "9997735477";
        //}
        //else
        //if (DDLDep.SelectedIndex == 5)
        //{
        //    DPhone = "9997777009";
            
        //}
        //else
        //if (DDLDep.SelectedIndex == 6)
        //{
        //    DPhone = "9997700807";
        //}
        //else
        //    if (DDLDep.SelectedIndex == 7)
        //    {
        //        DPhone = "9990087780";
        //    }
        //    else {
        //        DPhone = "0000000000";
        //    }


        // Define connection string (update accordingly)
        string connStr = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connStr))
        {
            try
            {
                conn.Open();
                string dPhoneQuery = "SELECT D_Phone FROM Doctor WHERE Id = @did";
                string dPhone = "";

                using (SqlCommand dPhoneCmd = new SqlCommand(dPhoneQuery, conn))
                {
                    dPhoneCmd.Parameters.AddWithValue("@did", did);
                    object result = dPhoneCmd.ExecuteScalar();
                    if (result != null)
                        dPhone = result.ToString();
                }

                // Insert query (assuming p_id is auto-generated in the database)
                string query = "INSERT INTO Patients (P_id, Doc_id, Department, FName, LName, DOB, Sex, Email, Phone, MSG, Date, D_Phone, D_Name) VALUES (@Pid, @did, @dep, @fname, @lname, @DateofBirth, @gender, @email, @phone, @msg, @currentDateTime, @DPhone, @Dname)";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    // Add parameters to prevent SQL injection
                    cmd.Parameters.AddWithValue("@Pid", Pid);
                    cmd.Parameters.AddWithValue("@did", did);
                    cmd.Parameters.AddWithValue("@dep", dep);
                    cmd.Parameters.AddWithValue("@fname", fname);
                    cmd.Parameters.AddWithValue("@lname", lname);
                    cmd.Parameters.AddWithValue("@DateofBirth", DateofBirth);
                    cmd.Parameters.AddWithValue("@gender", gender);
                    cmd.Parameters.AddWithValue("@email", email);
                    cmd.Parameters.AddWithValue("@phone", phone);
                    cmd.Parameters.AddWithValue("@msg", msg);
                    cmd.Parameters.AddWithValue("@currentDateTime", currentDateTime);
                    cmd.Parameters.AddWithValue("@DPhone", dPhone);
                    cmd.Parameters.AddWithValue("@Dname", Dname);

                    int rows = cmd.ExecuteNonQuery();

                    if (rows > 0)
                    {

                        if (rows > 0)
                        {
                            Response.Write("<script>alert('Patient\\'s Appointment inserted successfully!');</script>");
//                            string script = @"alert(''Patient\\'s Appointment inserted Successfully!');  
//                     window.location='~/Appointment.aspx';";

//                            ClientScript.RegisterStartupScript(this.GetType(), "redirect", script, true);
                        }

                      
                    }
                    else
                    {
                        Response.Write("<script>alert('The Application did not Insert.');</script>");
                        
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
            }
        }
    }
    protected void BTNSchedule_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Schedule/Shedule.aspx?Did="+DDLDid.SelectedValue);

        //if (DDLDep.SelectedIndex == 0) {
        //    Response.Redirect("~/Schedule/1.aspx");
        //}

        //if (DDLDep.SelectedIndex == 1)
        //{
        //    Response.Redirect("~/Schedule/2.aspx");
        //}

        //if (DDLDep.SelectedIndex == 2)
        //{
        //    Response.Redirect("~/Schedule/3.aspx");
        //}

        //if (DDLDep.SelectedIndex == 3)
        //{
        //    Response.Redirect("~/Schedule/4.aspx");
        //}

        //if (DDLDep.SelectedIndex == 4)
        //{
        //    Response.Redirect("~/Schedule/5.aspx");
        //}

        //if (DDLDep.SelectedIndex == 5)
        //{
        //    Response.Redirect("~/Schedule/6.aspx");
        //}

        //if (DDLDep.SelectedIndex == 6)
        //{
        //    Response.Redirect("~/Schedule/7.aspx");
        //}

        //if (DDLDep.SelectedIndex == 7)
        //{
        //    Response.Redirect("~/Schedule/8.aspx");
        //}
    }
}