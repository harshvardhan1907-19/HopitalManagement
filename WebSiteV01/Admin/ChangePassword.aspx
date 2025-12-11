<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Doctors_ChangePassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="~/Btncss/BtnStyleSheet.css" rel="stylesheet" type="text/css" />
        <style type="text/css">
            .style1
        {
            width: 62%;
            height: 323px;
        }
        .style2
        {
            text-align: center;
            height: 71px;
        }
        .style3
        {
                text-align: right;
                width: 273px;
            }
        .style4
        {
            width: 279px;
                text-align: left;
            }
        #form1
        {
            text-align: left;
        }
        .style5
        {
            text-align: center;
            height: 106px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
     <table cellpadding="0" cellspacing="0" 
        style="border-style:groove; border-bottom:true; border-top:true; border-left:true; border-right:true; " 
        class="style1" align="center">
        <tr>
            <td class="style5" colspan="2">
                <img alt="" src="../Img/logo.png" 
                    style="height: 70px; width: 345px; text-align: center;" /></td>
        </tr>
        <tr>
            <td class="style3">
                New Password :</td>
            <td class="style4">
                <asp:TextBox ID="TXTNewPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Conform Password:</td>
            <td class="style4">
                <asp:TextBox ID="TXTCPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TXTNewPassword" ControlToValidate="TXTCPassword" 
                    ErrorMessage="&lt;b&gt;!&lt;/b&gt;" Font-Bold="True" ForeColor="Red" 
                    SetFocusOnError="True"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
                <asp:Button ID="BtnChange" runat="server" Text="Change Password" Width="195px" 
                    onclick="Button1_Click" Height="44px" CssClass="BTNChangePass" />
            </td>
        </tr>
    </table>
    
    </form>
</body>
</html>
