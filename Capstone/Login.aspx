<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="menu">
           <br />
           <asp:Label ID="lblTitle" runat="server" Text="LOGIN"></asp:Label>
       </div>

       <br />
<br />


<%--Required field validator for Username--%>
<table style="width: 100%">
    <tr>
        <td style="text-align: right; width: 370px">
            <asp:Label ID="lblUsername" runat="server" Text="Username: "></asp:Label>
            </td>
        <td style="width: 242px">
        
        <asp:TextBox ID="txtUsername" MaxLength="20" runat="server" Width="203px"></asp:TextBox>
        

        </td>
        <td>
        
        <asp:RequiredFieldValidator ID="RFVtxtUsername" Runat="server" 
            controltovalidate="txtUsername"
            errormessage="User ID is required."></asp:RequiredFieldValidator>

            </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 370px">

        <asp:Label ID="lblPassword" runat="server" Text="Password: "></asp:Label>
            </td>
        <td style="width: 242px">
        <asp:TextBox ID="txtPassword" type="password" MaxLength="10" runat="server" 
                Width="203px"></asp:TextBox>
        </td>
        <td>
       
        <asp:RequiredFieldValidator ID="RFVtxtPassword" Runat="server" 
            controltovalidate="txtPassword"
            errormessage="Password is required."></asp:RequiredFieldValidator>

        </td>
    </tr>
    <tr>
        <td style="width: 370px">
            &nbsp;</td>
        <td style="width: 242px">

            <asp:Button ID="btnLogin" runat="server" Text="Login" 
    onclick="btnLogin_Click" />
            &nbsp;&nbsp;
            
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" 
            CausesValidation="false" onclick="btnCancel_Click" />
            </td>
        <td>



            <asp:LinkButton ID="lbtnForgotPass" CausesValidation="false" runat="server" 
                onclick="lbtnForgotPass_Click">Forgot Password?</asp:LinkButton>

    
       
        </td>
    </tr>
    <tr>
        <td style="width: 370px">
            &nbsp;</td>
        <td style="width: 242px">
<asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
            </td>
        <td>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/App_Themes/soccer_ball.jpg" 
                Width="100px" />
        </td>
    </tr>
</table>
<br />


 <%-----------%> 
        
            &nbsp;&nbsp;  
        
        
<br/>
<%--Required field validator for Password--%>


 <%--Required field validator for Password--%> 
       
            &nbsp;&nbsp;  
        <br/><br/>

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            <br />
<br />
            <br /><br />



            <br />

    
       
</asp:Content>

