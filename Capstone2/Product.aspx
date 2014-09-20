<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Button ID="btnAddItem" runat="server" Text="Add to Cart" 
        onclick="btnAddItem_Click" />

<asp:ValidationSummary ID="ValidationSummary" Runat="server" ForeColor="Red" headertext="There were errors on the page:" />

<br /><br />
<div class="title">
           <asp:Label ID="lblTitle" runat="server" Text="PRODUCTS"></asp:Label>
       </div>

       <br />



    <table style="margin:auto border:1px solid blue; width:25%; padding: 50px">
      <tr>        
                 <%--Required field validator for Name--%> 
       
                <asp:RequiredFieldValidator ID="RFVtxtName" Runat="server" 
                controltovalidate="txtName"
                errormessage="Name is required.">* 
                </asp:RequiredFieldValidator>

                
                <td align="right" >
                    <asp:Label ID="lblName" runat="server" Text="Name: "></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
                <td>
                &nbsp;
                </td>
      </tr>  

      <tr>
                
                <asp:RequiredFieldValidator ID="RFVDescription" Runat="server" 
                controltovalidate="txtDescription"
                errormessage="Description is required.">* 
                </asp:RequiredFieldValidator>
                
                <td align="right" >
                <asp:Label ID="lblDescription" runat="server" Text="Description: "></asp:Label>
                </td>
                <td align="left">
                <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
                </td>
                <td>
                &nbsp;
                </td>
      </tr>

      <tr>
                <asp:RequiredFieldValidator ID="RFVSku" Runat="server" 
                controltovalidate="txtSKU"
                errormessage="SKU is required.">* 
                </asp:RequiredFieldValidator>
                
                <td align="right" >
                <asp:Label ID="lblSKU" runat="server" Text="SKU: "></asp:Label>
                </td>
                <td align="left">
                <asp:TextBox ID="txtSKU" runat="server"></asp:TextBox>
                </td>
                <td>
                &nbsp;
                </td>
      </tr>

      <tr>
                <asp:RequiredFieldValidator ID="RFVCategory" Runat="server" 
                controltovalidate="ddlCategory"
                errormessage="Category is required.">* 
                </asp:RequiredFieldValidator>
                
                <td align="right" >
                <asp:Label ID="lblCategory" runat="server" Text="Category:"></asp:Label>
                </td>
                <td align="left">   
                    <asp:DropDownList ID="ddlCategory" runat="server">
                    <asp:ListItem Text="Cat 1" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Cat 2" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Cat 3" Value="3"></asp:ListItem>
                    </asp:DropDownList>
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
                <asp:CheckBox ID="checkboxIsActive" runat="server" />
                </td>
                <td>
                &nbsp;
                </td>
       </tr>
                
       <tr>     <td align="right" >
                <asp:Button ID="brnUpdate" runat="server" Text="Update" />
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
    
   
  

</asp:Content>

