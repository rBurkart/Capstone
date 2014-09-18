<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Categories.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="spGetCategoryGrid" SelectCommandType="StoredProcedure"></asp:SqlDataSource>--%>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CategoryID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" InsertVisible="False" ReadOnly="True" SortExpression="CategoryID" />
            <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
            <asp:BoundField DataField="CategoryDesc" HeaderText="CategoryDesc" SortExpression="CategoryDesc" />
            <asp:CheckBoxField DataField="CategoryIsActive" HeaderText="CategoryIsActive" SortExpression="CategoryIsActive" />
        </Columns>
    </asp:GridView>
</asp:Content>

