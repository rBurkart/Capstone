using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["id"]))
            {
                Users c = new Users();
                c = Users.Fetch(Convert.ToInt32(Request.QueryString["id"].ToString()));
                
                txtFirstname.Text = c.UserFname;
                txtSecondname.Text = c.UserLname;
                txtAddress1.Text = c.UserAdd1;
                txtAddress2.Text = c.UserAdd2;
                txtCity.Text = c.UserCity;
                DdlState.SelectedIndex = c.StateID;   // Double check this
                txtZip.Text = c.UserZip;
                txtUsername.Text = c.UserName;
                txtPassword.Text = c.UserPassword;
                txtConfirmPass.Text = c.UserPassword;
                txtEmail.Text = c.UserEmail;
                txtConfirmEmail.Text = c.UserEmail;
                txtPhone.Text = c.UserPhone;
                rblIsActive.SelectedValue = c.Active.ToString();

            }
        }

        

    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx", true);
    }



    protected void btnAccept_Click(object sender, EventArgs e)
    {

        if (!string.IsNullOrEmpty(txtUsername.Text))
        {
            Users c = new Users();
            if (!string.IsNullOrEmpty(Request.QueryString["id"]))
            {
                c.UserId = Convert.ToInt32(Request.QueryString["id"].ToString());
            }
            else
            {
                c.UserId = 0;
            }

            c.UserFname = txtFirstname.Text;
            c.UserLname = txtSecondname.Text;
            c.UserAdd1 = txtAddress1.Text;
            c.UserAdd2 = txtAddress2.Text;
            c.UserCity = txtCity.Text;
            c.StateID = DdlState.SelectedIndex;   // Double check this
            c.UserZip = txtZip.Text;
            c.UserName = txtUsername.Text;
            c.UserPassword = txtPassword.Text;
            c.UserPassword = txtConfirmPass.Text;
            c.UserEmail = txtEmail.Text;
            c.UserEmail = txtConfirmEmail.Text;
            c.UserPhone = txtPhone.Text;
            c.Active = Convert.ToBoolean(rblIsActive.SelectedValue.ToString());

            if (Users.Save(c))
            {
                Response.Redirect("~/Users.aspx");
            }
            else
            {
                
                lblError.Text = "Error saving record.";
            }

        }


    }
}