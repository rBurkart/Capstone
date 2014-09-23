using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CartItem
/// </summary>
public class CartItem
{
	public CartItem()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    private Product _product;

    public Product Product
    {
        get { return _product; }
        set { _product = value; }
    }
    
    
    
    private int _quantity;

    public int Quantity
    {
        get { return _quantity; }
        set { _quantity = value; }
    }


    public string Display()
    {
        return Product.ProductName + " (" + Quantity.ToString() +") " + " at " + Convert.ToString(Product.ProductCost) + " each";

    }




}