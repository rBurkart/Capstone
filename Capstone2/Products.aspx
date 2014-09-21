<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:SqlDataSource ID="sdsProducts" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="spGetProductGrid" SelectCommandType="StoredProcedure"></asp:SqlDataSource>


<div class="menu">
            <br />
           <asp:Label ID="lblTitle" runat="server" Text="PRODUCTS"></asp:Label>
      </div>

       <br />

       <div class="content">
    <asp:GridView ID="gvProducts" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ProductID" DataSourceID="sdsProducts">
        <Columns>

        <asp:HyperLinkField DataNavigateUrlFields="ProductID" 
            DataNavigateUrlFormatString="~/Product.aspx?id={0}" DataTextField="ProductName" 
            HeaderText="Products" SortExpression="ProductCost" />

            <asp:BoundField DataField="ProductID" HeaderText="ProductID" 
                InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="TeamID" HeaderText="TeamID" 
                SortExpression="TeamID" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                SortExpression="ProductName" />
                <asp:BoundField DataField="ProductDesc" HeaderText="ProductDesc" 
                SortExpression="ProductDesc" />
            <asp:BoundField DataField="ProductSKU" HeaderText="ProductSKU" 
                SortExpression="ProductSKU" />
            <asp:BoundField DataField="ProductCost" HeaderText="ProductCost" 
                SortExpression="ProductCost" />
            <asp:CheckBoxField DataField="ProductIsActive" HeaderText="ProductIsActive" 
                SortExpression="ProductIsActive" />
        </Columns>
    </asp:GridView>
    </div>

    <asp:LinkButton ID="lbtnAddProduct" runat="server" onclick="lbtnAddUser_Click">Add new Product</asp:LinkButton>

</asp:Content>

