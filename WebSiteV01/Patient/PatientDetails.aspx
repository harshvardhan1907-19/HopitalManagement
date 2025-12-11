<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PatientDetails.aspx.cs" Inherits="Patient_PatientDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style31
        {
            width: 100%;
        }
        .style33
        {
            font-size: large;
        }
        .style36
        {
            height: 1px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="LBLPid" runat="server" CssClass="style33" Text="Label"></asp:Label>
    <br class="style33" />
    <br class="style33" />
    <asp:FormView ID="FormView1" runat="server" CssClass="style33" 
        DataKeyNames="P_id" DataSourceID="SqlDataSource1" Height="496px" Width="1167px">
        <EditItemTemplate>
            P_id:
            <asp:Label ID="P_idLabel1" runat="server" Text='<%# Eval("P_id") %>' />
            <br />
            Doc_id:
            <asp:TextBox ID="Doc_idTextBox" runat="server" Text='<%# Bind("Doc_id") %>' />
            <br />
            Department:
            <asp:TextBox ID="DepartmentTextBox" runat="server" 
                Text='<%# Bind("Department") %>' />
            <br />
            FName:
            <asp:TextBox ID="FNameTextBox" runat="server" Text='<%# Bind("FName") %>' />
            <br />
            LName:
            <asp:TextBox ID="LNameTextBox" runat="server" Text='<%# Bind("LName") %>' />
            <br />
            DOB:
            <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
            <br />
            Sex:
            <asp:TextBox ID="SexTextBox" runat="server" Text='<%# Bind("Sex") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            Phone:
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            MSG:
            <asp:TextBox ID="MSGTextBox" runat="server" Text='<%# Bind("MSG") %>' />
            <br />
            Status:
            <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" 
                Text='<%# Bind("Description") %>' />
            <br />
            Date:
            <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
            <br />
            D_Phone:
            <asp:TextBox ID="D_PhoneTextBox" runat="server" Text='<%# Bind("D_Phone") %>' />
            <br />
            D_Name:
            <asp:TextBox ID="D_NameTextBox" runat="server" Text='<%# Bind("D_Name") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            P_id:
            <asp:TextBox ID="P_idTextBox" runat="server" Text='<%# Bind("P_id") %>' />
            <br />
            Doc_id:
            <asp:TextBox ID="Doc_idTextBox" runat="server" Text='<%# Bind("Doc_id") %>' />
            <br />
            Department:
            <asp:TextBox ID="DepartmentTextBox" runat="server" 
                Text='<%# Bind("Department") %>' />
            <br />
            FName:
            <asp:TextBox ID="FNameTextBox" runat="server" Text='<%# Bind("FName") %>' />
            <br />
            LName:
            <asp:TextBox ID="LNameTextBox" runat="server" Text='<%# Bind("LName") %>' />
            <br />
            DOB:
            <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
            <br />
            Sex:
            <asp:TextBox ID="SexTextBox" runat="server" Text='<%# Bind("Sex") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            Phone:
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            MSG:
            <asp:TextBox ID="MSGTextBox" runat="server" Text='<%# Bind("MSG") %>' />
            <br />
            Status:
            <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" 
                Text='<%# Bind("Description") %>' />
            <br />
            Date:
            <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
            <br />
            D_Phone:
            <asp:TextBox ID="D_PhoneTextBox" runat="server" Text='<%# Bind("D_Phone") %>' />
            <br />
            D_Name:
            <asp:TextBox ID="D_NameTextBox" runat="server" Text='<%# Bind("D_Name") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <br />
            <table border="2" cellpadding="0" cellspacing="0" class="style31">
                <tr>
                    <td>
                        Appointment Date:</td>
                    <td colspan="4">
                        <asp:Label ID="DateLabel" runat="server" Text='<%# Bind("Date") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style36" colspan="5">
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong>Patient ID:</strong></td>
                    <td>
                        <asp:Label ID="P_idLabel" runat="server" 
                            style="font-weight: 700; text-decoration: underline" 
                            Text='<%# Eval("P_id") %>' />
                    </td>
                    <td rowspan="3">
                    </td>
                    <td>
                        NAME:</td>
                    <td>
                        <asp:Label ID="FNameLabel" runat="server" Text='<%# Bind("FName") %>' />
                        &nbsp;<asp:Label ID="LNameLabel" runat="server" Text='<%# Bind("LName") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Date Of Birth:</td>
                    <td>
                        <asp:Label ID="DOBLabel" runat="server" Text='<%# Bind("DOB") %>' />
                    </td>
                    <td>
                        Category:</td>
                    <td>
                        <asp:Label ID="SexLabel" runat="server" Text='<%# Bind("Sex") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Mobile Number:</td>
                    <td>
                        <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' />
                    </td>
                    <td>
                        Email:</td>
                    <td>
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style36" colspan="5">
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong>Department:</strong></td>
                    <td>
                        <asp:Label ID="DepartmentLabel" runat="server" 
                            style="font-weight: 700; text-decoration: underline" 
                            Text='<%# Bind("Department") %>' />
                    </td>
                    <td rowspan="2">
                    </td>
                    <td>
                        <strong>Doctor ID:</strong></td>
                    <td>
                        <asp:Label ID="Doc_idLabel" runat="server" 
                            style="text-decoration: underline; font-weight: 700" 
                            Text='<%# Bind("Doc_id") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Doctor&#39;s Phone:</td>
                    <td>
                        <asp:Label ID="D_PhoneLabel" runat="server" Text='<%# Bind("D_Phone") %>' />
                    </td>
                    <td>
                        Doctor Name:</td>
                    <td>
                        <asp:Label ID="D_NameLabel" runat="server" Text='<%# Bind("D_Name") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style36" colspan="5">
                    </td>
                </tr>
                <tr>
                    <td>
                        Your Message:</td>
                    <td colspan="4">
                        <asp:Label ID="MSGLabel" runat="server" Text='<%# Bind("MSG") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong>Status:</strong></td>
                    <td colspan="4">
                        <asp:Label ID="StatusLabel" runat="server" style="font-weight: 700" 
                            Text='<%# Bind("Status") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Description:</td>
                    <td colspan="4">
                        <asp:Label ID="DescriptionLabel" runat="server" 
                            Text='<%# Bind("Description") %>' />
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:MyDB %>" 
        SelectCommand="SELECT * FROM [patients] WHERE ([P_id] = @P_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="P_id" QueryStringField="Pid" Type="Int64" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br class="style33" />
    <br class="style33" />
</asp:Content>

