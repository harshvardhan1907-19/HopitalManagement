<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="EditDoctor.aspx.cs" Inherits="Admin_Manage_Doctors_EditDoctor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
    DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
            ShowSelectButton="True" />
        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" 
            SortExpression="Id" />
        <asp:BoundField DataField="D_Name" HeaderText="D_Name" 
            SortExpression="D_Name" />
        <asp:BoundField DataField="D_id" HeaderText="D_id" SortExpression="D_id" />
        <asp:BoundField DataField="Dep" HeaderText="Dep" SortExpression="Dep" />
        <asp:BoundField DataField="D_pass" HeaderText="D_pass" 
            SortExpression="D_pass" />
        <asp:BoundField DataField="D_Phone" HeaderText="D_Phone" 
            SortExpression="D_Phone" />
        <asp:BoundField DataField="Specialization" HeaderText="Specialization" 
            SortExpression="Specialization" />
    </Columns>
    <EditRowStyle BackColor="#999999" />
    <EmptyDataTemplate>
        No Doctor Found !!!
    </EmptyDataTemplate>
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
    DeleteCommand="DELETE FROM [Doctor] WHERE [Id] = @Id" 
    InsertCommand="INSERT INTO [Doctor] ([Id], [D_Name], [D_id], [Dep], [D_pass], [D_Phone], [Specialization]) VALUES (@Id, @D_Name, @D_id, @Dep, @D_pass, @D_Phone, @Specialization)" 
    SelectCommand="SELECT * FROM [Doctor]" 
    UpdateCommand="UPDATE [Doctor] SET [D_Name] = @D_Name, [D_id] = @D_id, [Dep] = @Dep, [D_pass] = @D_pass, [D_Phone] = @D_Phone, [Specialization] = @Specialization WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Id" Type="Int32" />
        <asp:Parameter Name="D_Name" Type="String" />
        <asp:Parameter Name="D_id" Type="Int32" />
        <asp:Parameter Name="Dep" Type="String" />
        <asp:Parameter Name="D_pass" Type="String" />
        <asp:Parameter Name="D_Phone" Type="Decimal" />
        <asp:Parameter Name="Specialization" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="D_Name" Type="String" />
        <asp:Parameter Name="D_id" Type="Int32" />
        <asp:Parameter Name="Dep" Type="String" />
        <asp:Parameter Name="D_pass" Type="String" />
        <asp:Parameter Name="D_Phone" Type="Decimal" />
        <asp:Parameter Name="Specialization" Type="String" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
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
    <strong>Edit Doctor Details</strong></p>
</asp:Content>


