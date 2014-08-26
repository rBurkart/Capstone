using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    
    protected void btnOn_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Product.aspx", true);
    }



}