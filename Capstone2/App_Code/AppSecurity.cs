using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;


/// <summary>
/// Summary description for AppSecurity
/// </summary>
/// 


public class AppSecurity
{

    #region Fields
    
    private int _UserId; 
    private string _UserEmail;
    private string _UserRole;
    
    //New field for handling login errors
    private string _ErrorLogin;

    #endregion 

    #region Properties
    
    public int UserId  
    {
        get { return _UserId; }
        set { _UserId = value; }
    }

    public string UserRole
    {
        get { return _UserRole; }
        set { _UserRole = value; }
    }

    public string UserEmail
    {
        get { return _UserEmail; }
        set { _UserEmail = value; }
    }

    public string ErrorLogin
    {
        get { return _ErrorLogin; }
        set { _ErrorLogin = value; }
    }



    #endregion
       
    #region Methods/Functions

    public static AppSecurity login(string username, string password)
    {
        
        DataTable dt = new DataTable();
        
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);

        SqlCommand cmd = new SqlCommand("spUserLogin", cn);
        
        // Mark the Command as a Stored Procedure
        cmd.CommandType = CommandType.StoredProcedure;

        // Add Parameters to Stored Procedure
        SqlParameter pUserName = new SqlParameter("@UserName", SqlDbType.VarChar, 30);
        pUserName.Value = username;
        cmd.Parameters.Add(pUserName);

        // Add Parameters to Stored Procedure
        //cmd.Parameters.AddWithValue(@password, password);

        SqlParameter parameterPassword = new SqlParameter("@UserPassword", SqlDbType.VarChar, 30);
        parameterPassword.Value = password;
        cmd.Parameters.Add(parameterPassword);

        // Open the database connection and execute the command
        try
        {
            cn.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            //process errors here
            ex.ToString();
        }
        finally
        {
            cn.Close();
        }

        // Return the object


        if (dt.Rows.Count > 0)
        {
            AppSecurity temp = new AppSecurity();

            temp.UserId = Convert.ToInt32(dt.Rows[0]["userId"].ToString());
            temp.UserEmail = dt.Rows[0]["userEmail"].ToString();
            temp.UserRole = dt.Rows[0]["userRole"].ToString();

            return temp;
        }

        else
        {
            AppSecurity temp = new AppSecurity();
            temp.ErrorLogin = "";


            //AppSecurity object returned
            return temp;

        }

        
    }

    #endregion 
    
    #region Constructors

    //public AppSecurity()
    //{
    //    //
    //    // TODO: Add constructor logic here
    //    //
    //}
    #endregion


       
}