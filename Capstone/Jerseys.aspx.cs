using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Diagnostics;
using System.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class _Default : System.Web.UI.Page
{
    private Product SelectedProduct;

    protected void Page_Load(object sender, System.EventArgs e)
    {

        if (!IsPostBack)
        {

            ddlProducts.DataBind();

        }

        SelectedProduct = this.GetSelectedProduct();

        lblName.Text = SelectedProduct.ProductName;
        lblProductDesc.Text = SelectedProduct.ProductDesc;
        lblProductSKU.Text = SelectedProduct.ProductSKU;
        lblProductCost.Text = SelectedProduct.ProductCost; // Check the format
        imgProduct.ImageUrl = "App_Themes/Products/" + SelectedProduct.ImageFile;
    }

    private Product GetSelectedProduct()
    {
        DataView dvProduct = (DataView)SDSProductsDDL.Select(DataSourceSelectArguments.Empty);
        dvProduct.RowFilter = "ProductID = '" + ddlProducts.SelectedValue + "'";
        Product Product = new Product();
        Product.ProductID = dvProduct[0]["ProductID"].ToString();
        Product.ProductName = dvProduct[0]["ProductName"].ToString();
        Product.ProductDesc = dvProduct[0]["ProductDesc"].ToString();
        Product.ProductSKU = dvProduct[0]["ProductSKU"].ToString();
        Product.ProductCost = Convert.ToDecimal(dvProduct[0]["ProductCost"]).ToString();
        Product.ImageFile = dvProduct[0]["Picture"].ToString();

        return Product;
    }

    protected void btnAdd_Click1(object sender, System.EventArgs e)
    {
        if (Page.IsValid)
        {
            CartItem CartItem = new CartItem();
            CartItem.Product = SelectedProduct;
            CartItem.Quantity = Convert.ToInt32(txtQuantity.Text);
            this.AddToCart(CartItem);
            //Response.Redirect("ShoppingCart.aspx");
        }
    }

    private void AddToCart(CartItem CartItem)
    {
        SortedList Cart = GetCart();
        string sProductID = SelectedProduct.ProductID;
        if (Cart.ContainsKey(sProductID))
        {
            CartItem = (CartItem)Cart[sProductID];
            CartItem.Quantity += Convert.ToInt32(txtQuantity.Text);
        }
        else
        {
            Cart.Add(sProductID, CartItem);
        }
        txtQuantity.Text = "";
    }

    private SortedList GetCart()
    {
        if (Session["Cart"] == null)
        {
            Session.Add("Cart", new SortedList());
        }
        return (SortedList)Session["Cart"];
    }
    public _Default()
    {
        Load += Page_Load;
    }

    protected void btnCart_Click(object sender, EventArgs e)
    {
        Response.Redirect("ShoppingCart.aspx");
    }
}