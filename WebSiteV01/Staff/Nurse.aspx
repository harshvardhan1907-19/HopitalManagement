<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Nurse.aspx.cs" Inherits="Staff_Nurse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <title></title>
    <style type="text/css">
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="head">
    <img src="../Demo%20photo/bg3.png" / align="left" class="logo">

<div>This are our some experienced nursing staff</div>

</div>
   
    <div class="conta">
        
        <!--Nusrse 1-->
        <div class="nurse">
            <asp:Label ID="Label1" runat="server" Text="Priya Kumar" CssClass="lbl"></asp:Label>
            
            <br />
            <asp:Image ID="Image1" runat="server"  CssClass="nurse-image" 
                ImageUrl="~/Staff/nurse avatar.jpeg"/>
            <br />
            <br />  
            <asp:Button ID="n1" runat="server" Text="View Profile" CssClass="Button" 
                onclick="n1_Click" />
        </div>

        <!--Nusrse 2-->
        <div class="nurse">
            <asp:Label ID="Label2" runat="server" Text="Kiran More" CssClass="lbl"></asp:Label>
            
            <br />
            <asp:Image ID="Image2" runat="server"  CssClass="nurse-image" 
                ImageUrl="~/Demo photo/n1.png" />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="View Profile" CssClass="Button" 
                onclick="Button1_Click" />
        </div>

        <!--Nusrse 3-->
        <div class="nurse">
            <asp:Label ID="Label3" runat="server" Text="Priyanshi Desai" CssClass="lbl"></asp:Label>
            
            <br />
            <asp:Image ID="Image3" runat="server"  CssClass="nurse-image" 
                ImageUrl="~/Demo photo/n2.png"/>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="View Profile" CssClass="Button" 
                onclick="Button2_Click" />
        </div>

        <!--Nusrse 4-->
        <div class="nurse">
            <asp:Label ID="Label4" runat="server" Text="Jaya Gupta" CssClass="lbl"></asp:Label>
            
            <br />
            <asp:Image ID="Image4" runat="server"  CssClass="nurse-image" 
                ImageUrl="~/Demo photo/n3.png"/>
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" Text="View Profile" CssClass="Button" 
                onclick="Button3_Click" />
        </div>

        <!--Nusrse 5-->
        <div class="nurse">
            <asp:Label ID="Label5" runat="server" Text="Krupali Saraiya" CssClass="lbl"></asp:Label>
            
            <br />
            <asp:Image ID="Image5" runat="server"  CssClass="nurse-image" 
                ImageUrl="~/Demo photo/n4.png"/>
            <br />
            <br />
            <asp:Button ID="Button4" runat="server" Text="View Profile" CssClass="Button" 
                onclick="Button4_Click" />
        </div>

        <!--Nusrse 6-->
        <div class="nurse">
            <asp:Label ID="Label6" runat="server" Text="Durva Vora" CssClass="lbl"></asp:Label>
            
            <br />
            <asp:Image ID="Image6" runat="server"  CssClass="nurse-image" 
                ImageUrl="~/Demo photo/Screenshot 2025-02-26 113153.png"/>
            <br />
            <br />
            <asp:Button ID="Button5" runat="server" Text="View Profile" CssClass="Button" 
                onclick="Button5_Click" />
        </div>

        <!--Nusrse 7-->
        <div class="nurse">
            <asp:Label ID="Label7" runat="server" Text="Surabhi Borisa" CssClass="lbl"></asp:Label>
            
            <br />
            <asp:Image ID="Image7" runat="server"  CssClass="nurse-image" 
                ImageUrl="~/Demo photo/Screenshot 2025-02-26 113242.png"/>
            <br />
            <br />
            <asp:Button ID="Button6" runat="server" Text="View Profile" CssClass="Button" 
                onclick="Button6_Click" />
        </div>

        <!--Nusrse 8-->
        <div class="nurse">
            <asp:Label ID="Label8" runat="server" Text="Dipali Joshi" CssClass="lbl"></asp:Label>
            
            <br />
            <asp:Image ID="Image8" runat="server"  CssClass="nurse-image" 
                ImageUrl="~/Demo photo/n1.png"/>
            <br />
            <br />
            <asp:Button ID="Button7" runat="server" Text="View Profile" CssClass="Button" 
                onclick="Button7_Click" />
        </div>

        <!--Nusrse 9-->
        <div class="nurse">
            <asp:Label ID="Label9" runat="server" Text="Priya Kumar" CssClass="lbl"></asp:Label>
            
            <br />
            <asp:Image ID="Image9" runat="server"  CssClass="nurse-image" 
                ImageUrl="~/Demo photo/n2.png" />
            <br />
            <br />
            <asp:Button ID="Button8" runat="server" Text="View Profile" CssClass="Button" 
                onclick="Button8_Click" />
        </div>
    
    </div>
</asp:Content>

