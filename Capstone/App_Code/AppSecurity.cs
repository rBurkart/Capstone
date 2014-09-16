using System;
using System.Collections.Generic;
using System.Web;
using System.Collections;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


/// <summary>
/// Summary description for AppSecurity
/// </summary>
public class AppSecurity
{
    #region Fields
    private int _userID;
    private string _userEmail;
    private string _userRole;
    #endregion

    #region Properties
    public int UserID
    {
        get { return _userID; }
        set { _userID = value; }
    }

    public string UserEmail
    {
        get { return _userEmail; }
        set { _userEmail = value; }
    }

    public string UserRole
    {
        get { return _userRole; }
        set { _userRole = value; }
    }
    #endregion

    #region Methods/Functions
    public DataTable Login(string username, string password)
    {
        // set new connection string.
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["JERSEY_CS"].ConnectionString);

        SqlCommand cmd = new SqlCommand("spUserLogin", cn);
        DataTable dt = new DataTable();

        // Mark the Command as a Stored Procedure
        cmd.CommandType = CommandType.StoredProcedure;

        // Add Parameters to Stored Procedure
        SqlParameter pUserName = new SqlParameter("@userName", SqlDbType.VarChar, 30);
        pUserName.Value = username;
        cmd.Parameters.Add(pUserName);

        // Add Parameters to Stored Procedure
        cmd.Parameters.AddWithValue("@UserPassword", password);

        // Open the database connection and execute the command
        try
        {
            cn.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
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

        // Return the dataset
        return dt;
    }
    #endregion

    #region Constructor
    public AppSecurity()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    #endregion


}