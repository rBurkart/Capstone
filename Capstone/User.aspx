<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br /><br />
<div class="menu">
           <asp:Label ID="lblTitle" runat="server" Text="USER REGISTRATION"></asp:Label>
       </div>

       <br /> 

<%--it handles the error messages on the form--%><%--<asp:ValidationSummary 
    ID="ValidationSummary" 
    CssClass="menu"
    Runat="server"
    ForeColor="Red" 
    headertext="There were errors on the page:" />--%>


    
    <table style="width: 100%">
        <tr>
            <td style="text-align: right; width: 412px">


    
    <asp:Label ID="lblFname" runat="server" Text="First Name:" 
                    style="font-family: 'Book Antiqua'"></asp:Label>
            </td>
            <td style="width: 179px">
    <asp:TextBox ID="txtFirstname" runat="server" Width="176px" />   

            </td>
            <td>
        <asp:RequiredFieldValidator 
            ID="RFVFname" 
            Runat="server" 
            controltovalidate="txtFirstname"
            errormessage="First Name is required.">*
        </asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 412px">

    <asp:Label ID="lblSname" runat="server" Text="Last Name:" 
                    style="font-family: 'Book Antiqua'"></asp:Label>
            </td>
            <td style="width: 179px">
    <asp:TextBox ID="txtSecondname" runat="server" Width="176px" /> 
    
            </td>
            <td>
        <asp:RequiredFieldValidator 
            ID="RFVSname" 
            Runat="server" 
            controltovalidate="txtSecondname"
            errormessage="Second Name is required.">*
        </asp:RequiredFieldValidator>
    
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 412px">

    <asp:Label ID="lblAddress1" runat="server"  Text="Address 1 (required) :" 
                    style="font-family: 'Book Antiqua'"></asp:Label>
            </td>
            <td style="width: 179px">
    <asp:TextBox ID="txtAddress1" runat="server" Width="177px" /> 

            </td>
            <td>
        <asp:RequiredFieldValidator 
            ID="RFVAddress1" 
            Runat="server" 
            controltovalidate="txtAddress1"
            errormessage="Address 1 is required.">*
        </asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 412px">

    <asp:Label ID="lblAddress2" runat="server" Text="Address 2:" 
                    style="font-family: 'Book Antiqua'"></asp:Label>
            </td>
            <td style="width: 179px">
    <asp:TextBox ID="txtAddress2" runat="server" Width="176px" /> 
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right; width: 412px">

    <asp:Label ID="lblCity" runat="server" Text="City:" style="font-family: 'Book Antiqua'"></asp:Label>
            </td>
            <td style="width: 179px">
    <asp:TextBox ID="txtCity" runat="server" Width="176px" />

            </td>
            <td>
        <asp:RequiredFieldValidator 
            ID="RFVCity" 
            Runat="server" 
            controltovalidate="txtCity"
            errormessage="City is required.">*
        </asp:RequiredFieldValidator> 

            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 412px">

    <asp:Label ID="lblState" runat="server" Text="State:" style="font-family: 'Book Antiqua'"></asp:Label>
            </td>
            <td style="width: 179px">
    <asp:DropDownList ID="DdlState" runat="server" Height="22px" Width="179px" 
                    DataSourceID="SDSSatate" DataTextField="State_Name" DataValueField="StateID">
    </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right; width: 412px">

    <asp:Label ID="lblZip" runat="server" Text="Zip:" style="font-family: 'Book Antiqua'"></asp:Label>
            </td>
            <td style="width: 179px">
    <asp:TextBox ID="txtZip" runat="server" Width="176px" Height="22px" /> 

            </td>
            <td>
        <asp:RequiredFieldValidator 
            ID="RFVZip" 
            Runat="server" 
            controltovalidate="txtZip"
            errormessage="Zip Code is required.">*
        </asp:RequiredFieldValidator>
     
        <asp:RegularExpressionValidator 
            ID="REGEXZip" 
            runat="server" 
            controltovalidate="txtZip"
            ErrorMessage="ZIP Code is not valid" 
            ValidationExpression="\d{5}(-\d{4})?" style="font-family: 'Book Antiqua'">
        </asp:RegularExpressionValidator>



            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 412px">

    <asp:Label ID="lblUsername" runat="server" Text="Username:" 
                    style="font-family: 'Book Antiqua'"></asp:Label>
            </td>
            <td style="width: 179px">
    <asp:TextBox ID="txtUsername" runat="server" Width="176px" /> 

            </td>
            <td>
        <asp:RequiredFieldValidator 
            ID="RFVUsername" 
            Runat="server" 
            controltovalidate="txtUsername"
            errormessage="Username is required.">*
        </asp:RequiredFieldValidator> 

            </td>
        </tr>
        <tr>
            <td style="height: 20px; text-align: right; width: 412px">

    <asp:Label ID="lblPassword" runat="server" Text="Password:" 
                    style="font-family: 'Book Antiqua'"></asp:Label>
            </td>
            <td style="height: 20px; width: 179px">
    <asp:TextBox ID="txtPassword" type="password"  runat="server" Width="176px" /> 

            </td>
            <td style="height: 20px">
        <asp:RequiredFieldValidator 
            ID="RFVPassword" 
            Runat="server" 
            controltovalidate="txtPassword"
            errormessage="Password is required.">*
        </asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 412px">

    <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password:" 
                    style="font-family: 'Book Antiqua'"></asp:Label>
            </td>
            <td style="width: 179px">
    <asp:TextBox ID="txtConfirmPass" runat="server" Width="176px" /> 

            </td>
            <td>
        <asp:RequiredFieldValidator 
            ID="RFVConfirmPassword" 
            Runat="server" 
            controltovalidate="txtConfirmPass"
            errormessage="Confirm Password is required.">*
        </asp:RequiredFieldValidator>

        <asp:CompareValidator 
            ID="CompareValidatorPassword" 
            runat="server" 
            ErrorMessage="Password does not match"
            display="Static"
            ControlToValidate="txtConfirmPass"
            operator="Equal" 
            ControlToCompare="txtPassword" style="font-family: 'Book Antiqua'">
          </asp:CompareValidator>

            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 412px">

    <asp:Label ID="lblEmail" runat="server" Text="Email:" style="font-family: 'Book Antiqua'"></asp:Label>
            </td>
            <td style="width: 179px">
    <asp:TextBox ID="txtEmail" runat="server" Width="176px" />

            </td>
            <td>
        <asp:RequiredFieldValidator 
            ID="RFVEmail" 
            Runat="server" 
            controltovalidate="txtEmail"
            errormessage="Email is required.">*
        </asp:RequiredFieldValidator>
    

    <asp:RegularExpressionValidator 
            ID="REGEXEMail" 
            runat="server" 
            controltovalidate="txtEmail"
            ErrorMessage="Email is not valid" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*
            </asp:RegularExpressionValidator>
    

            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 412px">

    <asp:Label ID="lblConfirmEmail" runat="server" Text="Confirm Email:" 
                    style="font-family: 'Book Antiqua'"></asp:Label>
            </td>
            <td style="width: 179px">
    <asp:TextBox ID="txtConfirmEmail" runat="server" Width="176px" />
    
            </td>
            <td>
        <asp:RequiredFieldValidator 
            ID="RFVConfirmEmail" 
            Runat="server" 
            controltovalidate="txtConfirmEmail"
            errormessage="Confirm Email is required.">*
        </asp:RequiredFieldValidator>

        <asp:CompareValidator 
            ID="CompareValidatorEmail" 
            runat="server" 
            ErrorMessage="Email does not match"
            display="Static"
            ControlToValidate="txtConfirmEmail"
            operator="Equal" 
            ControlToCompare="txtEmail">*
          </asp:CompareValidator>
     
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 412px">

    <asp:Label ID="lblPhone" runat="server" Text="Phone:" style="font-family: 'Book Antiqua'"></asp:Label>
            </td>
            <td style="width: 179px">
    <asp:TextBox ID="txtPhone" runat="server" Width="176px" /> 

            </td>
            <td>
        <asp:RequiredFieldValidator 
            ID="RFVPhone" 
            Runat="server" 
            controltovalidate="txtPhone"
            errormessage="Phone is required.">*
        </asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 412px">

    <asp:Label ID="lblIsActive" runat="server" Text="Is Active:" 
                    style="font-family: 'Book Antiqua'"></asp:Label>
            </td>
            <td style="width: 179px">
                <asp:RadioButtonList ID="rblIsActive" runat="server">
                    <asp:ListItem Value="False">No</asp:ListItem>
                    <asp:ListItem Value="True">Yes</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 412px">
                &nbsp;</td>
            <td style="width: 179px">

    <asp:Button ID="btnAccept" runat="server" Text="Update" 
                    style="font-family: 'Book Antiqua'" onclick="btnAccept_Click" />
    &nbsp;&nbsp;
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CausesValidation="false" 
        onclick="btnCancel_Click" style="font-family: 'Book Antiqua'" />


                <input id="Reset1" style="font-family: 'Book Antiqua'" type="reset" 
                    value="reset" /></td>
            <td>
                <asp:SqlDataSource ID="SDSSatate" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:cs %>" 
                    SelectCommand="spGetStateDDL" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
    
    <asp:Label ID="lblError" runat="server"></asp:Label>


</asp:Content>

