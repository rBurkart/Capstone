<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="menu">
           <asp:Label ID="lblTitle" runat="server" Text="ABOUT"></asp:Label>
           <br /><br />
      </div>
    <div>
        <asp:Label ID="lblAbout" runat="server" Text="Welcome to our Jersey Shop Website. Here you can order Soccer Jerseys from the Final 8 teams of the world cup."></asp:Label>
        <br />
         If this is your first time visiting the site, please 
         <asp:LinkButton ID="lbtnSignup" runat="server" Text="Signup" onclick="lbtnSignup_Click" ></asp:LinkButton>.
         <br />
         If you are already a member, please
         <asp:LinkButton ID="lbtnLogin" runat="server" Text="Login" onclick="lbtnLogin_Click" ></asp:LinkButton>.
         <br />
    </div>
</asp:Content>

