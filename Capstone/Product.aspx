<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div>
    <div style="padding-bottom:10px">   <asp:Image ID="ArgentineOrder" ImageUrl="~/images/Argentina_Home.jpg" runat="server" /> </div>
    <br />
    <a>
    <asp:TextBox ID="txtDescription" runat="server" Height="70px" TextMode="MultiLine"  
        Width="296px" MaxLength="255">Description:</asp:TextBox></a>
    <br />
    <asp:Label ID="lblProduct" runat="server" Text="Argentina Jersey" RepeatDirection="Horizontal" ></asp:Label>
    <br />
    <asp:RadioButtonList ID="rblHomeAway" runat="server" RepeatDirection="Horizontal">
        <asp:ListItem Text="Home" Value="1" />
        <asp:ListItem Text="Away" Value="2" />
    </asp:RadioButtonList>
    <br />    
    <asp:DropDownList ID="ddlPlayer" runat="server">
        <asp:ListItem Text="Player1" Value="1" />
        <asp:ListItem Text="Player2" Value="2" />
    </asp:DropDownList>
    <br />
    <asp:RadioButtonList ID="rblSize" runat="server" Width="61px" RepeatDirection="Horizontal">
        <asp:ListItem Text="S" Value="1" /> <asp:ListItem Text="M" Value="2" />
        <asp:ListItem Text="L" Value="3" />
        <asp:ListItem Text="XL" Value="4" />
    </asp:RadioButtonList>
    <br />
    <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal">
        <asp:ListItem Text="Male" Value="1" />
        <asp:ListItem Text="Female" Value="2" />
    </asp:RadioButtonList>
    <br />
    <asp:DropDownList ID="ddlQuantity" runat="server">
        <asp:ListItem Text="1" Value="1" />
        <asp:ListItem Text="2" Value="2" />
        <asp:ListItem Text="3" Value="3" />
        <asp:ListItem Text="4" Value="4" />
        <asp:ListItem Text="5" Value="5" />
    </asp:DropDownList>

    <asp:Button ID="btnAdd" runat="server" Text="Add to Cart" />

</div>

</asp:Content>
