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
        lblProceed.Text = "";
        
    }

    protected void btnProceed_Click(object sender, EventArgs e)
    {
        lblProceed.Text = "Please wait... Processing...";
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Jerseys.aspx");
    }
    protected void cbBillingAdd_CheckedChanged(object sender, EventArgs e)
    {
        if (cbBillingAdd.Checked)
        {
            txtBillingAdd.Text = txtShippingAdd.Text;
        }
    }
}