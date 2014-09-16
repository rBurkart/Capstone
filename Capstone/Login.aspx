<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
    {
        width: 100%;
        height: 142px;
    }
    .style3
    {
            text-align: right;
            width: 163px;
        }
    .style4
    {
        width: 176px;
    }
    .level2
    {
        font-size: xx-large;
        color: #FF3300;
        text-align: center;
    }
    .style6
    {
            color: black;
            font-size: large;
            font-family: "Berlin Sans FB";
        }
    .style7
    {
        font-size: xx-large;
        color: #FFFFFF;
        text-align: center;
            font-family: "Berlin Sans FB";
        }
        .style8
        {
            width: 163px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div id="center"> 
    <asp:Label ID="lblLogin" runat="server" Text="PLEASE LOGIN" 
    CssClass="style7" ClientIDMode="Static"></asp:Label>
    

        <br />

<table class="style2">
    <tr>
        <td class="style3">

    <asp:Label ID="lblUserName" runat="server" Text="Username:" CssClass="style6"></asp:Label>
        </td>
        <td class="style4">
    <asp:TextBox ID="txtUserName" runat="server" Width="225px"></asp:TextBox>
        </td>
        <td>
    <asp:RequiredFieldValidator ID="rfdUserName" runat="server" 
                ErrorMessage="UserName is Required" ControlToValidate="txtUserName" 
                CssClass="style6"></asp:RequiredFieldValidator>

        </td>
    </tr>
    <tr>
        <td class="style3">

    <asp:Label ID="lblPassword" runat="server" Text="Password:" CssClass="style6"></asp:Label>
        </td>
        <td class="style4">
    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="224px"></asp:TextBox>
        </td>
        <td>
    <asp:RequiredFieldValidator ID="rfdUserName0" runat="server" 
                ErrorMessage="Password is Required" ControlToValidate="txtPassword" 
                CssClass="style6"></asp:RequiredFieldValidator>

        </td>
    </tr>
    <tr>
        
        <td class="style8">

    
            &nbsp;</td>
        
        <td>

    
    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" 
                
                style="color: #003300; font-size: x-large; font-family: 'Berlin Sans FB';" 
                ForeColor="#003300" />

        </td>
        
    </tr>
    <tr>
        
        <td class="style8">

            &nbsp;</td>
       
        <td>

    <asp:Label ID="lblSignup" runat="server" Text="Not a member?" CssClass="style6"></asp:Label>
            &nbsp;&nbsp;
            <asp:Button ID="btnSignup" runat="server" Text="Signup" 
                style="color: #003300; font-family: 'Berlin Sans FB';" 
                ForeColor="#003300" OnClick="btnSignup_Click" />
        </td>
       
    </tr>
</table>
</div>

</asp:Content>

