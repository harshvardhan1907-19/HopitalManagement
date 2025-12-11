<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
  
        .style1
        {
            width: 50%;
            height: 0;
        }
        .style2
        {
            font-size: large;
        }
        .style3
        {
            font-size: small;
        }
        .style4
        {
            width: 250px;
        }
        .style5
        {
            font-size: smaller;
        }
        .style6
        {
            font-size: xx-large;
            font-family: Arial;
        }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="style6" style="background-color:RGB(241, 241, 241);">
        <strong>Gallery</strong></p>
    <table cellpadding="0" cellspacing="30" class="style1" align="center" border="1px">
        <tr>
            <td style="text-align: center" class="style4">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="164px" 
                    ImageUrl="~/Gallery2.0/hospital-room-interior.jpg" Width="257px" 
                    onclick="ImageButton1_Click" />
                <br />
                <strong><span class="style2">Inpatient Room</span></strong><br />
                    <em style="border-style: none; border-color: inherit; border-width: 0px; margin: 0px; padding: 0px; outline: 0px; font-family: Lato; vertical-align: baseline; color: rgb(170, 170, 170); font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 700; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;" 
                    class="style3">
                    Facility</em></td>
            <td style="text-align: center">
                <asp:ImageButton ID="ImageButton8" runat="server" Height="164px" 
                    ImageUrl="~/Gallery2.0/Nephrologist-Care.jpg" Width="257px" 
                    onclick="ImageButton8_Click1" />
                <h3 class="style4" 
                    style="font-weight: normal; font-size: large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; border-style: none; border-color: inherit; border-width: 0px; margin: 0px 0px 10px; padding: 0px; outline: 0px; font-family: Lato; vertical-align: baseline; color: rgb(34, 34, 34); line-height: 21.6px; background-color: rgb(255, 255, 255);">
                    <strong>Nephrologist Care</strong></h3>
                <em class="style5" 
                    style="font-size: medium; font-family: Lato; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; border-style: none; border-color: inherit; border-width: 0px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; color: rgb(170, 170, 170); text-align: left;">
                <strong style="font-size: small;">Services</strong></em></td>
            <td style="text-align: center">
                <asp:ImageButton ID="ImageButton9" runat="server" Height="164px" 
                    ImageUrl="~/Gallery2.0/pregnant-woman-receiving-ultrasound-scan-stomach.jpg" 
                    Width="257px" onclick="ImageButton9_Click1" />
                <h3 class="style4" 
                    style="font-weight: 700; font-size: large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; border-style: none; border-color: inherit; border-width: 0px; margin: 0px 0px 10px; padding: 0px; outline: 0px; font-family: Lato; vertical-align: baseline; color: rgb(34, 34, 34); line-height: 21.6px; background-color: rgb(255, 255, 255);">
                    Prenatal<strong> Care</strong></h3>
                <em class="style5" 
                    style="font-size: medium; font-family: Lato; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; border-style: none; border-color: inherit; border-width: 0px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; color: rgb(170, 170, 170); text-align: left;">
                <strong style="font-size: small;">Services</strong></em></td>
            <td style="text-align: center">
                <asp:ImageButton ID="ImageButton10" runat="server" Height="164px" 
                    
                    ImageUrl="~/Gallery2.0/medical-researcher-dripping-blood-into-test-tube-from-micropipette-doctor-working-with-various-bacteria-tissue-pharmaceutical-research-antibiotics-against-covid19.jpg" 
                    Width="257px" onclick="ImageButton10_Click" />
                <h3 class="style2" 
                    style="border-style: none; border-color: inherit; border-width: 0px; margin: 0px 0px 10px; padding: 0px; outline: 0px; font-family: Lato; vertical-align: baseline; color: rgb(34, 34, 34); line-height: 21.6px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                    DNA Diagnostic Lab</h3>
                <em class="style5" 
                    style="font-size: medium; font-family: Lato; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; border-style: none; border-color: inherit; border-width: 0px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; color: rgb(170, 170, 170); text-align: left;">
                <strong style="font-size: small;">Services</strong></em></td>
        </tr>
    </table>
    <table cellpadding="0" cellspacing="30" class="style1" align="center" border="1px">
        <tr>
            <td style="text-align: center" class="style4">
                <asp:ImageButton ID="ImageButton2" runat="server" Height="164px" 
                    ImageUrl="~/Gallery2.0/national-cancer-institute-tFkXIxtYVjw-unsplash.jpg" 
                    Width="257px" onclick="ImageButton2_Click" />
                <strong>
                <br class="style2" />
                <span class="style2">Radiology Clinic</span></strong><br />
                    <em style="border-style: none; border-color: inherit; border-width: 0px; margin: 0px; padding: 0px; outline: 0px; font-family: Lato; vertical-align: baseline; color: rgb(170, 170, 170); font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 700; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;" 
                    class="style3">
                    Services</em></td>
            <td style="text-align: center">
                <asp:ImageButton ID="ImageButton3" runat="server" Height="164px" 
                    ImageUrl="~/Gallery2.0/pexels-fr3nks-305565.jpg" Width="257px" 
                    onclick="ImageButton3_Click" />
                <h3 class="style4" 
                    style="font-weight: normal; font-size: large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; border-style: none; border-color: inherit; border-width: 0px; margin: 0px 0px 10px; padding: 0px; outline: 0px; font-family: Lato; vertical-align: baseline; color: rgb(34, 34, 34); line-height: 21.6px; background-color: rgb(255, 255, 255);">
                    <strong>Eye Care</strong></h3>
                <em class="style5" 
                    style="font-size: medium; font-family: Lato; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; border-style: none; border-color: inherit; border-width: 0px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; color: rgb(170, 170, 170); text-align: left;">
                <strong style="font-size: small;">Services</strong></em></td>
            <td style="text-align: center">
                <asp:ImageButton ID="ImageButton4" runat="server" Height="164px" 
                    
                    ImageUrl="~/Gallery2.0/pexels-pavel-danilyuk-7653108.jpg" 
                    Width="257px" onclick="ImageButton4_Click" />
                <h3 class="style4" 
                    style="font-weight: 700; font-size: large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; border-style: none; border-color: inherit; border-width: 0px; margin: 0px 0px 10px; padding: 0px; outline: 0px; font-family: Lato; vertical-align: baseline; color: rgb(34, 34, 34); line-height: 21.6px; background-color: rgb(255, 255, 255);">
                    Pediat<strong>rician Clinic</strong></h3>
                <em class="style5" 
                    style="font-size: medium; font-family: Lato; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; border-style: none; border-color: inherit; border-width: 0px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; color: rgb(170, 170, 170); text-align: left;">
                <strong style="font-size: small;">Services</strong></em></td>
            <td style="text-align: center">
                <asp:ImageButton ID="ImageButton5" runat="server" Height="164px" 
                    
                    ImageUrl="~/Gallery2.0/pexels-pixabay-269077.jpg" 
                    Width="257px" onclick="ImageButton5_Click" />
                <h3 class="style2" 
                    style="border-style: none; border-color: inherit; border-width: 0px; margin: 0px 0px 10px; padding: 0px; outline: 0px; font-family: Lato; vertical-align: baseline; color: rgb(34, 34, 34); line-height: 21.6px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                    Hospital Building</h3>
                <em class="style5" 
                    style="font-size: medium; font-family: Lato; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; border-style: none; border-color: inherit; border-width: 0px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; color: rgb(170, 170, 170); text-align: left;">
                <strong style="font-size: small;">Hospital</strong></em></td>
        </tr>
    </table>

</asp:Content>

