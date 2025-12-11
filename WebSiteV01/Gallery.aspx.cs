using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Gallery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Gallery2.0/facility-stay-280x215.jpg");
    }
    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Gallery2.0/Nephrologist-Care-280x215.jpg");
    }
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Gallery2.0/pregnant-woman-receiving-ultrasound-scan-stomach.jpg");
    }

    protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Gallery2.0/medical-researcher-dripping-blood-into-test-tube-from-micropipette-doctor-working-with-various-bacteria-tissue-pharmaceutical-research-antibiotics-against-covid19.jpg");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Gallery2.0/national-cancer-institute-tFkXIxtYVjw-unsplash.jpg");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Gallery2.0/pexels-fr3nks-305565.jpg");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Gallery2.0/pexels-pavel-danilyuk-7653108.jpg");
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Gallery2.0/pexels-pixabay-269077.jpg");
    }
    protected void ImageButton9_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Gallery2.0/pregnant-woman-receiving-ultrasound-scan-stomach.jpg");
    }
    protected void ImageButton8_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Gallery2.0/Nephrologist-Care.jpg");
    }
}