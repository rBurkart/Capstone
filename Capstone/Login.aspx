<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblLogin" runat="server" Text="Login"></asp:Label>

    <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfdEmail" runat="server" ErrorMessage="Email is Required" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>

    <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfdPassword" runat="server" ErrorMessage="Password is Required" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>

    <asp:Button ID="btnLogin" runat="server" Text="Login" />

    <asp:Label ID="lblSignup" runat="server" Text="Not a member?"></asp:Label>
    <asp:Button ID="btnSignup" runat="server" Text="Signup" />
</asp:Content>

