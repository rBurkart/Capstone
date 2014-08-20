<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblCheckout" runat="server" Text="Checkout"></asp:Label>
    <br />
    <asp:Label ID="lblCardType" runat="server" Text="Select Card Type:"></asp:Label>
    <asp:DropDownList ID="ddlCardType" runat="server">
        <asp:ListItem Text="Mastercard" Value="1" />
        <asp:ListItem Text="Visa" Value="2" />
        <asp:ListItem Text="American Express" Value="3" />
    </asp:DropDownList>
    <br />
    <asp:Label ID="lblNameOnCard" runat="server" Text="Name on Card:"></asp:Label>
    <asp:TextBox ID="txtNameOnCard" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvNameOnCard" runat="server" ErrorMessage="Please enter the name on your credit card" ControlToValidate="txtNameOnCard" ></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblCardNumber" runat="server" Text="Credit Card Number:"></asp:Label>
    <asp:TextBox ID="txtCardNumber" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvCardNumber" runat="server" ErrorMessage="Please enter your card number" ControlToValidate="txtCardNumber" ></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblCVC" runat="server" Text="CVC:"></asp:Label>
    <asp:TextBox ID="txtCVC" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvCVC" runat="server" ErrorMessage="Please enter the CVC number" ControlToValidate="txtCVC" ></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblShipping" runat="server" Text="Shipping Address:"></asp:Label>
    <asp:TextBox ID="txtShipping" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvShipping" runat="server" ErrorMessage="Please enter a shipping address" ControlToValidate="txtShipping" ></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblBilling" runat="server" Text="Billing Address:"></asp:Label>
    <asp:TextBox ID="txtBilling" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvBilling" runat="server" ErrorMessage="Please enter a billing address" ControlToValidate="txtBilling" ></asp:RequiredFieldValidator>
    <asp:CheckBox ID="cbBilling" runat="server" Text="Same as shipping Address?" />
    <br />
    <asp:Label ID="lblState" runat="server" Text="State:"></asp:Label>
    <asp:DropDownList ID="ddlState" runat="server">
        <asp:ListItem Text="RI" Value="RI"></asp:ListItem>
        <asp:ListItem Text="MA" Value="MA"></asp:ListItem>
        <asp:ListItem Text="RI" Value="CT"></asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="rfvState" runat="server" ErrorMessage="State is Required" ControlToValidate="ddlState"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblCity" runat="server" Text="City:"></asp:Label>
    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfv" runat="server" ErrorMessage="City is Required" ControlToValidate="txtCity" ></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblZip" runat="server" Text="Zip:"></asp:Label>
    <asp:TextBox ID="txtZip" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvZip" runat="server" ErrorMessage="Zip is Required" ControlToValidate="txtZip" ></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblPhone" runat="server" Text="Phone:"></asp:Label>
    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblShippingMethod" runat="server" Text="Shipping Method:"></asp:Label>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
        <asp:ListItem Text="Normal: $5.00" Value="1" />
        <asp:ListItem Text="Expidited: $15.00" Value="2" />
    </asp:RadioButtonList>
    <br />
    <asp:ListBox ID="lbPrice" runat="server"></asp:ListBox>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Button" />
</asp:Content>

