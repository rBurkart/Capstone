<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="text-align:center">
<div style="padding-bottom:10px">   <asp:Image ID="ArgentineOrder" ImageUrl="~/images/Argentina_Home.jpg" runat="server" />
</div>
    <a><asp:TextBox ID="TextBox1" runat="server" Height="70px" TextMode="MultiLine"  
        Width="296px">Description:</asp:TextBox></a>
</div>




</asp:Content>

