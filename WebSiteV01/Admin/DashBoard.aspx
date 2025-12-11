<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="DashBoard.aspx.cs" Inherits="Admin_DashBoard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="height: 427px">
        <tr>
            <td bgcolor="#006600" 
                
                
                style="text-align: center; font-weight: 700; color: #FFFFFF; font-size: x-large; height: 140px; width: 113px; background-color: #FFFFFF;">
            </td>
            <td bgcolor="#006600" 
                
                
                style="text-align: center; font-weight: 700; color: #FFFFFF; font-size: x-large; height: 140px; width: 397px;">
                <strong>Total Doctors<br />
                <br />
                </strong>
                <asp:Label ID="lblTotalDoctors" runat="server" style="font-size: xx-large"></asp:Label>
            </td>
            <td style="height: 140px; width: 111px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td bgcolor="#0000CC" style="text-align: center; height: 140px; width: 396px;">
                <span style="color: #FFFFFF; font-size: x-large; font-family: Arial, Helvetica, sans-serif">
                <strong>Total Patients</strong></span><strong><br style="font-size: x-large" />
                <br style="font-size: x-large" />
                </strong>
                <asp:Label ID="lblTotalPatients" runat="server" 
                    
                    
                    style="color: #FFFFFF; font-size: xx-large; font-weight: 700; font-family: Arial, Helvetica, sans-serif" ></asp:Label>
            </td>
            <td bgcolor="#0000CC" 
                style="text-align: center; height: 140px; background-color: #FFFFFF;">
                </td>
        </tr>
        <tr>
            <td class="style4" 
                style="height: 37px; width: 113px; background-color: #FFFFFF;">
                &nbsp;</td>
            <td class="style4" 
                style="height: 37px; width: 397px; background-color: #FFFFFF;">
                <br />
            </td>
            <td class="style4" 
                style="height: 37px; width: 111px; background-color: #FFFFFF;">
                </td>
            <td class="style4" 
                style="height: 37px; width: 396px; background-color: #FFFFFF;">
                <br />
                </td>
            <td class="style4" style="height: 37px; background-color: #FFFFFF;">
                </td>
        </tr>
        <tr>
            <td bgcolor="#990000" 
                
                
                
                style="text-align: center; font-weight: 700; color: #FFFFFF; font-size: x-large; font-family: Arial, Helvetica, sans-serif; width: 113px; height: 147px; background-color: #FFFFFF;">
            </td>
            <td bgcolor="#990000" 
                
                
                
                style="text-align: center; font-weight: 700; color: #FFFFFF; font-size: x-large; font-family: Arial, Helvetica, sans-serif; width: 397px; height: 147px;">
                <strong>Today&#39;s Appointment<br />
                <br />
                </strong>
                <asp:Label ID="lblTotalAppointments" runat="server" 
                    style="font-size: xx-large" ></asp:Label>
            </td>
            <td style="width: 111px; height: 147px;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td bgcolor="#660066" 
                
                
                style="text-align: center; font-weight: 700; color: #FFFFFF; font-size: x-large; font-family: Arial, Helvetica, sans-serif; width: 396px; height: 147px;">
                <strong style="text-align: center">New Massages<br />
                <br />
                </strong>
                <asp:Label ID="lblTotalMessages" runat="server" style="font-size: xx-large" ></asp:Label>
             </td>
            <td bgcolor="#660066" 
                
                
                style="text-align: center; font-weight: 700; color: #FFFFFF; font-size: x-large; font-family: Arial, Helvetica, sans-serif; height: 147px; background-color: #FFFFFF;">
             </td>
        </tr>
    </table>
    <br />
    <br />
<br />
    <br />
    <br />
    <br />
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <p style="font-family: Bahnschrift"><span style="font-size: xx-large"><strong>Admin Dashboard</strong></span></p>
<p>
    &nbsp;</p>
</asp:Content>


