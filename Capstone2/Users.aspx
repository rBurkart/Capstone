<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SDSViewUsers" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="spGetUsersGrid" 
        SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="UserID" DataSourceID="SDSViewUsers">
        <Columns>

        <asp:HyperLinkField DataNavigateUrlFields="UserID" 
            DataNavigateUrlFormatString="~/User.aspx?id={0}" DataTextField="Full_Name" 
            HeaderText="User" SortExpression="Full_Name" />


            <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
            <asp:BoundField DataField="Full_Name" HeaderText="Full_Name" ReadOnly="True" SortExpression="Full_Name" />
            <asp:BoundField DataField="UserCity" HeaderText="UserCity" SortExpression="UserCity" />
            <asp:BoundField DataField="StateName" HeaderText="StateName" SortExpression="StateName" />
            <asp:BoundField DataField="UserEmail" HeaderText="UserEmail" SortExpression="UserEmail" />
            <asp:BoundField DataField="UserRole" HeaderText="UserRole" SortExpression="UserRole" />
            <asp:CheckBoxField DataField="UserIsActive" HeaderText="UserIsActive" SortExpression="UserIsActive" />
        </Columns>
    </asp:GridView>
</asp:Content>

