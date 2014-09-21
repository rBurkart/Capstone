<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:ValidationSummary ID="ValidationSummary" Runat="server" ForeColor="Red" headertext="There were errors on the page:" />

<br /><br />
<div class="menu">
           <asp:Label ID="lblTitle" runat="server" Text="ORDERS"></asp:Label>
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
                    <asp:Label ID="lblName" runat="server" Text="User ID"></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="txtUserID" runat="server"></asp:TextBox>
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
                <asp:Label ID="lblDescription" runat="server" Text="Status ID:"></asp:Label>
                </td>
                <td align="left">
                <asp:TextBox ID="txtStatusID" runat="server"></asp:TextBox>
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
                <asp:Label ID="lblSKU" runat="server" Text="Order Date:"></asp:Label>
                </td>
                <td align="left">
                <asp:TextBox ID="txtOrderDate" runat="server"></asp:TextBox>
                </td>
                <td>
                &nbsp;
                </td>
      </tr>

      <tr>
                <asp:RequiredFieldValidator ID="rfvTeam" Runat="server" 
                controltovalidate="ddlTeam"
                errormessage="Team is required.">* 
                </asp:RequiredFieldValidator>
                
                <td align="right" >
                <asp:Label ID="lblTeam" runat="server" Text="Order Address 1:"></asp:Label>
                </td>
                <td align="left">   
                <asp:TextBox ID="txtOrderAddress1" runat="server"></asp:TextBox>
                </td>
                <td>
                &nbsp;
                </td>
       </tr>    

             <tr>
                <asp:RequiredFieldValidator ID="rfvPrice" Runat="server" 
                controltovalidate="txtPrice"
                errormessage="Price is required.">* 
                </asp:RequiredFieldValidator>
                
                <td align="right" >
                <asp:Label ID="lblPrice" runat="server" Text="Order Address 2:"></asp:Label>
                </td>
                <td align="left">
                <asp:TextBox ID="txtOrderAddress2" runat="server"></asp:TextBox>
                </td>
                <td>
                &nbsp;
                </td>
      </tr>
                
             <tr>
                
                <td align="right" >
                <asp:Label ID="lblSKU0" runat="server" Text="Order City:"></asp:Label>
                </td>
                <td align="left">
                <asp:TextBox ID="txtOrderCity" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
      </tr>
                
             <tr>
                
                <td align="right" >
                <asp:Label ID="lblSKU1" runat="server" Text="State ID:"></asp:Label>
                </td>
                <td align="left">
                <asp:TextBox ID="txtStateID" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
      </tr>
                
             <tr>
                
                <td align="right" >
                <asp:Label ID="lblSKU2" runat="server" Text="Order ZIP:"></asp:Label>
                </td>
                <td align="left">
                <asp:TextBox ID="txtOrderZip" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
      </tr>
                
       <tr>     <td align="right" >
                <asp:Button ID="btnUpdate" runat="server" Text="Update" 
                    onclick="btnUpdate_Click" />
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

    <asp:Label ID="lblError" runat="server" Text="Label"></asp:Label>

    <br />

    <asp:SqlDataSource ID="sdsTeam" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:cs %>" 
                    SelectCommand="spGetActiveTeamsDDL" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
</asp:Content>

