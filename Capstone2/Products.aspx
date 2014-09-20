<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="menu">
           <br />
           <asp:Label ID="lblTitle" runat="server" Text="PRODUCTS"></asp:Label>
      </div>

       <br />

       <div class="content">
           <br />
    <asp:GridView ID="GridViewProducts" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ProductID" DataSourceID="SDSProducts" Width="991px">
        <Columns>

        <asp:HyperLinkField DataNavigateUrlFields="ProductID" 
            DataNavigateUrlFormatString="~/Product.aspx?id={0}" DataTextField="ProductName" 
            HeaderText="Products" SortExpression="ProductCost" />

            <asp:BoundField DataField="ProductID" HeaderText="ProductID" 
                InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="CountryName" HeaderText="CountryName" 
                SortExpression="CountryName" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                SortExpression="ProductName" />
            <asp:BoundField DataField="ProductSKU" HeaderText="ProductSKU" 
                SortExpression="ProductSKU" />
            <asp:BoundField DataField="ProductCost" HeaderText="ProductCost" 
                SortExpression="ProductCost" />
            <asp:CheckBoxField DataField="ProductIsActive" HeaderText="ProductIsActive" 
                SortExpression="ProductIsActive" />
        </Columns>
    </asp:GridView>
    </div>


</asp:Content>

