using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        Jersey temp = new Jersey();

        DataSet ds = temp.SearchJersey(txtSearch.Text);


        gvJersey.DataSource = ds;
        gvJersey.DataMember = ds.Tables[0].TableName;
        gvJersey.DataBind();

    }
}
