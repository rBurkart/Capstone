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
        lstCart.Items.Clear();
        CartItem CartItem = default(CartItem);
        DictionaryEntry CartEntry = default(DictionaryEntry);
        foreach (DictionaryEntry CartEntry_loopVariable in Cart2)
        {
            CartEntry = CartEntry_loopVariable;
            CartItem = (CartItem)CartEntry.Value;
            lstCart.Items.Add(CartItem.Display());

        }
    }

    protected void btnRemove_Click(object sender, System.EventArgs e)
    {
        if (lstCart.SelectedIndex > -1 & Cart2.Count > 0)
        {
            Cart2.RemoveAt(lstCart.SelectedIndex);
            this.DisplayCart();
        }
    }

    protected void btnEmpty_Click(object sender, System.EventArgs e)
    {
        Cart2.Clear();
        lstCart.Items.Clear();
        lblMessage.Text = "";
    }

    protected void btnCheckOut_Click(object sender, System.EventArgs e)
    {
        lblMessage.Text = "Please Wait Checking out...";
    }
    public Cart()
    {
        Load += Page_Load;
    }
    protected void btnCheckOut_Click1(object sender, EventArgs e)
    {
        Response.Redirect("CheckOut.aspx", true);
    }
    protected void btnEmpty_Click1(object sender, EventArgs e)
    {
        lstCart.Items.Clear();
    }
}