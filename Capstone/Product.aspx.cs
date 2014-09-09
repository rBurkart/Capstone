using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Products : System.Web.UI.Page
{
    //protected void Page_Load(object sender, EventArgs e)
    //{
    //    string movieID;
    //    if (Request.QueryString["id"] != null)
    //    {
    //        movieID = Request.QueryString["id"].ToString();
    //        int intMovieID = Convert.ToInt32(movieID);

    //        Jersey temp = new Jersey();
    //        // creates a new instance of the student

    //        SqlDataReader dr = temp.FindOneJersey(intProductID);
    //        // stores the instance in a data reader that has the unique id passed to it upon initialization


    //        while (dr.Read()) //loops through the record to display in the text fields
    //        {

    //            lblName.Text = dr["Mname"].ToString();
    //            lblGenre.Text = dr["Genre"].ToString();
    //            lblRating.Text = dr["Rating"].ToString();
    //            lblTime.Text = dr["Mtime"].ToString();
    //            lblDescription.Text = dr["Mdescription"].ToString();
    //            Image.ImageUrl = "~/images/Images/" + dr["Picture"].ToString();
    //            lblId.Text = dr["movie_id"].ToString();
    //            //the above code block puts appropriate data into its specified text field
    //        }
    //    }
    //    else
    //    {
    //        Response.Redirect("Default.aspx");
    //    }
        
    
}