using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;


/// <summary>
/// Summary description for Users
/// </summary>
public class Use
{



    #region Fields

    private int _userId;
    private string _userFname;
    private string _userLname;
    private string _userAdd1;
    private string _userAdd2;
    private string _userCity;
    private int _stateID;
    private string _userZip;
    private string _userName;
    private string _userPassword;
    private string _userEmail;
    private string _userPhone;
    private string _userRole;
    private bool _active;

    #endregion

    #region Properties

    public int UserId
    {
        get { return _userId; }
        set { _userId = value; }
    }


    public string UserFname
    {
        get { return _userFname; }
        set { _userFname = value; }
    }


    public string UserLname
    {
        get { return _userLname; }
        set { _userLname = value; }
    }


    public string UserAdd1
    {
        get { return _userAdd1; }
        set { _userAdd1 = value; }
    }


    public string UserAdd2
    {
        get { return _userAdd2; }
        set { _userAdd2 = value; }
    }


    public string UserCity
    {
        get { return _userCity; }
        set { _userCity = value; }
    }


    public int StateID
    {
        get { return _stateID; }
        set { _stateID = value; }
    }


    public string UserZip
    {
        get { return _userZip; }
        set { _userZip = value; }
    }


    public string UserName
    {
        get { return _userName; }
        set { _userName = value; }
    }


    public string UserPassword
    {
        get { return _userPassword; }
        set { _userPassword = value; }
    }


    public string UserEmail
    {
        get { return _userEmail; }
        set { _userEmail = value; }
    }


    public string UserPhone
    {
        get { return _userPhone; }
        set { _userPhone = value; }
    }


    public string UserRole
    {
        get { return _userRole; }
        set { _userRole = value; }
    }


    public bool Active
    {
        get { return _active; }
        set { _active = value; }
    }

    #endregion

    #region Methods/Functions

    public static Use Fetch(int id)
    {

        Use u = new Use();
        //connection object - ConfigurationManager namespace allows for runtime 
        //access to web.config setting, specifically connection strings and key values
        SqlConnection cn = new
            SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
        //command object is for direct interface with database
        //this constructor uses 2 arguments, first is name of stored procedure, 
        //2nd is connection object
        SqlCommand cmd = new SqlCommand("spGetUserByID", cn);
        //Create datatable to hold result set
        DataTable dt = new DataTable();
        // Mark the Command as a Stored Procedure
        //command type is an enumeration: Stored procedure, text(embedded SQL) or table direct
        cmd.CommandType = CommandType.StoredProcedure;

        // Add Parameters to Stored Procedure
        cmd.Parameters.Add("@UserID", SqlDbType.Int).Value = id;

        // Open the database connection and execute the command
        try
        {
            //opens connection to database, most failures happen here
            //check connection string for proper settings
            cn.Open();
            //data adapter object is trasport link between data source and 
            //data destination
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            //fill method, for multiple tables use dataset
            da.Fill(dt);
        }
        catch (Exception exc)
        {
            //just put here to make debugging easier, can look at error directly
            exc.ToString();
        }
        finally
        {
            //must always close connections
            cn.Close();
        }

        // Return the dataset
        if (dt.Rows.Count > 0)
        {
            u.UserId = Convert.ToInt32(dt.Rows[0]["UserID"].ToString());
            u.UserFname = dt.Rows[0]["UserFname"].ToString();
            u.UserLname = dt.Rows[0]["UserLname"].ToString();
            u.UserAdd1 = dt.Rows[0]["UserAdd1"].ToString();
            u.UserAdd2 = dt.Rows[0]["UserAdd2"].ToString();
            u.UserCity = dt.Rows[0]["UserCity"].ToString();
            u.StateID = Convert.ToInt32(dt.Rows[0]["StateID"].ToString());
            u.UserZip = dt.Rows[0]["UserZip"].ToString();
            u.UserName = dt.Rows[0]["UserName"].ToString();
            u.UserPassword = dt.Rows[0]["UserPassword"].ToString();
            u.UserEmail = dt.Rows[0]["UserEmail"].ToString();
            u.UserPhone = dt.Rows[0]["UserPhone"].ToString();
            u.UserRole = dt.Rows[0]["UserRole"].ToString();
            u.Active = Convert.ToBoolean(dt.Rows[0]["UserIsActive"].ToString());

        }
        return u;
    }



    public static DataTable Fetch()
    {
        DataTable dt = new DataTable();

        return dt;
    }

    public static bool Save(Use c)
    {
        bool b = false;

        //connection object - ConfigurationManager namespace allows for runtime 
        //access to web.config setting, specifically connection strings and key values
        SqlConnection cn = new
            SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
        //command object is for direct interface with database
        //this constructor uses 2 arguments, first is name of stored procedure, 
        //2nd is connection object
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        if (c.UserId > 0)
        {
            cmd.CommandText = "spUpdateUser";
            cmd.Parameters.Add("@UserID", SqlDbType.Int).Value = c.UserId;
        }
        else
        {
            cmd.CommandText = "spInsertUser";
        }

        //Create datatable to hold result set
        DataTable dt = new DataTable();
        // Mark the Command as a Stored Procedure
        //command type is an enumeration: Stored procedure, text(embedded SQL) or table direct
        cmd.CommandType = CommandType.StoredProcedure;

        // Add Parameters to Stored Procedure
        cmd.Parameters.Add("@UserFname", SqlDbType.VarChar).Value = c.UserFname;
        cmd.Parameters.Add("@UserLname", SqlDbType.VarChar).Value = c.UserLname;
        cmd.Parameters.Add("@UserAdd1", SqlDbType.VarChar).Value = c.UserAdd1;
        cmd.Parameters.Add("@UserAdd2", SqlDbType.VarChar).Value = c.UserAdd2;
        cmd.Parameters.Add("@UserCity", SqlDbType.VarChar).Value = c.UserCity;
        cmd.Parameters.Add("@StateID", SqlDbType.Int).Value = c.StateID;     //Dooble check this
        cmd.Parameters.Add("@UserZip", SqlDbType.VarChar).Value = c.UserZip;
        cmd.Parameters.Add("@UserName", SqlDbType.VarChar).Value = c.UserName;
        cmd.Parameters.Add("@UserPassword", SqlDbType.VarChar).Value = c.UserPassword;
        cmd.Parameters.Add("@UserEmail", SqlDbType.VarChar).Value = c.UserEmail;
        cmd.Parameters.Add("@UserPhone", SqlDbType.VarChar).Value = c.UserPhone;
        cmd.Parameters.Add("@UserRole", SqlDbType.VarChar).Value = c.UserRole;
        cmd.Parameters.Add("@UserIsActive", SqlDbType.Bit).Value = c.Active;

        // Open the database connection and execute the command
        try
        {
            //opens connection to database, most failures happen here
            //check connection string for proper settings
            cn.Open();
            //execute 
            cmd.ExecuteNonQuery();
            b = true;
        }
        catch (Exception exc)
        {
            //just put here to make debugging easier, can look at error directly
            exc.ToString();
            b = false;
        }
        finally
        {
            //must always close connections
            cn.Close();
        }

        // Return the dataset
        return b;
    }

    public static bool Delete(int id)
    {
        bool b = false;

        return b;
    }

    #endregion	

    #region Constructor
    public Use()
	{
		//
		// TODO: Add constructor logic here
		//
    }
    #endregion
}