<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:ValidationSummary  ID="ValidationSummary" 
                        Runat="server" 
                        ForeColor="Red" 
                        headertext="There were errors on the page:" />

<br /><br />

<div class="title">
           <asp:Label ID="lblTitle" runat="server" Text="CATEGORIES"></asp:Label>
       </div>

       <br />

       
  <table style="margin:auto border:1px solid blue; width:25%; padding: 50px">
    <tr>        
                
                <asp:RequiredFieldValidator ID="RFVtxtName" Runat="server" 
                controltovalidate="txtName"
                errormessage="Name is required.">* 
                </asp:RequiredFieldValidator>
                
                <td align="right" >
                <asp:Label ID="lblName" runat="server" Text="Country Name:"></asp:Label>
                </td>
                <td align="left">       
                <asp:TextBox ID="txtName" runat="server" />   
                </td>
                <td>
                &nbsp;
                </td>
      </tr>  

      <tr>        
                <td align="right" >
                <asp:Label ID="lblIsActive" runat="server" Text="Is Active:"></asp:Label>
                </td>
                <td align="left">   
                    <asp:RadioButtonList ID="rblIsActive" runat="server">
                        <asp:ListItem Value="False">No</asp:ListItem>
                        <asp:ListItem Value="True">Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                &nbsp;
                </td>
      </tr>  
      
      <tr>        
                <td align="right" >
                <asp:Button ID="btnUpdate" runat="server" Text="Update" onclick="btnUpdate_Click" />
                </td>
                <td align="left"> 
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" CausesValidation="false" onclick="btnCancel_Click" />
                </td>
                <td>
                &nbsp;
                </td>
      </tr>  

    </table>


    <asp:Label ID="lblError" runat="server"></asp:Label>

    <br />

</asp:Content>

