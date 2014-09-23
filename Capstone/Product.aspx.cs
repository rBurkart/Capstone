using System;
using System.Collections.Generic;
using System.Linq;
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
                Pro p = new Pro();
                p = Pro.Fetch(Convert.ToInt32(Request.QueryString["id"].ToString()));
                txtName.Text = p.ProductName;
                txtDescription.Text = p.ProductDesc;
                txtSKU.Text = p.ProductSKU;
                ddlTeam.SelectedIndex = p.TeamID;
                txtPrice.Text = p.ProductCost.ToString();
                rblIsActive.SelectedValue = p.ProductIsActive.ToString();
            }
        }
        lblError.Visible = false;
        
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx", true);
    }

   
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(txtName.Text))
        {
            Pro p = new Pro();
            if (!string.IsNullOrEmpty(Request.QueryString["id"]))
            {
                p.ProductID = Convert.ToInt32(Request.QueryString["id"].ToString());
            }
            else
            {
                p.ProductID = 0;
            }
            p.ProductName = txtName.Text;
            p.ProductDesc = txtDescription.Text;
            p.ProductSKU = txtSKU.Text;
            p.TeamID = ddlTeam.SelectedIndex;
            p.ProductCost = Convert.ToDecimal(txtPrice.Text);
            p.ProductIsActive = Convert.ToBoolean(rblIsActive.SelectedValue.ToString());

            if (Pro.Save(p))
            {
                Response.Redirect("~/Products.aspx");
            }
            else
            {
                lblError.Text = "Error saving record.";
            }

        }
    }
}