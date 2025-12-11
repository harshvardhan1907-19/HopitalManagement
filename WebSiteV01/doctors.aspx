<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="doctors.aspx.cs" Inherits="Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!--<div style= "display:flex; flex-direction:row; flex-wrap:wrap; justify-content: space-between;">-->
    <!--<div class="container">-->
    
    <table>
        <tr>
            <td class="auto-style2">
                <!--Doctor 1-->
                <div class="myDr">
                    Dr. Gaurang Makavana<br />
                    <br />
                    <asp:Image ID="Image1" runat="server" Width="156px" ImageUrl="~/Staff/doc.jpg" Height="132px" />
                    <br />
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
                    Dr. Jitendra Baldaniya<br />
                    <br />
                    <asp:Image ID="Image2" runat="server" Width="156px" ImageUrl="~/Staff/Screenshot 2025-02-08 215918.png"
                        Height="132px" />
                    <br />
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
                    Dr. Dhiren Borisagar<br />
                    <br />
                    <asp:Image ID="Image3" runat="server" Width="156px" ImageUrl="~/Staff/Screenshot 2025-02-08 215918.png"
                        Height="132px" />
                    <br />
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
                    Dr. Vinayak Mehta<br />
                    <br />
                    <asp:Image ID="Image4" runat="server" Width="156px" ImageUrl="~/Staff/Screenshot 2025-02-08 215918.png"
                        Height="132px" Style="font-size: x-large" />
                    <br />
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
                    Dr. P. P. Savani<br />
                    <br />
                    <asp:Image ID="Image5" runat="server" Width="156px" ImageUrl="~/Staff/Screenshot 2025-02-08 215918.png"
                        Height="132px" />
                    <br />
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
                    Dr. Kishor Zalavadiya<br />
                    <br />
                    <asp:Image ID="Image6" runat="server" Width="156px" ImageUrl="~/Staff/Screenshot 2025-02-08 215918.png"
                        Height="132px" />
                    <br />
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
                    Dr. Kaushik Patel<br />
                    <br />
                    <asp:Image ID="Image7" runat="server" Width="156px" ImageUrl="~/Staff/Screenshot 2025-02-08 215918.png"
                        Height="132px" />
                    <br />
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
                    Dr. Vaishali Trivedi<br />
                    <br />
                    <asp:Image ID="Image8" runat="server" Width="156px" ImageUrl="~/Staff/Screenshot 2025-02-08 215918.png"
                        Height="132px" />
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="btn8" runat="server" Text="View Profile" OnClick="btn8_Click" class="btn" />
                </div>
            </td>
            <td>
                <!--Doctor 9-->
                <div class="myDr">
                    Dr. Shweta Tiwari<br />
                    <br />
                    <asp:Image ID="Image9" runat="server" Width="156px" ImageUrl="~/Staff/Screenshot 2025-02-08 215918.png"
                        Height="132px" />
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="btn9" runat="server" Text="View Profile" OnClick="btn9_Click" class="btn" />
                    <br />
                    <br />
                </div>
            </td>
        </tr>
    </table>
    
    <!--</div>-->
</asp:Content>

