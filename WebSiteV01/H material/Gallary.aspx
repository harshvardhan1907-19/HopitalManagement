<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Gallary.aspx.cs" Inherits="Gallary" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .gallery
        {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
            justify-content: center;
        }
        
        .img
        {
            width: 200px; /* Sab images ka same width */
            height: 200px; /* Sab images ka same height */
            object-fit: cover; /* Image ko crop karke fit karega */
            border-radius: 10px; /* Thoda styling ke liye */
        }
        .gallary
        {
            height: 672px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="gallary">
        <asp:ImageMap ID="ImageMap1" runat="server" ImageUrl="~/Gallary/Hospital-Beds-India.jpeg"
             CssClass="img" >
        </asp:ImageMap>

        <asp:ImageMap ID="ImageMap5" runat="server" ImageUrl="~/Gallary/istockphoto-600073876-612x612.jpg"
            CssClass="img" >
        </asp:ImageMap>

        <asp:Image ID="Image1" runat="server" ImageUrl="~/Gallary/istockphoto-1404179486-612x612.jpg"
           CssClass="img" />

        <asp:ImageMap ID="ImageMap3" runat="server" 
            ImageUrl="~/Gallary/images.jpg" CssClass="img">
        </asp:ImageMap>

        <asp:ImageMap ID="ImageMap4" runat="server" 
            ImageUrl="~/Gallary/D0v8t2RX4AIpZx5.jpg" CssClass="img">
        </asp:ImageMap>

        <asp:ImageMap ID="ImageMap6" runat="server" 
            ImageUrl="~/Gallary/Doctors-consultation-e1724041879564.jpg" 
            CssClass="img">
        </asp:ImageMap>

        <asp:ImageMap ID="ImageMap7" runat="server" 
            
            ImageUrl="~/Gallary/hospital-heart-logo-pulse-heart-beat-icon-healthy-lifestyle-sport-vector.jpg" 
            CssClass="img">
        </asp:ImageMap>
        <br />

        <asp:ImageMap ID="ImageMap8" runat="server" 
            ImageUrl="~/Gallary/photo_1712737388218.jpeg" CssClass="img">
        </asp:ImageMap>

        <asp:ImageMap ID="ImageMap9" runat="server" 
            ImageUrl="~/Gallary/best-hospital-in-south-india.jpg" CssClass="img">
        </asp:ImageMap>

        <asp:ImageMap ID="ImageMap10" runat="server" 
            ImageUrl="~/Gallary/photo_1712737388218.jpeg" CssClass="img">
        </asp:ImageMap>

        <asp:ImageMap ID="ImageMap11" runat="server" 
            ImageUrl="~/Gallary/images.png" CssClass="img">
        </asp:ImageMap>

        <asp:ImageMap ID="ImageMap12" runat="server" 
            ImageUrl="~/Gallary/Screenshot 2025-02-11 205542.png" CssClass="img">
        </asp:ImageMap>


        <asp:Image ID="Image2" runat="server" ImageUrl="~/Gallary/t_1_01.jpg" />
        <asp:Image ID="Image4" runat="server" 
            ImageUrl="~/Gallary/yashfeen-hospital-icu.jpg" />
        <asp:Image ID="Image5" runat="server" 
            ImageUrl="~/Gallary/thumbs_b_c_aaa695095983d40712adb84a7641d4da.jpg" />


    </div>
    
    </form>
</body>
</html>
