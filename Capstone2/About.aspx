<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="menu">
           <asp:Label ID="lblTitle" runat="server" Text="ABOUT"></asp:Label>
           <br /><br />
      </div>
    <div style="text-align: center">
        <asp:Label ID="lblAbout" runat="server" 
            Text="Welcome to our Jersey Shop Website. Here you can order Soccer Jerseys from the Final 8 teams of the world cup." 
            style="font-family: 'Microsoft PhagsPa'; font-weight: 700"></asp:Label>
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" Height="150px" 
            ImageUrl="~/App_Themes/soccer_ball.jpg" Width="263px" />
        <br />
        <br />
         <span style="font-family: Arial, Helvetica, sans-serif">If this is your first time visiting the site, please</span> 
         <asp:LinkButton ID="lbtnSignup" runat="server" Text="Signup" 
            onclick="lbtnSignup_Click" 
            style="font-weight: 700; font-family: 'Segoe UI'; font-size: xx-large; color: #FF3300" ></asp:LinkButton>.
         <br />
         <br />
         <span style="font-family: Arial, Helvetica, sans-serif">If you are already a member, please</span>
         <asp:LinkButton ID="lbtnLogin" runat="server" Text="Login" 
            onclick="lbtnLogin_Click" 
            style="font-family: Raavi; font-size: xx-large; font-style: italic" ></asp:LinkButton>.
         <br />
    </div>
</asp:Content>

