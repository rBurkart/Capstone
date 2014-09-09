using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;


public partial class Product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Jersey temp = new Jersey();

        DataSet ds = temp.Teams();
        foreach (DataTable table in ds.Tables)
        {
            int i = 1;
            foreach (DataRow dr in table.Rows)
            {
                HyperLink hp = new HyperLink();
                hp.Text = Convert.ToString(i) + " " + dr["CountryName"].ToString();
                string hp2 = dr["CountryID"].ToString();
                hp.NavigateUrl = "~/Product.aspx?id=" + hp2;
                Controls.Add(hp);
                i++;
                
            }
        }
    }

    
    protected void btnImgOn_Click(object sender, ImageClickEventArgs e)
    {
        
    }



}