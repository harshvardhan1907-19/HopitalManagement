<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="EditDetails.aspx.cs" Inherits="Admin_Manage_Patients_EditDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
    BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
    DataKeyNames="P_id" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
            ShowSelectButton="True" />
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
    DeleteCommand="DELETE FROM [patients] WHERE [P_id] = @P_id" 
    InsertCommand="INSERT INTO [patients] ([P_id], [Doc_id], [Department], [FName], [LName], [DOB], [Sex], [Email], [Phone], [MSG], [Status], [Description], [Date], [D_Phone], [D_Name]) VALUES (@P_id, @Doc_id, @Department, @FName, @LName, @DOB, @Sex, @Email, @Phone, @MSG, @Status, @Description, @Date, @D_Phone, @D_Name)" 
    SelectCommand="SELECT * FROM [patients]" 
    UpdateCommand="UPDATE [patients] SET [Doc_id] = @Doc_id, [Department] = @Department, [FName] = @FName, [LName] = @LName, [DOB] = @DOB, [Sex] = @Sex, [Email] = @Email, [Phone] = @Phone, [MSG] = @MSG, [Status] = @Status, [Description] = @Description, [Date] = @Date, [D_Phone] = @D_Phone, [D_Name] = @D_Name WHERE [P_id] = @P_id">
    <DeleteParameters>
        <asp:Parameter Name="P_id" Type="Int64" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="P_id" Type="Int64" />
        <asp:Parameter Name="Doc_id" Type="Int32" />
        <asp:Parameter Name="Department" Type="String" />
        <asp:Parameter Name="FName" Type="String" />
        <asp:Parameter Name="LName" Type="String" />
        <asp:Parameter DbType="Date" Name="DOB" />
        <asp:Parameter Name="Sex" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Phone" Type="Decimal" />
        <asp:Parameter Name="MSG" Type="String" />
        <asp:Parameter Name="Status" Type="String" />
        <asp:Parameter Name="Description" Type="String" />
        <asp:Parameter Name="Date" Type="DateTime" />
        <asp:Parameter Name="D_Phone" Type="Decimal" />
        <asp:Parameter Name="D_Name" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Doc_id" Type="Int32" />
        <asp:Parameter Name="Department" Type="String" />
        <asp:Parameter Name="FName" Type="String" />
        <asp:Parameter Name="LName" Type="String" />
        <asp:Parameter DbType="Date" Name="DOB" />
        <asp:Parameter Name="Sex" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Phone" Type="Decimal" />
        <asp:Parameter Name="MSG" Type="String" />
        <asp:Parameter Name="Status" Type="String" />
        <asp:Parameter Name="Description" Type="String" />
        <asp:Parameter Name="Date" Type="DateTime" />
        <asp:Parameter Name="D_Phone" Type="Decimal" />
        <asp:Parameter Name="D_Name" Type="String" />
        <asp:Parameter Name="P_id" Type="Int64" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:EntityDataSource ID="EntityDataSource1" runat="server">
</asp:EntityDataSource>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <p style="text-decoration: underline; font-size: xx-large; font-family: Calibri">
    <strong>Edit Patient Data</strong></p>
</asp:Content>


