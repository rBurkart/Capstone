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


                txtUserID.Text = u.UserID.ToString();
                txtStatusID.Text = u.StatusID.ToString();
                txtOrderDate.Text = u.OrderDate.ToString();
                txtOrderAddress1.Text = u.OrderAdd1;
                txtOrderAddress2.Text = u.OrderAdd2;
                txtOrderCity.Text = u.OrderCity;
                txtStateID.Text = u.StatusID.ToString();
                txtOrderZip.Text = u.OrderZip;
                txtOrderLastUpdate.Text = u.OrderLastUpdate.ToString();

                }
        }

        lblError.Visible = false;
    }



    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(txtUserID.Text))
        {
            Ord o = new Ord();
            if (!string.IsNullOrEmpty(Request.QueryString["id"]))
            {
                o.OrderID = Convert.ToInt32(Request.QueryString["id"].ToString());
            }
            else
            {
                o.OrderID = 0;
            }
            o.UserID = Convert.ToInt32(txtUserID.Text);
            o.StatusID = Convert.ToInt32(txtStatusID.Text);
            o.OrderDate = Convert.ToDateTime(txtOrderDate.Text);
            o.OrderAdd1 = txtOrderAddress1.Text;
            o.OrderAdd2 = txtOrderAddress2.Text;
            o.OrderCity = txtOrderCity.Text;
            o.StateID = Convert.ToInt32(txtStateID.Text);
            o.OrderZip = txtOrderZip.Text;
            o.OrderLastUpdate = Convert.ToDateTime(txtOrderLastUpdate.Text);

            
            if (Ord.Save(o))
            {
                Response.Redirect("~/Orders.aspx");
            }
            else
            {
                lblError.Text = "Error saving record.";
            }

        }
    }







    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx", true);
    }
}