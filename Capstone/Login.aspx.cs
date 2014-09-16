using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();

        string strConn = "Server = sql.neit.edu; Database = se265_jerseyshop; User Id = tedelman; Password = neit2014;";
        conn.ConnectionString = strConn;
        conn.Open();
        string checkUser = "select count(*) from Users where UserName='" + txtUserName.Text + "'";
        SqlCommand com = new SqlCommand(checkUser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();

        if (temp == 1)
        {
            conn.Open();
            string checkPasswordQuery = "select UserPassword from Users where UserPassword= '" + txtPassword.Text + "'";
            SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
            string UserPassword = passComm.ExecuteScalar().ToString().Replace(" ", "");
            if (UserPassword == txtPassword.Text)
            {
                Session["New"] = txtUserName.Text;
                Response.Write("Password is correct");
                Response.Redirect("Products.aspx");
                
            }

            else
            {
                Response.Write("Password is not valid");
            }

        }

        else
        {
            Response.Write("Password is not valid");
        }

    }
    protected void txtPassword_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnSignup_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}