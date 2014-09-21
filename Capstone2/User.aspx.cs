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
                Use u = new Use();
                u = Use.Fetch(Convert.ToInt32(Request.QueryString["id"].ToString()));
                
                txtFirstname.Text = u.UserFname;
                txtSecondname.Text = u.UserLname;
                txtAddress1.Text = u.UserAdd1;
                txtAddress2.Text = u.UserAdd2;
                txtCity.Text = u.UserCity;
                DdlState.SelectedIndex = u.StateID;   // Double check this
                txtZip.Text = u.UserZip;
                txtUsername.Text = u.UserName;
                txtPassword.Text = u.UserPassword;
                txtConfirmPass.Text = u.UserPassword;
                txtEmail.Text = u.UserEmail;
                txtConfirmEmail.Text = u.UserEmail;
                txtPhone.Text = u.UserPhone;
                rblIsActive.SelectedValue = u.Active.ToString();
                

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
            Use u = new Use();
            if (!string.IsNullOrEmpty(Request.QueryString["id"]))
            {
                u.UserId = Convert.ToInt32(Request.QueryString["id"].ToString());
            }
            else
            {
                u.UserId = 0;
            }

            u.UserFname = txtFirstname.Text;
            u.UserLname = txtSecondname.Text;
            u.UserAdd1 = txtAddress1.Text;
            u.UserAdd2 = txtAddress2.Text;
            u.UserCity = txtCity.Text;
            u.StateID = DdlState.SelectedIndex;   // Double check this
            u.UserZip = txtZip.Text;
            u.UserName = txtUsername.Text;
            u.UserPassword = txtPassword.Text;
            u.UserPassword = txtConfirmPass.Text;
            u.UserEmail = txtEmail.Text;
            u.UserEmail = txtConfirmEmail.Text;
            u.UserPhone = txtPhone.Text;
            u.UserRole = "User";
            u.Active = Convert.ToBoolean(rblIsActive.SelectedValue.ToString());

            if (Use.Save(u))
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