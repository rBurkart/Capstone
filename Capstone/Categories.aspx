<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Categories.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="menu">
           <br />
           <asp:Label ID="lblTitle" runat="server" Text="TEAMS"></asp:Label>
      </div>

       <br />


    <asp:SqlDataSource ID="sdsTeams" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="spGetTeamsGrid" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        

    <asp:GridView ID="gvTeams" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SDSTeamsGrid">



        <Columns>
         
         
         <asp:HyperLinkField DataNavigateUrlFields="TeamID" 
            DataNavigateUrlFormatString="~/Category.aspx?id={0}" DataTextField="CountryName" 
            HeaderText="Teams" SortExpression="CountryName" />

            <asp:BoundField DataField="TeamID" HeaderText="TeamID" InsertVisible="False" ReadOnly="True" SortExpression="TeamID" />
            <asp:BoundField DataField="CountryName" HeaderText="CountryName" SortExpression="CountryName" />
            <asp:CheckBoxField DataField="TeamIsActive" HeaderText="TeamIsActive" SortExpression="TeamIsActive" />
        </Columns>

                  
    </asp:GridView>

 <asp:SqlDataSource ID="SDSTeamsGrid" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="spGetTeamsGrid" 
        SelectCommandType="StoredProcedure" ></asp:SqlDataSource>

<asp:LinkButton ID="lbtnAddTeam" runat="server" onclick="lbtnAddTeam_Click">Add New Team</asp:LinkButton>

</asp:Content>

