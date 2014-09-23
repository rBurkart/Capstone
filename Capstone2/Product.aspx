<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:ValidationSummary ID="ValidationSummary" Runat="server" ForeColor="Red" headertext="There were errors on the page:" />


<div class="menu">
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
                <asp:RequiredFieldValidator ID="rfvTeam" Runat="server" 
                controltovalidate="ddlTeam"
                errormessage="Team is required.">* 
                </asp:RequiredFieldValidator>
                
                <td align="right" >
                <asp:Label ID="lblTeam" runat="server" Text="Team:"></asp:Label>
                </td>
                <td align="left">   
                    <asp:DropDownList ID="ddlTeam" runat="server" DataSourceID="sdsTeam" DataTextField="CountryName" DataValueField="TeamID">
                    <%--<asp:ListItem Text="Cat 1" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Cat 2" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Cat 3" Value="3"></asp:ListItem>--%>
                    </asp:DropDownList>
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
                <asp:Label ID="lblPrice" runat="server" Text="Price: "></asp:Label>
                </td>
                <td align="left">
                <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
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
                    <%--<asp:ListItem Text="Cat 1" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Cat 2" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Cat 3" Value="3"></asp:ListItem>--%>
                    <asp:RadioButtonList ID="rblIsActive" runat="server">
                        <asp:ListItem Value="False">No</asp:ListItem>
                        <asp:ListItem Value="True">Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                &nbsp;
                </td>
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

