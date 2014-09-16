<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="menu">
           <br />
           <asp:Label ID="lblTitle" runat="server" Text="LOGIN"></asp:Label>
       </div>

       <br />


<%--Required field validator for Username--%>
<asp:ValidationSummary ID="ValidationSummary" Runat="server" ForeColor="Red" headertext="There were errors on the page:" />


 <%-----------%> 
        
        <asp:RequiredFieldValidator ID="RFVtxtUsername" Runat="server" 
            controltovalidate="txtUsername"
            errormessage="User ID is required.">* 
        </asp:RequiredFieldValidator>

            &nbsp;<asp:Label ID="lblUsername" runat="server" Text="Username: "></asp:Label>
            &nbsp;  
        
        <asp:TextBox ID="txtUsername" MaxLength="20" runat="server"></asp:TextBox>
        

<br/>
<%--Required field validator for Password--%>


 <%--Required field validator for Password--%> 
       
        <asp:RequiredFieldValidator ID="RFVtxtPassword" Runat="server" 
            controltovalidate="txtPassword"
            errormessage="Password is required.">* 
        </asp:RequiredFieldValidator>

        <asp:Label ID="lblPassword" runat="server" Text="Password: "></asp:Label>
            &nbsp;&nbsp;  
        <asp:TextBox ID="txtPassword" type="password" MaxLength="10" runat="server"></asp:TextBox>
        <br/><br/>

            <asp:Button ID="btnLogin" runat="server" Text="Login" 
    onclick="btnLogin_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" 
            CausesValidation="false" onclick="btnCancel_Click" />
            <br />
<br />
<asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
            <br /><br />



            <asp:LinkButton ID="lbtnForgotPass" runat="server">Forgot Password?</asp:LinkButton>

    
       
</asp:Content>

