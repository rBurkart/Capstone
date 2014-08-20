<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblSignup" runat="server" Text="Signup"></asp:Label>

    <asp:Label ID="lblName" runat="server" Text="Enter your Name:"></asp:Label>
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>

    <asp:Label ID="lblEmail" runat="server" Text="Enter your Email:"></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>

    <asp:Label ID="lblEmailConfirm" runat="server" Text="Confirm Email:"></asp:Label>
    <asp:TextBox ID="txtEmailConfirm" runat="server"></asp:TextBox>

    <asp:Label ID="lblPassword" runat="server" Text="Enter a Password"></asp:Label>
    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>

    <asp:Label ID="lblPasswordConfirm" runat="server" Text="Confirm Password"></asp:Label>
    <asp:TextBox ID="txtPasswordConfirm" runat="server"></asp:TextBox>

    <asp:Button ID="btnCreate" runat="server" Text="Create Account" />

    <asp:Label ID="lblLogin" runat="server" Text="Already a member?"></asp:Label>
    <asp:Button ID="btnLogin" runat="server" Text="Login" />
</asp:Content>

