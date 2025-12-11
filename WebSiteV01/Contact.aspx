<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="Btncss/BtnStyleSheet.css" />
    <style type="text/css">
        
        .style26
        {
            width: 100%;
        }
         .style21
        {
            width: 100%;
            height: 0;
        }
        .style27
        {
            text-align: center;
        }
        .style28
        {
            font-size: xx-large;
        }
        .style29
        {
            font-family: Arial;
        }
        .style30
        {
            font-size: large;
        }
        .style31
        {
            font-size: medium;
        }
        .style32
        {
            font-size: x-large;
        }
        .style33
        {
            font-family: "Arial Rounded MT Bold";
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="style28" style="background-color:RGB(241, 241, 241);">
        <strong>Contact Us</strong></p>
    <table class="style26">
        <tr>
            <td class="style27" colspan="2">
    <asp:Label ID="Label9" runat="server" 
                    Text="We are here to assist you with the best care and support. Reach out to us for any inquiries or assistance." 
                    Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Font-Strikeout="False" 
                    Font-Underline="False" ForeColor="#0033CC"></asp:Label>
            </td>
        </tr>
        <tr>
            <td rowspan="2" class="style27">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3671.40097274098!2d72.52604617440524!3d23.045756779157458!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e8494d53c746f%3A0x74e7f9e90dc0ca90!2sJ.%20G.%20College%20of%20Computer%20Application!5e0!3m2!1sen!2sin!4v1741978815296!5m2!1sen!2sin" width="700" height="600" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></td>
            <td>
                
                        <asp:Label ID="Label23" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="Hospital Address:"></asp:Label>
                        <br />
                        <asp:Label ID="Label24" runat="server" 
                    Text="No: 58 A, East Madison St &lt;br&gt; Baltimore, MD, USA"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="Phone Numbers:"></asp:Label>
                        <br />
                    <ul>
                    <li>
                        <asp:Label ID="Label26" runat="server" 
                    Text="+91 12345 67890"></asp:Label>
                        <br />
                    </li>
                    <li>
                        <asp:Label ID="Label27" runat="server" 
                    Text="+91 12345 09876"></asp:Label>
                        <br />
                    </li>
                    <li>
                        <asp:Label ID="Label28" runat="server" 
                    Text="+91 54321 67890"></asp:Label>
                        <br />
                   </li>
                </ul>
               
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="Email:"></asp:Label>
                        <br />
                    <ul>
                    <li>
                        <asp:Label ID="Label2" runat="server" 
                    
                            Text="General Information: &lt;a href=&quot;#&quot;&gt;info@soulmedic.com&lt;/a&gt;"></asp:Label>
                        <br />
                    </li>
                    <li>
                        <asp:Label ID="Label3" runat="server" 
                    
                            Text="Appointments: &lt;a href=&quot;#&quot;&gt;appointments@soulmedic.com&lt;a&gt;"></asp:Label>
                        <br />
                    </li>
                    <li>
                        <asp:Label ID="Label4" runat="server" 
                    Text="Support: &lt;a href=&quot;#&quot;&gt;support@soulmedic.com&lt;/a&gt;"></asp:Label>
                        <br />
                   </li>
                </ul>

                 <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="Working Hours:"></asp:Label>
                        <br />
                    <ul>
                    <li>
                        <asp:Label ID="Label6" runat="server" 
                    
                            Text="Monday to Saturday: 8:00 AM - 12:00 PM"></asp:Label>
                        <br />
                    </li>
                    <li>
                        <asp:Label ID="Label7" runat="server" 
                    
                            Text="Sunday : 7:00 AM - 11:00 PM"></asp:Label>
                        <br />
                    </li>
                    <li>
                        <asp:Label ID="Label8" runat="server" 
                    Text="Emergency Services: 24/7"></asp:Label>
                        <br />
                   </li>
                </ul>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="Social Media:"></asp:Label>
                        <br />
                        <asp:Label ID="Label14" runat="server" 
                    
                            Text="Follow us on social media for the latest updates and health tips:"></asp:Label>
                        <br />
                    <ul>
                    <li>
                        <asp:Label ID="Label11" runat="server" 
                    
                            Text="Facebook: <a href='#'>facebook.com/SoulMedicHospital<a>"></asp:Label>
                        <br />
                    </li>
                    <li>
                        <asp:Label ID="Label12" runat="server" 
                    
                            Text="Twitter: <a href='#'>twitter.com/SoulMedicHospital<a>"></asp:Label>
                        <br />
                    </li>
                    <li>
                        <asp:Label ID="Label13" runat="server" 
                    Text="Instagram: <a href='#'>instagram.com/SoulMedic<a>"></asp:Label>
                        <br />
                   </li>
                </ul></td>
        </tr>
        </table>
        <span class="style29"><strong><span class="style32">Contact Form:</span><span 
        class="style30"><br />
    <br />
    </span></strong><span class="style31">Feel free to fill out the form below, and 
    our team will get back to you as soon as possible.<br />
    </span><span class="style30"><strong>
    <br />
    </strong></span>Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TXTName" runat="server" Width="296px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TXTName" ErrorMessage="&lt;b&gt;*&lt;/b&gt;" ForeColor="Red" 
        SetFocusOnError="True"></asp:RequiredFieldValidator>
    <br />
    <br />
    Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TXTEmail" runat="server" Width="295px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TXTEmail" ErrorMessage="&lt;b&gt;*&lt;/b&gt;" 
        ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phone:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TXTPhone" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="TXTPhone" ErrorMessage="&lt;b&gt;*&lt;/b&gt;" 
        ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="TXTPhone" ErrorMessage="&lt;b&gt;!&lt;/b&gt;" 
        ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[6-9]\d{9}$"></asp:RegularExpressionValidator>
    <br />
    <br />
    Massage:<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="TXTMassage" ErrorMessage="&lt;b&gt;*&lt;/b&gt;" 
        ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;
    <br />
    </span>
    <asp:TextBox ID="TXTMassage" runat="server" Height="97px" TextMode="MultiLine" 
        Width="726px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Height="48px" onclick="Button1_Click" 
        Text="Submit" Width="113px" CssClass="BTN1" />
    <asp:Label ID="lblMessage" runat="server"></asp:Label>
    <br />
    <br />
    <p class="style33" data-pm-slice="1 1 []">
        <strong>We are dedicated to providing the best healthcare services and support 
        to our patients.</strong></p>
        <br/>

</asp:Content>

