<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br /><br />


<div class="menu">

    <asp:Image ID="ImageWelcome" runat="server" 
        ImageUrl="~/App_Themes/Welcome_PageBanner.jpg" />


        <br /><br /><br />
    <asp:LinkButton ID="LinkButtonWelcome" runat="server" 
        onclick="LinkButtonWelcome_Click" style="font-size: x-large">CLICK HERE TO CONTINUE SHOPPING</asp:LinkButton>


    </div>
</asp:Content>

