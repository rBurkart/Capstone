<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="text-align:center">
        <asp:Label ID="Label1" CssClass="position-center" runat="server" Text="SELECT A TEAM"></asp:Label>
    </h1>

    <div style="text-align:center">
        
        
        <asp:ImageButton ID="btnImageArgentine" runat="server"
        ImageUrl="~/images/Argentina_Home.jpg"  Height="198px" Width="228px" 
            onclick="btnImageArgentine_Click" />
        

        <asp:ImageButton ID="imgBelgium" runat="server" 
        ImageUrl="~/images/Belgium_Home.jpg" Height="198px" Width="228px" />
        <p style="text-align:center">ARGENTINE</p>

        <asp:ImageButton ID="imgBrazil" runat="server" 
        ImageUrl="~/images/Brazil_Home.jpg" Height="198px" Width="228px" />
        <p style="text-align:center">ARGENTINE</p>

        <asp:ImageButton ID="imgColombia" runat="server" 
        ImageUrl="~/images/Colombia_Home.jpg" Height="198px" Width="228px" />
        <p style="text-align:center">ARGENTINE</p>

        <br />
        <br />
        <br />

        <asp:ImageButton ID="ImageButton9" runat="server" 
        ImageUrl="~/images/Costa_Rica_Home.jpg" Height="198px" Width="228px" />


        <asp:ImageButton ID="ImageButton10" runat="server" 
        ImageUrl="~/images/France_Home.jpg" Height="198px" Width="228px" />

        <asp:ImageButton ID="ImageButton12" runat="server" 
        ImageUrl="~/images/Germany_Home.jpg" Height="198px" Width="228px" />

        <asp:ImageButton ID="ImageButton14" runat="server" 
        ImageUrl="~/images/Netherlands_Home.jpg" Height="198px" Width="228px" />

        <br />
        
</div>

</asp:Content>




