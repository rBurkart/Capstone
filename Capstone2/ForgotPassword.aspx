<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<br /><br />
<div class="menu">
           <asp:Label ID="lblTitle" runat="server" Text="FORGOT PASSWORD"></asp:Label>
       </div>

       <br />




<%--it handles the error messages on the form--%>
    <asp:ValidationSummary 
    ID="ValidationSummary" 
    Runat="server" 
    ForeColor="Red" 
    headertext="There were errors on the page:" />


<%--forgot password form--%> 

<table style=" margin:auto border:10px solid blue; width:25%; padding: 50px">

        <tr>   
            
                <td align="right" >
                <asp:Label ID="lblEmail" runat="server" Text="Email: "></asp:Label>
                </td>
                <td align="left"> 
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
                <td>
                &nbsp;
                </td>
        </tr>  
      
        <tr>
      

                <td align="right" >
                <asp:Label ID="lblConfirmEmail" runat="server" Text="Confirm Email: "></asp:Label>
                </td>
                <td align="left"> 
                <asp:TextBox ID="txtConfirmEmail" runat="server"></asp:TextBox>
                </td>
                <td>
                &nbsp;
                </td>
        </tr>

        <tr>        

       
                <td align="right" >
                <asp:Label ID="lblPassword" runat="server" Text="Password: "></asp:Label>
                </td>
                <td align="left">   
                <asp:TextBox ID="txtPassword" type="password" runat="server"></asp:TextBox>
                </td>
                <td>
                &nbsp;
                </td>
        </tr>

        <tr>  
      
                <td align="right" >
                <asp:Label ID="lblConfirmPass" runat="server" Text="Confirm Password: "></asp:Label>
                </td>
                <td align="left">   
                <asp:TextBox ID="txtConfirmPass" type="password" runat="server"></asp:TextBox>
                </td>
                <td>
                &nbsp;
                </td>
        </tr>

        <tr>
                <td align="right" >
                <asp:Button ID="btnResetPass" runat="server" Text="Reset Password" />
                </td>
                <td align="left">  
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" CausesValidation="false" 
                        onclick="btnCancel_Click" />
                </td>
                <td>
                &nbsp;
                </td>
        </tr>
</table>




<%--Required field validator for Email--%> 
        <asp:RequiredFieldValidator 
            ID="RFVEmail" 
            Runat="server" 
            display="Static"
            controltovalidate="txtEmail"
            errormessage="Email is required.">*
        </asp:RequiredFieldValidator>


<%--Required field validator for Password--%> 
        <asp:RequiredFieldValidator 
            ID="RFVPassword" 
            Runat="server" 
            display="Static"
            controltovalidate="txtPassword"
            errormessage="Password is required.">*
        </asp:RequiredFieldValidator>


<%--Regular Expression validator for Email--%> 
        <asp:RegularExpressionValidator 
            ID="REGEXEmail" 
            runat="server" 
            ControlToValidate="txtEmail" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            display="Static"
            ErrorMessage="Email is not valid.">*
        </asp:RegularExpressionValidator> 


<%--Compare field validator for Email--%>     
        <asp:CompareValidator 
            ID="CompareValidatorEmail" 
            runat="server" 
            display="Static"
            ControlToValidate="txtConfirmEmail"
            operator="Equal" 
            ControlToCompare="txtEmail"
            ErrorMessage="Email does not match">*
          </asp:CompareValidator>



<%--Compare  field validator for Password--%>     
          <asp:CompareValidator 
            ID="CompareValidatorPassword" 
            runat="server" 
            display="Static"
            ControlToValidate="txtConfirmPass"
            operator="Equal" 
            ControlToCompare="txtPassword"
            ErrorMessage="Password does not match">*
          </asp:CompareValidator> 

    

    
    


 </asp:Content>

