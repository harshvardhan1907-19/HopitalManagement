<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Patient_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<style type="text/css">
        .style27
    {
        width: 40%;
        height: 40%;
    }
    .style28
    {
        width: 933px;
        font-size: large;
        text-align: right;
    }
    .style29
    {
        width: 270px;
    }
    .style30
    {
        height: 2px;
        text-align: center;
    }
    .style31
    {
        width: 933px;
        height: 97px;
        font-size: large;
        text-align: right;
    }
    .style32
    {
        width: 270px;
        height: 97px;
    }
    
    </style>
    <link href="../Staff/StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <table align="center" cellpadding="0" cellspacing="0" class="style27" style="border-style:groove; border-bottom:true; border-top:true; border-left:true; border-right:true; ">
        <tr>
            <td class="style28">
                Patient Id:</td>
            <td class="style29">
                <asp:TextBox ID="TXTPid" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style31">
                Phone :</td>
            <td class="style32">
                <asp:TextBox ID="TXTPhone" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style30" colspan="2">
                <asp:Button ID="Button1" runat="server" Text="See Details" Width="111px" 
                    onclick="Button1_Click" Height="37px" CssClass="BTN1"/>
            </td>
        </tr>
    </table>
</asp:Content>

