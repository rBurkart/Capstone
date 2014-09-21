﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Orders.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="sdsOrders" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="spGetOrdersGrid" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

    <div class="menu">
           <asp:Label ID="lblTitle" runat="server" Text="ORDERS"></asp:Label>
       </div>

       <br />

    <asp:GridView ID="gvOrders" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="sdsOrders">
        <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="OrderID" 
            DataNavigateUrlFormatString="~/Order.aspx?id={0}" DataTextField="OrderID" 
            HeaderText="Order Number" SortExpression="OrderID" />
            <asp:BoundField DataField="UserEmail" HeaderText="UserEmail" SortExpression="UserEmail" />
            <asp:BoundField DataField="StatusName" HeaderText="StatusName" SortExpression="StatusName" />
            <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
            <asp:BoundField DataField="OrderZip" HeaderText="OrderZip" SortExpression="OrderZip" />
            <asp:BoundField DataField="OrderLastUpdate" HeaderText="OrderLastUpdate" SortExpression="OrderLastUpdate" />
        </Columns>
    </asp:GridView>

</asp:Content>

