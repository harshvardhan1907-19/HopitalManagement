<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .container
        {
            color: #3d7c82;
        }
        
        .sub-con
        {
            background-color: darkblue;
            color: #f0f0f0;
            text-align: center;
        }
        
        #heading
        {
            color:darkblue;
            font-weight:bold;
            text-align:center;
            text-shadow:2px 2px 2px lighgray:
        }
        body
        {
            background-image: url('Demo%20photo/bg%202.jpg');
            background-repeat: no-repeat; /* Image repeat na ho */
            background-size: cover; /* Image pura fit ho */
            background-position: center;
        }
        span
        {
            color:blue;
        }
    </style>
    <script language="javascript" type="text/javascript">
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="font-family: Century; font-size: x-large" class="container">
        <h2 id="heading">
            Welcome to our Soul Medic Hospital. Soul Medic gives you best services
            across all treatment. Our hospital have many branch in different different city.</h2>
        <br />
        <div class="sub-con">
            ***Branches***</div>
        <br />
        <span>Ahmedabad: SG Road,Thaltej,Ahmedabad-382455</span><br />
        <br />
        <span>Rajkot:Girirajnagar, Rajkot, Gujarat 360005</span>
        <br />
        <br />
        <span>Surat: Ring Road, Opp Stem Cell Hospital, Khatodra Wadi, Majura Gate, Surat, 395001<br />
            <br />
        </span>
        <br />
        <div class="sub-con">
            ***About Doctors***</div>
        <br />
        <span>
        We have 40 to 50 dotcors staff with 100-200 nueses Or supporting staff in all hospitals.
        All doctors have 5 to 20 years Experianced in their field. Who treat patient very
        well.
        </span>
        <br />
        <br />
        <div class="sub-con">
            ***Facilities***</div>
        <br />
        <span>
        1🔹We provides 24✖7 ambulance &amp; Emergency madical servicies .
        <br />
        <br />
        2🔹We have large area campuse in each hospital. There are huge area which is acomodate
        to parking. So we never face traffic issue.<br />
        <br />
        3🔹We provides food facilities to people who come with the patient and stay facilities
        also be there . Which price is very less than Other hospitals and hotels.
        </span>
    </div>
</asp:Content>

