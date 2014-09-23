<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="Cart" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
<div class="menu">


       <asp:Image ID="Image1" runat="server" ImageUrl="~/App_Themes/shopping-cart.png" 
    Width="181px" Height="162px" />


           <asp:Label ID="lblTitle" runat="server" Text="SHOPPING CART" 
               style="font-size: xx-large"></asp:Label>
       &nbsp;</div>

       <br />


    <%--<div>--%>
        <div>
        
        <table style="width: 500px" cellspacing="0" 
                cellpadding="0" border="0">
            <tr>
                <td style="width: 286px; height: 153px">
                    <asp:ListBox ID="lstCart" runat="server"
                        Width="267px" Height="135px">
                    </asp:ListBox>
                </td>
                <td style="height: 153px">
                    <asp:Button ID="btnRemove" runat="server" 
                        Width="100px" Text="Remove Item" onclick="btnRemove_Click" /><br /><br />
                    <asp:Button ID="btnEmpty" runat="server" 
                        Width="100px" Text="Empty Cart" onclick="btnEmpty_Click1" />
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="btnContinue" runat="server"
            PostBackUrl="~/Jerseys.aspx" Text="Continue Shopping" />&nbsp;
        <asp:Button ID="btnCheckOut" runat="server" Text="Check Out" 
                onclick="btnCheckOut_Click1" /><br />
        <br />
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
    </div>
    

</asp:Content>

