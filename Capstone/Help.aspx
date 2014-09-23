<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Help.aspx.cs" Inherits="Help" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="menu">
    <br /><br />
    
    <asp:Image ID="Image1" runat="server" Height="188px" 
        ImageUrl="~/App_Themes/help.jpg" style="text-align: center" Width="328px" />
    
    <br /><br />
    <br /><br />
    <asp:LinkButton ID="LinkHelp1" runat="server" onclick="LinkHelp1_Click">How to use our Site...</asp:LinkButton>
    <br /><br />
    <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">How to Login</asp:LinkButton>
    <br /><br />
    <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click">How to do Online Shopping</asp:LinkButton>

    </div>
</asp:Content>

