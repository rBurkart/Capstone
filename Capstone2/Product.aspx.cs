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
                Products p = new Products();
                p = Products.Fetch(Convert.ToInt32(Request.QueryString["id"].ToString()));
                txtName.Text = p.ProductName;
                txtDescription.Text = p.ProductDesc;
                txtSKU.Text = p.ProductSKU;
                ddlTeam.Text = p.TeamID.ToString();
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
    protected void btnAddItem_Click(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(txtName.Text))
        {
            Products p = new Products();
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
            p.TeamID = Convert.ToInt32(ddlTeam.Text);
            p.ProductCost = Convert.ToDecimal(txtPrice.Text);
            p.ProductIsActive = Convert.ToBoolean(rblIsActive.SelectedValue.ToString());

            if (Products.Save(p))
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