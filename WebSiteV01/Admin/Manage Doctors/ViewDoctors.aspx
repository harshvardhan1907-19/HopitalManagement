<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewDoctors.aspx.cs" Inherits="Admin_Manage_Doctors_ViewDoctors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" 
    ForeColor="#333333">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" 
            SortExpression="Id" />
        <asp:BoundField DataField="D_Name" HeaderText="D_Name" 
            SortExpression="D_Name" />
        <asp:BoundField DataField="Dep" HeaderText="Dep" SortExpression="Dep" />
        <asp:BoundField DataField="D_id" HeaderText="D_id" SortExpression="D_id" />
        <asp:BoundField DataField="Specialization" HeaderText="Specialization" 
            SortExpression="Specialization" />
        <asp:BoundField DataField="D_Phone" HeaderText="D_Phone" 
            SortExpression="D_Phone" />
    </Columns>
    <EditRowStyle BackColor="#999999" />
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#E9E7E2" />
    <SortedAscendingHeaderStyle BackColor="#506C8C" />
    <SortedDescendingCellStyle BackColor="#FFFDF8" />
    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:MyDB %>" 
    SelectCommand="SELECT [Id], [D_Name], [Dep], [D_id], [Specialization], [D_Phone] FROM [Doctor]">
</asp:SqlDataSource>
<br />
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
    <strong>Doctor Details</strong></p>
</asp:Content>


