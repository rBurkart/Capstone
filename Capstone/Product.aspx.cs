using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;



public partial class Products : System.Web.UI.Page
{

    
    protected void Page_Load(object sender, EventArgs e)
    {
        string ProductID;
        if (Request.QueryString["id"] != null)
        {
            ProductID = Request.QueryString["id"].ToString();
            int intProductID = Convert.ToInt32(ProductID);

            Jersey temp = new Jersey();
            // creates a new instance of the student

            SqlDataReader dr = temp.FindOneJersey(intProductID);
            // stores the instance in a data reader that has the unique id passed to it upon initialization


            while (dr.Read()) //loops through the record to display in the text fields
            {

                
                lblTeam.Text = dr["ProductName"].ToString();
                lblDesc.Text = dr["ProductDesc"].ToString();
                lblSKU.Text = dr["ProductSKU"].ToString();
                lblCost.Text = dr["ProductCost"].ToString();
                Image.ImageUrl = "~/images/" + dr["Picture"].ToString();
                lblId.Text = dr["ProductID"].ToString();
                //the above code block puts appropriate data into its specified text field
            }
        }
        else
        {
            Response.Redirect("User.aspx");
        }
    }   
    
}