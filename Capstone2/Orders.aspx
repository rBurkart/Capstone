<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Orders.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="menu">
           <br />
           <asp:Label ID="lblTitle" runat="server" Text="ORDERS"></asp:Label>
      </div>

       <br />
    <asp:SqlDataSource ID="sdsOrders" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="spGetOrdersGrid" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

    

    <asp:GridView ID="gvOrders" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="sdsOrders">
        <Columns>


        <asp:HyperLinkField DataNavigateUrlFields="OrderID" 
            DataNavigateUrlFormatString="~/Order.aspx?id={0}" DataTextField="OrderDate" 
            HeaderText="Orders" SortExpression="OrderDate" />



            <asp:BoundField DataField="OrderID" HeaderText="OrderID" SortExpression="OrderID" 
                    InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="StatusID" HeaderText="StatusID" 
                    SortExpression="StatusID" />
            <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
            <asp:BoundField DataField="OrderAdd1" HeaderText="OrderAdd1" 
                    SortExpression="OrderAdd1" />
            <asp:BoundField DataField="OrderAdd2" HeaderText="OrderAdd2" 
                    SortExpression="OrderAdd2" />
                <asp:BoundField DataField="OrderCity" HeaderText="OrderCity" 
                    SortExpression="OrderCity" />
                <asp:BoundField DataField="StateID" HeaderText="StateID" 
                    SortExpression="StateID" />
                <asp:BoundField DataField="OrderZip" HeaderText="OrderZip" 
                    SortExpression="OrderZip" />
                <asp:BoundField DataField="OrderLastUpdate" HeaderText="OrderLastUpdate" 
                    SortExpression="OrderLastUpdate" />
        </Columns>
    </asp:GridView>

    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Add a new order</asp:LinkButton>

</asp:Content>

