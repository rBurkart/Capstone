<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Jerseys.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br /><br />
<div class="menu">
           <asp:Label ID="lblTitle" runat="server" Text="CHOOSE A PRODUCT"></asp:Label>
       </div>

       <br />


<asp:Label ID="Label1" runat="server"
            Text="Please select a product:"></asp:Label>
        
        
        <asp:DropDownList ID="ddlProducts" runat="server" 
        DataSourceID="SDSProductsDDL" DataTextField="ProductName" 
        DataValueField="ProductID" AutoPostBack="True">
    </asp:DropDownList>

    <asp:SqlDataSource ID="SDSProductsDDL" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cs %>" 
        SelectCommand="SELECT ProductID, ProductName, ProductDesc, ProductSKU, ProductCost, Picture FROM Products ORDER BY ProductName"></asp:SqlDataSource>

        <br />




        <table>
            <tr >
                <td style="width: 250px; height: 22px">
                    <span style="text-decoration: underline">Name:</span>
                    <asp:Label ID="lblName" runat="server" 
                        Font-Bold="False" Font-Size="Larger">
                    </asp:Label>
                </td>
                <td style="width: 20px" rowspan="4">
                </td>
                <td rowspan="4" valign="top">
                    <asp:Image ID="imgProduct" runat="server" Height="200" />
                </td>
            </tr>
            <tr>
                <td style="width: 250px">
                    <span style="text-decoration: underline">Desc:</span>
                    <asp:Label ID="lblProductDesc" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 250px">
                    <span style="text-decoration: underline">SKU</span>:
                    <asp:Label ID="lblProductSKU" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 250px">
                    <span style="text-decoration: underline">Cost</span>:
                    <asp:Label ID="lblProductCost" runat="server" 
                        Font-Bold="True" Font-Size="Larger"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="each" 
                        Font-Bold="True" Font-Size="Larger">
                    </asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Quantity:" 
            Width="80px" BorderWidth = "0px"></asp:Label>
        <asp:TextBox ID="txtQuantity" runat="server" Width="80px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
            ControlToValidate="txtQuantity" Display="Dynamic"
            ErrorMessage="Quantity is a required field.">
        </asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server"
            ControlToValidate="txtQuantity" Display="Dynamic"
            ErrorMessage="Quantity must range from 1 to 500." 
            MaximumValue="500" MinimumValue="1" Type="Integer">
        </asp:RangeValidator><br /><br />
        <asp:Button ID="btnAdd" runat="server" Text="Add to Cart" 
        onclick="btnAdd_Click1" />&nbsp;
        <asp:Button ID="btnCart" runat="server" CausesValidation="False" 
            PostBackUrl="~/ShoppingCart.aspx" Text="Go to Cart" 
        onclick="btnCart_Click" />


    
   

</asp:Content>

