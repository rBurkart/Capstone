using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;


partial class Cart : System.Web.UI.Page
{


    private SortedList Cart2;
    protected void Page_Load(object sender, System.EventArgs e)
    {
        Cart2 = GetCart();
        if (!IsPostBack)
        {
            this.DisplayCart();
        }
    }

    private SortedList GetCart()
    {
        if (Session["Cart"] == null)
        {
            Session.Add("Cart", new SortedList());
        }
        return (SortedList)Session["Cart"];
    }

    private void DisplayCart()
    {
        //Clears the previous items
        lstCart.Items.Clear();

        //Instantiates an object of CartItem Class
        CartItem CartItem = default(CartItem);

        // Defines a Dictionary Key/Value entry, that holds a description and price in a listbox
        DictionaryEntry CartEntry = default(DictionaryEntry);

        //Loops through entries, adds to the listbox and displays them within the listbox
        foreach (DictionaryEntry CartEntry_loopVariable in Cart2)
        {
            CartEntry = CartEntry_loopVariable;
            CartItem = (CartItem)CartEntry.Value;
            lstCart.Items.Add(CartItem.Display());

        }
    }

    protected void btnRemove_Click(object sender, System.EventArgs e)
    {
        // Removes selected item by selectedindex property, then redisplay the cart listbox.
        if (lstCart.SelectedIndex > -1 & Cart2.Count > 0)
        {
            Cart2.RemoveAt(lstCart.SelectedIndex);
            this.DisplayCart();
        }
    }

    protected void btnEmpty_Click(object sender, System.EventArgs e)
    {
        // Clears cart listbox
        Cart2.Clear();
        lstCart.Items.Clear();
        lblMessage.Text = "";
    }

    public Cart()
    {
        Load += Page_Load;
    }

    protected void btnCheckOut_Click(object sender, EventArgs e)
    {
        // If items are in cart, send to Checkout page
        if (lstCart.Items.Count > 0)
        {
            Response.Redirect("CheckOut.aspx", true);
        }
        else
        {
            lblMessage.Text = "Cart is Empty";
        }
    }

    protected void btnEmpty_Click1(object sender, EventArgs e)
    {
        lstCart.Items.Clear();
    }
}