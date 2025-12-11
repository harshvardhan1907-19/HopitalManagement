<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Doctors_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 62%;
            height: 292px;
        }
        .style2
        {
            text-align: center;
            height: 71px;
        }
        .style3
        {
            text-align: center;
            }
        .style4
        {
            width: 279px;
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
    <link href="~/Btncss/BtnStyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body style="height: 389px; width: 877px; margin-left: 386px">
    <form id="form1" runat="server">
   
    
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <br />
   
    
    <table cellpadding="0" cellspacing="0" 
        style="border-style:groove; border-bottom:true; border-top:true; border-left:true; border-right:true; " 
        class="style1">
        <tr>
            <td class="style5" colspan="2">
                <img alt="" src="../Img/logo.png" 
                    style="height: 70px; width: 345px; text-align: center;" /></td>
        </tr>
        <tr>
            <td class="style3">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Doctor Id:</td>
            <td class="style4">
                <asp:TextBox ID="TXTDid" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password :</td>
            <td class="style4">
                <asp:TextBox ID="TXTPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Button CssClass="BTN1" ID="Button1" runat="server" Text="Login" Width="100px" 
                    onclick="Button1_Click" Height="40px" />
            &nbsp;&nbsp;
                <asp:Button ID="Button2" CssClass="BTN2" runat="server" Text="Back" Width="90px" 
                    onclick="Button1_Click" PostBackUrl="~/Home/home.aspx" Height="40px" />
            </td>
        </tr>
    </table>
    
    </form>
</body>
</html>
