<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--http://code.tutsplus.com/tutorials/build-a-shopping-cart-in-aspnet--net-1663--%>
    <h1>Shopping Cart</h1>
    <a href="Products.aspx">Back to Products</a>
    <br /> <br />
    <asp:GridView runat="server" ID="gvShoppingCart" AutoGenerateColumns="false" EmptyDataText="There is nothig in your shopping cart">
        <Columns>


            <asp:BoundField DataField="Country" HeaderText="Country" />
            <asp:BoundField DataField="Home/Away" HeaderText="Home/Away" />
 
            <asp:BoundField DataField="Description" HeaderText="Description" />
            <asp:TemplateField HeaderText="Quantity">
                <ItemTemplate>
                    <asp:TextBox runat="server" ID="txtQuantity" Columns="5"></asp:TextBox><br />
                    <asp:LinkButton runat="server" ID="btnRemove" Text="Remove" CommandName="Remove"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Price" HeaderText="Price" HeaderStyle-HorizontalAlign="Right" DataFormatString="{0:C}" />
        </Columns>
    </asp:GridView>

    <br />
    <asp:Button runat="server" ID="btnUpdateCart" Text="Update Cart"/> 



</asp:Content>

