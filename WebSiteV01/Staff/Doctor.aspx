<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Doctor.aspx.cs" Inherits="Staff_Doctor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .img
        {
            border-radius: 1rem;
        }
        .img:hover
        {
            transform: scale(1.05); /* Slight Zoom Effect on Hover */
        }
        td
        {
            margin: 4px; /* Yeh margin kaam nahi karega */
            padding: 40px;
        }
        .head
        {
            background-color:Aqua;
            color:Blue;
            text-align:center;
            font-size:50px;
            font-weight:bold;
            font-style:inherit;
            height:150px;
            margin-top:10px;
        }
        .head div
        {
            padding-top:40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="head">
    <img src="../Demo%20photo/bg3.png" / align="left" class="logo">
<div>This are our some experienced Doctor's staff</div></div>
  
    <table style="margin-left: 70px" align="center">
        <tr>
            <td class="auto-style2">
                <!--Doctor 1-->
                <div class="myDr">
                    <h3>
                        Dr. Gaurang Makavana</h3>
                    <br />
                    <asp:Image ID="Image1" runat="server" Width="156px" ImageUrl="~/Staff/doc.jpg" Height="132px"
                        BorderWidth="2px" CssClass="img" />
                    <br />
                    <br />
                    <asp:Button ID="btn1" runat="server" OnClick="btn1_Click" Text="View Profile" class="btn" />
                    <br />
                    <br />
                </div>
            </td>
            <td class="auto-style2">
                <!--Doctor 2-->
                <div class="myDr">
                    <h3>
                        Dr. Jitendra Baldaniya</h3>
                    <br />
                    <asp:Image ID="Image2" runat="server" Width="156px" ImageUrl="~/Staff/dr.png"
                        Height="132px" BorderWidth="1px" CssClass="img" />
                    <br />
                    <br />
                    <asp:Button ID="btn2" runat="server" OnClick="btn2_Click" Text="View Profile" class="btn" />
                    <br />
                    <br />
                </div>
            </td>
            <td class="auto-style2">
                <!--Doctor 3-->
                <div class="myDr">
                    <h3>
                        Dr. Dhiren Borisagar</h3>
                    <br />
                    <asp:Image ID="Image3" runat="server" Width="156px" ImageUrl="~/Staff/dr.png"
                        Height="132px" BorderWidth="2px" CssClass="img" />
                    <br />
                    <br />
                    <asp:Button ID="btn3" runat="server" Text="View Profile" OnClick="btn3_Click" class="btn" />
                    <br />
                    <br />
                </div>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <!--Doctor 4-->
                <div class="myDr">
                    <h3>
                        Dr. Vinayak Mehta</h3>
                    <br />
                    <asp:Image ID="Image4" runat="server" Width="156px" ImageUrl="~/Staff/dr.png"
                        Height="132px" Style="font-size: x-large" BorderWidth="2px" 
                        CssClass="img" />
                    <br />
                    <br />
                    <asp:Button ID="btn4" runat="server" Text="View Profile" OnClick="btn4_Click" class="btn" />
                    <br />
                    <br />
                </div>
            </td>
            <td class="auto-style3">
                <!--Doctor 5-->
                <div class="myDr">
                    <h3>
                        Dr. P. P. Savani</h3>
                    <br />
                    <asp:Image ID="Image5" runat="server" Width="156px" ImageUrl="~/Staff/dr.png"
                        Height="132px" BorderWidth="2px" CssClass="img" />
                    <br />
                    <br />
                    <asp:Button ID="btn5" runat="server" Text="View Profile" OnClick="btn5_Click" class="btn" />
                    <br />
                    <br />
                </div>
            </td>
            <td class="auto-style3">
                <!--Doctor 6-->
                <div class="myDr">
                    <h3>
                        Dr. Kishor Zalavadiya</h3>
                    <br />
                    <asp:Image ID="Image6" runat="server" Width="156px" ImageUrl="~/Staff/dr.png"
                        Height="132px" BorderWidth="2px" CssClass="img" />
                    <br />
                    <br />
                    <asp:Button ID="btn6" runat="server" Text="View Profile" OnClick="btn6_Click" class="btn" />
                    <br />
                    <br />
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <!--Doctor 7-->
                <div class="myDr">
                    <h3>
                        Kaushik Patel</h3>
                    <br />
                    <asp:Image ID="Image7" runat="server" Width="156px" ImageUrl="~/Demo photo/dr1.png"
                        Height="132px" BorderWidth="2px" CssClass="img" />
                    <br />
                    <br />
                    <asp:Button ID="btn7" runat="server" Text="View Profile" OnClick="btn7_Click" class="btn" />
                    <br />
                    <br />
                </div>
            </td>
            <td>
                <!--Doctor 8-->
                <div class="myDr">
                    <h3>
                        Dr. Vaishali Trivedi</h3>
                    <br />
                    <asp:Image ID="Image8" runat="server" Width="156px" ImageUrl="~/Staff/nurs .png"
                        Height="132px" BorderWidth="2px" CssClass="img" />
                    <br />
                    <br />
                    <asp:Button ID="btn8" runat="server" Text="View Profile" OnClick="btn8_Click" class="btn" />
                    <br />
                    <br />
                </div>
            </td>
            <td>
                <!--Doctor 9-->
                <div class="myDr">
                    <h3>
                        Dr. Shweta Tiwari</h3>
                    <br />
                    <asp:Image ID="Image9" runat="server" Width="156px" ImageUrl="~/Staff/nurs .png"
                        Height="132px" BorderWidth="2px" CssClass="img" />
                    <br />
                    <br />
                    <asp:Button ID="btn9" runat="server" Text="View Profile" OnClick="btn9_Click" class="btn" />
                    <br />
                    <br />
                </div>
            </td>
        </tr>
    </table>
    


</asp:Content>

