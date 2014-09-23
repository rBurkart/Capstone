<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CheckOut.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <br /><br />
<div class="menu">
           <asp:Image ID="Image1" runat="server" Height="147px" 
               ImageUrl="~/App_Themes/checkout.jpg" Width="366px" />
       </div>

       <br />
    <table style="width: 100%">
        <tr>
            <td style="text-align: right; width: 419px">

    <asp:Label ID="lblNameOnCard" runat="server" Text="Name on Card: " ForeColor="Black"></asp:Label>
            </td>
            <td style="width: 477px">
    <asp:TextBox ID="txtNameOnCard" runat="server" Width="251px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtNameOnCard" ErrorMessage="Required."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 419px">

    <asp:Label ID="lblCreditCard" runat="server" Text="Credit Card Number: " ForeColor="Black"></asp:Label>
            </td>
            <td style="width: 477px">
    <asp:TextBox ID="txtCreditCard" runat="server" Width="213px"></asp:TextBox>
    <asp:Label ID="lblCVC" runat="server" Text="CVC: " ForeColor="Black"></asp:Label>
    <asp:TextBox ID="txtCVC" runat="server" Width="50px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtCVC" ErrorMessage="Required"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtCreditCard" ErrorMessage="Required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 419px">

    <asp:Label ID="lblShippingAdd" runat="server" Text="Shipping Address: " ForeColor="Black"></asp:Label>
            </td>
            <td style="width: 477px">
    <asp:TextBox ID="txtShippingAdd" runat="server" Width="251px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtShippingAdd" ErrorMessage="Required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 419px">

    <asp:Label ID="lblBillingAdd" runat="server" Text="Billing Address: " ForeColor="Black"></asp:Label>
            </td>
            <td style="width: 477px">
    <asp:TextBox ID="txtBillingAdd" runat="server" Width="251px"></asp:TextBox>
    <asp:CheckBox ID="cbBillingAdd" runat="server" Text="Same as Shipping Address?" CausesValidation="false" AutoPostBack="true" 
                    ForeColor="Black" oncheckedchanged="cbBillingAdd_CheckedChanged" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtBillingAdd" ErrorMessage="Required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 419px">

    
    <asp:Label ID="lblShippingMethod" runat="server" Text="Shipping Method: " 
                    ForeColor="Black" ></asp:Label>
            </td>
            <td style="width: 477px">
        <asp:DropDownList ID="ddlShippingMethod" runat="server">
        <asp:ListItem Text=" Standard: $5.00" Value="1"></asp:ListItem>
        <asp:ListItem Text="Expedited: $15.00" Value="2"></asp:ListItem>
        </asp:DropDownList>

            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 419px">
                &nbsp;</td>
            <td style="width: 477px">
                <asp:Button ID="btnProceed" runat="server" onclick="btnProceed_Click" 
                    Text="Proceed" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnCancel" runat="server" CausesValidation="false" onclick="btnCancel_Click" 
                    Text="Cancel" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 419px">
                &nbsp;</td>
            <td style="width: 477px">
                <br />
                <asp:Label ID="lblProceed" runat="server" Font-Bold="True" ForeColor="Black" 
                    Text="Please wait... Processing..." style="font-size: x-large"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>

