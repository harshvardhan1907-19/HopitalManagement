<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Copy of AddNew.aspx.cs" Inherits="Admin_Manage_Patients_AddNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="~/Btncss/BtnStyleSheet.css" rel="stylesheet" type="text/css" />
<style type="text/css">
        .style1
        {
            width: 100%;
        
    }
        .style7
        {
            height: 27px;
            width: 291px;
        background-color: #FFFFFF;
    }
        .style27
    {
    }
    .style28
    {
        width: 291px;
    }
    .style29
    {
        width: 191px;
    }
    .style30
    {
        height: 27px;
        width: 281px;
    }
        .style31
        {
            width: 449px;
        }
    .style32
    {
        font-size: x-large;
    }
    .style33
    {
        color: #000000;
    }
    </style>
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td class="style27">
                <asp:Label ID="LBLPid" runat="server"></asp:Label>
            </td>
            <td class="style27">
                <asp:Label ID="Label32" runat="server" Font-Bold="True" 
                    Text="––Please Remember It––"></asp:Label>
            </td>
            <td rowspan="10">
                <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="After Booking"></asp:Label>
                <br />
                <br />
                <br />
                <asp:Label ID="Label25" runat="server" 
                    
                    Text="Hi fill in the details and submit the form. We will &lt;b&gt;contact&lt;/b&gt; you via &lt;b&gt;phone&lt;/b&gt; or &lt;b&gt;email&lt;/b&gt; and fix a time schedule."></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Label ID="Label26" runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="#999999" 
                    Text="These are the thing you need to carry with you when you come in for the appointment wit the doctor."></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <ul>
                    <li>
                        <asp:Label ID="Label27" runat="server" Text="Previous Medical History"></asp:Label>
                    </li>
                    <li>
                        <asp:Label ID="Label28" runat="server" Text="Enlisted Previous Numbers"></asp:Label>
                    </li>
                    <li>
                        <asp:Label ID="Label29" runat="server" Text="Discussion with Parents"></asp:Label>
                    </li>
                    <li>
                        <asp:Label ID="Label30" runat="server" Text="Make sure you are feeling good"></asp:Label>
                    </li>
                    <li>
                        <asp:Label ID="Label31" runat="server" Text="Have someone eith you"></asp:Label>
                    </li>
                </ul>
                <br />
                <br />
                 <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="Have a healthy life!"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style27">
                Select Department<br />
                <asp:DropDownList ID="DDLDep" runat="server" Height="37px" Width="162px" 
                    AutoPostBack="True" DataSourceID="Db" DataTextField="Dep" DataValueField="D_id">
                    <asp:ListItem>Cardiology</asp:ListItem>
                    <asp:ListItem>Ophthalmology</asp:ListItem>
                    <asp:ListItem>Urology</asp:ListItem>
                    <asp:ListItem>Orthodontics</asp:ListItem>
                    <asp:ListItem>Dentistry</asp:ListItem>
                    <asp:ListItem>Psychiatry</asp:ListItem>
                    <asp:ListItem>Orthopedics</asp:ListItem>
                    <asp:ListItem>Gynecology</asp:ListItem>
                    <asp:ListItem>Nephrology</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="Db" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:MyDB %>" 
                    SelectCommand="SELECT * FROM [Department]"></asp:SqlDataSource>
            </td>
            <td class="style28">
                Select Department<br />
                <asp:DropDownList ID="DDLDid" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="D_Name" DataValueField="Id" 
                    Width="174px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:MyDB %>" 
                    SelectCommand="SELECT [Id], [D_Name] FROM [Doctor] WHERE ([D_id] = @D_id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DDLDep" Name="D_id" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style28">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                Your First Name<asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                    runat="server" ControlToValidate="TXTFName" ErrorMessage="(Required)" 
                    ForeColor="#999999" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="TXTFName" runat="server" Width="220px"></asp:TextBox>
            </td>
            <td class="style28">
                Your Last Name<asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                    runat="server" ControlToValidate="TXTLName" ErrorMessage="(Required)" 
                    ForeColor="#999999" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="TXTLName" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style28">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                Date Of Birth<asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                    runat="server" ControlToValidate="txtDate" ErrorMessage="(Required)" 
                    ForeColor="#999999" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <br />
               <asp:TextBox ID="txtDate" placeholder="dd-mm-yyyy" runat="server" TextMode="SingleLine" />


            </td>
            <td class="style28">
                Sex<asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                    runat="server" ControlToValidate="RBTNSex" ErrorMessage="(Required)" 
                    ForeColor="#999999" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <br />
                <asp:RadioButtonList ID="RBTNSex" runat="server" CellPadding="0" 
                    CellSpacing="0" RepeatDirection="Horizontal" RepeatLayout="Flow">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Child</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style28">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style30">
                Your Email<asp:RequiredFieldValidator ID="RequiredFieldValidator6" 
                    runat="server" ControlToValidate="TXTEmail" ErrorMessage="(Required)" 
                    ForeColor="#999999" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="TXTEmail" runat="server" Width="219px"></asp:TextBox>
            </td>
            <td class="style4" style="background-color: #FFFFFF">
                <span class="style33">Phone</span><asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
                    runat="server" ControlToValidate="TXTPhone" ErrorMessage="(Required)" 
                    ForeColor="#999999" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <span class="style29">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TXTPhone" ErrorMessage="&lt;b&gt;!&lt;/b&gt;" 
                    ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[6-9]\d{9}$"></asp:RegularExpressionValidator>
                </span>
                <br />
                <asp:TextBox ID="TXTPhone" runat="server" Height="29px" 
                    Width="188px" MaxLength="10" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style30">
                &nbsp;</td>
            <td class="style4" style="background-color: #FFFFFF">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6" colspan="2">
                <span class="style32">Your Massage
<asp:RequiredFieldValidator ID="RequiredFieldValidator7" 
                    runat="server" ControlToValidate="TXTMsg" 
        ErrorMessage="(Required)" ForeColor="#999999" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </span>
                <br />
    <asp:TextBox ID="TXTMsg" runat="server" Height="122px" TextMode="MultiLine" 
        Width="661px"></asp:TextBox>
            </td>
        </tr>
        </table>
        <table cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td class="style31">
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                </td>
                <td class="style29">
    <asp:Button ID="Button1" runat="server" Height="59px" Text="SUBMIT" 
        Width="149px" style="text-align: center" align="rigth" onclick="Button1_Click" 
                         Font-Bold="True" ForeColor="Black" CssClass="BTNSubmit"/>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
</table>
        <br />
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
    <br />
    <br />
    <p style="text-decoration: underline; font-size: xx-large; font-family: Calibri">
    <strong>Add New</strong></p>
</asp:Content>


