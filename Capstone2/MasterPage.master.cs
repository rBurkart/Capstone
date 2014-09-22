using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //check to see if the browser has a valid authentication 
        //ticket for current user's session. If so, manipulate the 
        //log in and log out links and welcome message

        
            if (Request.IsAuthenticated)
            {
                //this means we are logged in so hide the login button
                lbtnLogin.Visible = false;

                //Controls the menu based on Roles
                MenuAdmin.Visible = false;
                MenuUser.Visible = true;


                //since we are logged in we can provide the link to logout
                lbtnLogout.Visible = true;

                //generate a personalized text message to display on the site
                //Grab the cookie
                if (!string.IsNullOrEmpty(Request.Cookies["UserEmail"].ToString()))
                {
                    HttpCookie cookie = Request.Cookies["UserEmail"];
                    lblGreeting.Text = "Welcome " + cookie.Value.ToString();

                }
                
            }
            else
            {
                //Since we have not been authenticated, we have to provide
                //a link to log in with
                lbtnLogin.Visible = true;


                //Controls the menu based on Roles
                MenuAdmin.Visible = true;
                MenuUser.Visible = false;

                //hide logout button since user is not authenticated
                lbtnLogout.Visible = false;

                //generate a generic text message to display on the site
                lblGreeting.Text = "Welcome Customer";

          }
        }
    
    protected void lbtnLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }


    protected void lbtnLogout_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Cookies["UserEmail"].Value = null;
        Session["Role"] = null;
        Response.Redirect("~/Default.aspx");
    }

    protected void MenuAdmin_MenuItemDataBound(object sender, MenuEventArgs e)
    {
        SiteMapNode node = (SiteMapNode)e.Item.DataItem;
        if (node["HideFromMenu"] == "true")
    
        {

            if (e.Item.Parent != null)


                e.Item.Parent.ChildItems.Remove(e.Item);

            MenuAdmin.Items.Remove(e.Item);



        }
    }

}
