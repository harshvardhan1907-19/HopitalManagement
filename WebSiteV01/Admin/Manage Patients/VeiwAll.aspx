<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="VeiwAll.aspx.cs" Inherits="Admin_Manage_Patients_VeiwAll" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
    BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
    DataKeyNames="P_id" DataSourceID="SqlDataSource1" GridLines="Vertical" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
    <AlternatingRowStyle BackColor="#DCDCDC" />
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="P_id" HeaderText="P_id" ReadOnly="True" 
            SortExpression="P_id" />
        <asp:BoundField DataField="Doc_id" HeaderText="Doc_id" 
            SortExpression="Doc_id" />
        <asp:BoundField DataField="Department" HeaderText="Department" 
            SortExpression="Department" />
        <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
        <asp:BoundField DataField="LName" HeaderText="LName" SortExpression="LName" />
        <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
        <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
        <asp:BoundField DataField="MSG" HeaderText="MSG" SortExpression="MSG" />
        <asp:BoundField DataField="Status" HeaderText="Status" 
            SortExpression="Status" />
        <asp:BoundField DataField="Description" HeaderText="Description" 
            SortExpression="Description" />
        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
        <asp:BoundField DataField="D_Phone" HeaderText="D_Phone" 
            SortExpression="D_Phone" />
        <asp:BoundField DataField="D_Name" HeaderText="D_Name" 
            SortExpression="D_Name" />
    </Columns>
    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#0000A9" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#000065" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:MyDB %>" 
    SelectCommand="SELECT * FROM [patients]"></asp:SqlDataSource>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <p style="text-decoration: underline; font-size: xx-large; font-family: Calibri">
    <strong>All Patient Details</strong></p>
</asp:Content>


