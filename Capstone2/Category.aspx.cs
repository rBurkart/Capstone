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
                Cat c = new Cat();
                c = Cat.Fetch(Convert.ToInt32(Request.QueryString["id"].ToString()));
                txtName.Text = c.Name;
                //txtDescription.Text = c.Desc;
                rblIsActive.SelectedValue = c.Active.ToString();
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
            Cat c = new Cat();
            if (!string.IsNullOrEmpty(Request.QueryString["id"]))
            {
                c.Id = Convert.ToInt32(Request.QueryString["id"].ToString());
            }
            else
            {
                c.Id = 0;
            }
            c.Name = txtName.Text;
            //c.Desc = txtDescription.Text;
            c.Active = Convert.ToBoolean(rblIsActive.SelectedValue.ToString());

            if (Cat.Save(c))
            {
                Response.Redirect("~/Categories.aspx");
            }
            else
            {
                lblError.Text = "Error saving record.";
            }

        }
    }
    
}