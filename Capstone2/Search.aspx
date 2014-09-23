<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
       
    <div> <asp:GridView runat="server" ID="gvJersey" AutoGenerateColumns="false" >
        <Columns>
            <asp:BoundField DataField="ProductName" HeaderText="Product Name"  />
            <asp:BoundField DataField="ProductDesc" HeaderText="Product Description" />
            <asp:BoundField DataField="ProductSKU" HeaderText="Product SKU" />
            <asp:BoundField DataField="ProductCost" HeaderText="Product Cost" />
            <asp:HyperLinkField Text="Select" HeaderText="Select" DataNavigateUrlFormatString="Jerseys.aspx?ProductID={0}" DataNavigateUrlFields="ProductID" />
            
        </Columns>
    </asp:GridView>
        </div>  
</asp:Content>

