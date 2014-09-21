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
                Ord u = new Ord();
                u = Ord.Fetch(Convert.ToInt32(Request.QueryString["id"].ToString()));


                
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
    protected void btnUpdate_Click(object sender, EventArgs e)
    {

    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {

    }
}