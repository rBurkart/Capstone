using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMessage.Visible = false;
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx", true);
    }


    protected void btnLogin_Click(object sender, EventArgs e)
    {

        //Activate the message if login is failed
        lblMessage.Visible = true;
        
        AppSecurity temp =  new AppSecurity();

        temp = AppSecurity.login(txtUsername.Text, txtPassword.Text);

        if (!string.IsNullOrEmpty(txtUsername.Text) & !string.IsNullOrEmpty(txtPassword.Text))
            {

                //set string value to class function that returns string
                temp = AppSecurity.login(txtUsername.Text.Trim(), txtPassword.Text.Trim());
            }

            else
            {
                lblMessage.Text = temp.ErrorLogin.ToString();
                return;
            }

        if (temp.UserId > 0)
        {

            // Use .NET built in security system to set the UserID 
            //within a client-side Cookie
            FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(temp.UserId.ToString(), false, 480);

            //For security reasons we may hash the cookies
            string encrytpedTicket = FormsAuthentication.Encrypt(ticket);

            HttpCookie cookie = new HttpCookie(FormsAuthentication.FormsCookieName, encrytpedTicket);
            Response.Cookies.Add(cookie);

            //set the username to a client side cookie for future reference
            HttpCookie MyCookie = new HttpCookie("UserEmail");
            DateTime now = DateTime.Now;

            MyCookie.Value = temp.UserEmail.ToString();
            MyCookie.Expires = now.AddDays(1);
            Response.Cookies.Add(MyCookie);

            //set the userrole to a session variable for future reference
            Session["Role"] = temp.UserRole.ToString();

            // Redirect browser back to home page
            Response.Redirect("~/Default.aspx");
        }
        else
        {
            //or else display the failed login message
            lblMessage.Text = "Login Failed!";
        }
    }
    protected void lbtnForgotPass_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ForgotPassword.aspx");
    }
}