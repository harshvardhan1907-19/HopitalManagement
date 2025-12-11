<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="New Add.aspx.cs" Inherits="Admin_Manage_Doctors_New_Add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="../../Btncss/BtnStyleSheet.css" rel="stylesheet" type="text/css" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <table class="style1">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Doctor Id:"></asp:Label>
            </td>
            <td>
                <asp:Label ID="LBLPid" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>
                Doctor Name:</td>
            <td>
                <asp:TextBox ID="TXTDname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                    runat="server" ControlToValidate="TXTDname" ErrorMessage="(Required)" 
                    ForeColor="#999999" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td style="height: 46px">
            </td>
            <td style="height: 46px">
            </td>
            <td style="height: 46px">
                </td>
            <td style="height: 46px">
                </td>
        </tr>
        <tr>
            <td>
                Department:</td>
            <td>
                <asp:DropDownList ID="DDLDep" runat="server" DataSourceID="SqlDataSource1" 
                    DataTextField="Dep" DataValueField="D_id" Width="190px">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" 
                    runat="server" ControlToValidate="DDLDep" ErrorMessage="(Required)" 
                    ForeColor="#999999" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:MyDB %>" 
                    SelectCommand="SELECT * FROM [Department]"></asp:SqlDataSource>
            </td>
            <td>
                Specialization:</td>
            <td>
                <asp:TextBox ID="TXTSp" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                    runat="server" ControlToValidate="TXTSp" ErrorMessage="(Required)" 
                    ForeColor="#999999" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td style="height: 46px">
                </td>
            <td style="height: 46px">
            </td>
            <td style="height: 46px">
                </td>
            <td style="height: 46px">
                </td>
        </tr>
        <tr>
            <td>
                Password:</td>
            <td>
                <asp:TextBox ID="TXTPass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" 
                    runat="server" ControlToValidate="TXTPass" ErrorMessage="(Required)" 
                    ForeColor="#999999" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            <td>
                Phone:</td>
            <td>
                <asp:TextBox ID="TXTPhone" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
                    runat="server" ControlToValidate="TXTPhone" ErrorMessage="(Required)" 
                    ForeColor="#999999" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <span class="style29">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TXTPhone" ErrorMessage="&lt;b&gt;!&lt;/b&gt;" 
                    ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[6-9]\d{9}$"></asp:RegularExpressionValidator>
                </span>
                </td>
        </tr>
        <tr>
            <td style="height: 46px">
                </td>
            <td style="height: 46px">
                </td>
            <td style="height: 46px">
                </td>
            <td style="height: 46px">
                </td>
        </tr>
        <tr>
            <td>
                Confirm
                Password:</td>
            <td>
                <asp:TextBox ID="TXTCPass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" 
                    runat="server" ControlToValidate="TXTCPass" ErrorMessage="(Required)" 
                    ForeColor="#999999" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TXTPass" ControlToValidate="TXTCPass" 
                    ErrorMessage="&lt;b&gt;!&lt;/b&gt;" Font-Bold="True" ForeColor="Red" 
                    SetFocusOnError="True"></asp:CompareValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 46px;">
                </td>
            <td style="height: 46px;">
            </td>
            <td style="height: 46px;">
                </td>
            <td style="height: 46px;">
                </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
                    CssClass="BTNSubmit" Height="42px" style="font-weight: 700" Width="109px" />
            </td>
            <td>
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <p style="text-decoration: underline; font-size: xx-large; font-family: Calibri">
    <strong>Add New</strong></p>
<p>
    &nbsp;</p>
</asp:Content>


