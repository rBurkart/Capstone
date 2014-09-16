<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminProduct.aspx.cs" Inherits="AdminProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblName" runat="server" Text="Product Name:" />
    <asp:TextBox ID="txtName" runat="server" />
    <asp:Label ID="lblDesc" runat="server" Text="Product Description:" />
    <asp:TextBox ID="txtDesc" runat="server" />
    <asp:Label ID="lblSKU" runat="server" Text="Product SKU:" />
    <asp:TextBox ID="txtSKU" runat="server" />
    <asp:Label ID="lblCost" runat="server" Text="Product Cost:"/>
    <asp:TextBox ID="txtCost" runat="server" />
    <asp:Label ID="lblPicture" runat="server" Text="Prouduct Picture" />
    <asp:FileUpload ID="FUPicture"  runat="server" />
    <asp:Button ID="btnUpload" Text="Submit" OnClick="UploadFile" runat="server" />
    <asp:Label ID="lblFeedback" runat="server" />
    <script runat="server">
        void UploadFile(object s, EventArgs e)
        {
            if (FUPicture.HasFile)
            {
                string fileName = FUPicture.FileName;
                FUPicture.SaveAs(MapPath("images/" + fileName));
                lblFeedback.Text = "File " + fileName + " uploaded.";

                Jersey temp = new Jersey();
                temp.ProductName = txtName.Text;
                temp.ProductDesc = txtDesc.Text;
                temp.ProductSKU = txtSKU.Text;
                temp.ProductCost = txtCost.Text;
                temp.Picture = fileName;
                if (temp.feedback != "")
                {
                    lblFeedback.Text = temp.feedback;
                }
                else
                {
                    temp.AddProduct();
                    lblFeedback.Text = "1 New Product was added.";
                    
                }


            }
            else
            {
                lblFeedback.Text = "There was a problem with this product";
            }
        }
    
    
    
    
    </script>

</asp:Content>

