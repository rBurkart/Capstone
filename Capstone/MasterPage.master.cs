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

        {
            if (Request.IsAuthenticated)
            {
                //this means we are logged in so hide the login button
                lbtnLogin.Visible = false;

                //since we are logged in we can provide the link to logout
                lbtnLogout.Visible = true;

                //generate a personalized text message to display on the site
                //Grab the cookie
                //if (!string.IsNullOrEmpty(Request.Cookies["FullName"].ToString()))
                //{
                //    HttpCookie cookie = Request.Cookies["FullName"];
                //    lblGreeting.Text = "Welcome " + cookie.Value.ToString();

                //    //enable menu when user is authenticated
                //}
                //Menu1.Enabled = true;
            }
            else
            {
                //Since we have not been authenticated, we have to provide
                //a link to log in with
                lbtnLogin.Visible = true;

                //hide logout button since user is not authenticated
                lbtnLogout.Visible = false;

                //generate a generic text message to display on the site
                lblGreeting.Text = "Welcome Stranger";

                //disable menu when user is not authenticated

                //Menu1.Enabled = false;
            }
        }
    }
    protected void lbtnLogin_Click(object sender, EventArgs e)
    {
        //when log in link is clicked, send them to the login page
        Response.Redirect("~/Login.aspx");
    }
    protected void lbtnLogout_Click(object sender, EventArgs e)
    {
        // Log User Off from Cookie Authentication System
        //(.NET built in security system)
        {
            FormsAuthentication.SignOut();

            //set username and role cookie to nothing
            Response.Cookies["FullName"].Value = null;
            Session["Role"] = null;
            //or expire the cookie
            //Response.Cookies["UserRole"].Expires = System.DateTime.Now.AddDays(-1);

            // Redirect user back to the Home Page
            Response.Redirect("~/Default.aspx");
        }
    }
}
