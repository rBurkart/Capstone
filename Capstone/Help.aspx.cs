using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Help : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkHelp1_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://www.ebay.com/gds/How-To-Use-The-New-eBay-Shopping-Cart-/10000000053585339/g.html");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://www.macworld.com/article/1156341/open_websites_login_startup.html");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://www.wikihow.com/Shop-Online-Safely");
    }
}