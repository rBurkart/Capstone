<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Button ID="btnHome" runat="server" Text="Home" PostBackUrl="~/Home.aspx" />
    <asp:Button ID="btnProduct" runat="server" Text="Jerseys" PostBackUrl="~/Products.aspx" />
    <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
    <br />
    <br />

    <asp:GridView runat="server" ID="gvJersey" AutoGenerateColumns="false" >
        <Columns>
            <asp:BoundField DataField="ProductName" HeaderText="Product Name"  />
            <asp:BoundField DataField="ProductDesc" HeaderText="Product Description" />
            <asp:BoundField DataField="ProductSKU" HeaderText="Product SKU" />
            <asp:BoundField DataField="ProductCost" HeaderText="Product Cost" />
            <asp:HyperLinkField Text="Select" HeaderText="Select" DataNavigateUrlFormatString="Product.aspx?ProductID={0}" DataNavigateUrlFields="ProductID" />
            
        </Columns>
    </asp:GridView>  
</asp:Content>


