<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CheckOut.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="margin:auto border:1px solid blue; width:25%; padding: 50px">
    <asp:Label ID="lblNameOnCard" runat="server" Text="Name on Card: "></asp:Label>
    <asp:TextBox ID="txtNameOnCard" runat="server"></asp:TextBox>
    <br />

    <asp:Label ID="lblCreditCard" runat="server" Text="Credit Card Number: "></asp:Label>
    <asp:TextBox ID="txtCreditCard" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblCVC" runat="server" Text="CVC: "></asp:Label>
    <asp:TextBox ID="txtCVC" runat="server" Width="50px"></asp:TextBox>
    <br />

    <asp:Label ID="lblShippingAdd" runat="server" Text="Shipping Address: "></asp:Label>
    <asp:TextBox ID="txtShippingAdd" runat="server"></asp:TextBox>
    <br />

    <asp:Label ID="lblBillingAdd" runat="server" Text="Billing Address: "></asp:Label>
    <asp:TextBox ID="txtBillingAdd" runat="server"></asp:TextBox>
    <asp:CheckBox ID="cbBillingAdd" runat="server" Text="Same as Shipping Address? " />
    <br />

    
    <asp:Label ID="lblShippingMethod" runat="server" Text="Shipping Method: " ></asp:Label>
        <asp:DropDownList ID="ddlShippingMethod" runat="server">
        <asp:ListItem Text=" Standard: $5.00" Value="1"></asp:ListItem>
        <asp:ListItem Text="Expedited: $15.00" Value="2"></asp:ListItem>
        </asp:DropDownList>
</table>
</asp:Content>

