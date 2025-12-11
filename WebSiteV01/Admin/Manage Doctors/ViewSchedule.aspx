<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewSchedule.aspx.cs" Inherits="Admin_Manage_Doctors_ViewSchedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
    BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
    DataKeyNames="Doctor_Id" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="Doctor_Id" HeaderText="Doctor_Id" ReadOnly="True" 
            SortExpression="Doctor_Id" />
        <asp:BoundField DataField="Sunday" HeaderText="Sunday" 
            SortExpression="Sunday" />
        <asp:BoundField DataField="Monday" HeaderText="Monday" 
            SortExpression="Monday" />
        <asp:BoundField DataField="Tuesday" HeaderText="Tuesday" 
            SortExpression="Tuesday" />
        <asp:BoundField DataField="Wednesday" HeaderText="Wednesday" 
            SortExpression="Wednesday" />
        <asp:BoundField DataField="Thursday" HeaderText="Thursday" 
            SortExpression="Thursday" />
        <asp:BoundField DataField="Friday" HeaderText="Friday" 
            SortExpression="Friday" />
        <asp:BoundField DataField="Saturday" HeaderText="Saturday" 
            SortExpression="Saturday" />
    </Columns>
    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
    <RowStyle BackColor="White" ForeColor="#003399" />
    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
    <SortedAscendingCellStyle BackColor="#EDF6F6" />
    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
    <SortedDescendingCellStyle BackColor="#D6DFDF" />
    <SortedDescendingHeaderStyle BackColor="#002876" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:MyDB %>" 
    SelectCommand="SELECT * FROM [Schedule]"></asp:SqlDataSource>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <p style="text-decoration: underline; font-size: xx-large; font-family: Calibri">
    <strong>Dctor Schedule</strong></p>
</asp:Content>


