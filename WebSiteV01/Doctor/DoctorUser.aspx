<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/DMasterPage.master" AutoEventWireup="true" CodeFile="DoctorUser.aspx.cs" Inherits="Doctor_DoctorUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .style1
        {
            text-decoration: underline;
        font-family: Arial, Helvetica, sans-serif;
    }
        .style3
        {
            font-size: large;
            text-align: center;
        }
        .style4
        {
            text-align: center;
            text-decoration: underline;
        }
        .style5
        {
            font-size: large;
            text-align: center;
            text-decoration: underline;
        }
        .style6
        {
            width: 487px;
        }
        .style7
        {
            width: 263px;
            font-family: Calibri;
        }
    </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h3 class="style1" 
        style="font-size: xx-large; color: rgb(0, 51, 102); font-family: &quot;Times New Roman&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(240, 240, 245); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
        <strong style="font-weight: bold; color: rgb(0, 102, 255);">&nbsp;</strong><asp:Label 
            ID="LBLDname" runat="server" CssClass="style1" Text="Dr. Gaurang Makavana"></asp:Label>
    &nbsp;</h3>
    <p style="font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(240, 240, 245); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; color: rgb(204, 102, 0);">
        <strong style="color: rgb(153, 0, 204);">Specialization:</strong><span>&nbsp;</span><asp:Label 
            ID="LBLSpecialization" runat="server" Text="Heart Specialist / Cardiologist"></asp:Label>
    </p>
    <p>
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
    </p>
    <p class="style4" style="background-color:RGB(241, 241, 241);">
        <strong style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
        Appointments</strong></p>
    <div>
    
        <br />
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AutoGenerateEditButton="True" CellPadding="4" 
    DataSourceID="SqlDataSource1" ForeColor="#333333" Width="100%" 
            AutoGenerateColumns="False" DataKeyNames="P_id" AllowSorting="True">
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="P_id" HeaderText="P_id" SortExpression="P_id" 
            ReadOnly="True" />
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
    <EditRowStyle BackColor="#2461BF" />
    <EmptyDataTemplate>No Appointments yet.</EmptyDataTemplate>
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:MyDB %>" 
    SelectCommand="SELECT * FROM [patients] WHERE ([Doc_id] = @Doc_id)" 
    DeleteCommand="DELETE FROM [patients] WHERE [P_id] = @P_id" 
    InsertCommand="INSERT INTO [patients] ([P_id], [Doc_id], [Department], [FName], [LName], [DOB], [Sex], [Email], [Phone], [MSG], [Status], [Description], [Date], [D_Phone], [D_Name]) VALUES (@P_id, @Doc_id, @Department, @FName, @LName, @DOB, @Sex, @Email, @Phone, @MSG, @Status, @Description, @Date, @D_Phone, @D_Name)" 
    
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
    <SelectParameters>
        <asp:QueryStringParameter Name="Doc_id" QueryStringField="Did" Type="Int32" />
    </SelectParameters>
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

<asp:Label ID="LBLid" runat="server" Visible="False"></asp:Label>

    
    </div>
    <p>
        &nbsp;</p>
    <p class="style5" style="background-color:RGB(241, 241, 241)">
        <strong>Shift</strong></p>
    <p class="style3">
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            BorderColor="Black" BorderStyle="Solid" CellPadding="4" 
            DataKeyNames="Doctor_Id" DataSourceID="SqlDataSource2" ForeColor="#333333" 
            GridLines="Vertical" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
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
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MyDB %>" 
            DeleteCommand="DELETE FROM [Schedule] WHERE [Doctor_Id] = @Doctor_Id" 
            InsertCommand="INSERT INTO [Schedule] ([Doctor_Id], [Sunday], [Monday], [Tuesday], [Wednesday], [Thursday], [Friday], [Saturday]) VALUES (@Doctor_Id, @Sunday, @Monday, @Tuesday, @Wednesday, @Thursday, @Friday, @Saturday)" 
            SelectCommand="SELECT * FROM [Schedule] WHERE ([Doctor_Id] = @Doctor_Id)" 
            UpdateCommand="UPDATE [Schedule] SET [Sunday] = @Sunday, [Monday] = @Monday, [Tuesday] = @Tuesday, [Wednesday] = @Wednesday, [Thursday] = @Thursday, [Friday] = @Friday, [Saturday] = @Saturday WHERE [Doctor_Id] = @Doctor_Id">
            <DeleteParameters>
                <asp:Parameter Name="Doctor_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Doctor_Id" Type="Int32" />
                <asp:Parameter Name="Sunday" Type="String" />
                <asp:Parameter Name="Monday" Type="String" />
                <asp:Parameter Name="Tuesday" Type="String" />
                <asp:Parameter Name="Wednesday" Type="String" />
                <asp:Parameter Name="Thursday" Type="String" />
                <asp:Parameter Name="Friday" Type="String" />
                <asp:Parameter Name="Saturday" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="Doctor_Id" QueryStringField="Did" 
                    Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Sunday" Type="String" />
                <asp:Parameter Name="Monday" Type="String" />
                <asp:Parameter Name="Tuesday" Type="String" />
                <asp:Parameter Name="Wednesday" Type="String" />
                <asp:Parameter Name="Thursday" Type="String" />
                <asp:Parameter Name="Friday" Type="String" />
                <asp:Parameter Name="Saturday" Type="String" />
                <asp:Parameter Name="Doctor_Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

