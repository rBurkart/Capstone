<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:ValidationSummary ID="ValidationSummary" Runat="server" ForeColor="Red" 
        headertext="There were errors on the page:" Height="74px" />

<div class="menu">
           <asp:Label ID="lblTitle" runat="server" Text="ORDERS"></asp:Label>
       </div>



    <table style="width:46%; padding: 50px">
      <tr>        
             

                
                <td align="right" style="height: 37px; width: 523px" >
                    <asp:Label ID="lblName" runat="server" Text="User ID"></asp:Label>
                </td>
                <td align="left" style="height: 37px; width: 472px">
                    <asp:TextBox ID="txtUserID" runat="server" Width="39px"></asp:TextBox>
                </td>
      </tr>  

      <tr>
                
                
                
                <td align="right" style="width: 523px" >
                <asp:Label ID="lblDescription" runat="server" Text="Status ID:"></asp:Label>
                </td>
                <td align="left" style="width: 472px">
                <asp:TextBox ID="txtStatusID" runat="server" Width="39px"></asp:TextBox>
                </td>
      </tr>

      <tr>
                
                
                <td align="right" style="width: 523px" >
                <asp:Label ID="lblSKU" runat="server" Text="Order Date:"></asp:Label>
                </td>
                <td align="left" style="width: 472px">
                <asp:TextBox ID="txtOrderDate" runat="server" Width="188px"></asp:TextBox>
                </td>
      </tr>

      <tr>
                
                
                <td align="right" style="width: 523px" >
                <asp:Label ID="lblTeam" runat="server" Text="Order Address 1:"></asp:Label>
                </td>
                <td align="left" style="width: 472px">   
                <asp:TextBox ID="txtOrderAddress1" runat="server" Width="188px"></asp:TextBox>
                </td>
       </tr>    

             <tr>
                
                
                <td align="right" style="width: 523px" >
                <asp:Label ID="lblPrice" runat="server" Text="Order Address 2:"></asp:Label>
                </td>
                <td align="left" style="width: 472px">
                <asp:TextBox ID="txtOrderAddress2" runat="server" Width="188px"></asp:TextBox>
                </td>
      </tr>
                
             <tr>
                
                <td align="right" style="width: 523px" >
                <asp:Label ID="lblSKU0" runat="server" Text="Order City:"></asp:Label>
                </td>
                <td align="left" style="width: 472px">
                <asp:TextBox ID="txtOrderCity" runat="server" Width="188px"></asp:TextBox>
                </td>
      </tr>
                
             <tr>
                
                <td align="right" style="width: 523px" >
                <asp:Label ID="lblSKU1" runat="server" Text="State ID:"></asp:Label>
                </td>
                <td align="left" style="width: 472px">
                <asp:TextBox ID="txtStateID" runat="server" Width="188px"></asp:TextBox>
                </td>
      </tr>
                
             <tr>
                
                <td align="right" style="width: 523px" >
                <asp:Label ID="lblSKU2" runat="server" Text="Order ZIP:"></asp:Label>
                </td>
                <td align="left" style="width: 472px">
                <asp:TextBox ID="txtOrderZip" runat="server" Width="188px"></asp:TextBox>
                </td>
      </tr>
                
             <tr>
                
                <td align="right" style="width: 523px" >
                <asp:Label ID="lblSKU3" runat="server" Text="Order Last Update:"></asp:Label>
                </td>
                <td align="left" style="width: 472px">
                <asp:TextBox ID="txtOrderLastUpdate" runat="server" Width="188px"></asp:TextBox>
                </td>
      </tr>
                
       <tr>     <td align="right" style="width: 523px" >
                <asp:Button ID="btnUpdate" runat="server" Text="Update" 
                    onclick="btnUpdate_Click" />
                </td>
                <td align="left" style="width: 472px">
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" CausesValidation="false" 
                        onclick="btnCancel_Click" />
                </td>
       </tr> 

    </table>

    <asp:Label ID="lblError" runat="server" Text="Label"></asp:Label>

    <br />

    <asp:SqlDataSource ID="sdsTeam" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:cs %>" 
                    SelectCommand="spGetActiveTeamsDDL" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
</asp:Content>

