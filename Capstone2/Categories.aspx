<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Categories.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="sdsTeams" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="spGetTeamsGrid" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

    <asp:GridView ID="gvTeams" runat="server" AutoGenerateColumns="False" DataKeyNames="TeamID" DataSourceID="sdsTeams">
        <Columns>
            <asp:BoundField DataField="TeamID" HeaderText="TeamID" InsertVisible="False" ReadOnly="True" SortExpression="TeamID" />
            <asp:BoundField DataField="CountryName" HeaderText="CountryName" SortExpression="CountryName" />
            <asp:CheckBoxField DataField="TeamIsActive" HeaderText="TeamIsActive" SortExpression="TeamIsActive" />
        </Columns>
    </asp:GridView>
</asp:Content>

