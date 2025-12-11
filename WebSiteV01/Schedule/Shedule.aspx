<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Shedule.aspx.cs" Inherits="Schedule_Shedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 class="style1" 
        style="font-size: x-large; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
        <asp:Label ID="LBLDname" runat="server" ForeColor="#3333CC"></asp:Label>
    </h3>
       <ul><li> <asp:Label ID="LBLSpecialization" runat="server" Font-Bold="True" 
               ForeColor="Red"></asp:Label>&nbsp;<asp:Label ID="lblMessage" runat="server"></asp:Label>
           </li>
    </ul>
    <p style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
        &nbsp;</p>
    <p style="font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; color: rgb(204, 102, 0);">
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Doctor_Id" DataSourceID="SqlDataSource2">
            <Columns>
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
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MyDB %>" 
            SelectCommand="SELECT * FROM [Schedule] WHERE ([Doctor_Id] = @Doctor_Id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Doctor_Id" QueryStringField="Did" 
                    Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

