using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for Ord
/// </summary>
public class Ord
{
    #region Fields
    private int _orderID;
    private int _userID;
    private int _statusID;
    private DateTime _orderDate;
    private string _orderAdd1;
    private string _orderAdd2;
    private string _orderCity;
    private int _stateID;
    private string _orderZip;
    private DateTime _orderLastUpdate;
    #endregion

    #region Properties
    public int OrderID
    {
        get { return _orderID; }
        set { _orderID = value; }
    }

    public int UserID
    {
        get { return _userID; }
        set { _userID = value; }
    }

    public int StatusID
    {
        get { return _statusID; }
        set { _statusID = value; }
    }

    public DateTime OrderDate
    {
        get { return _orderDate; }
        set { _orderDate = value; }
    }

    public string OrderAdd1
    {
        get { return _orderAdd1; }
        set { _orderAdd1 = value; }
    }

    public string OrderAdd2
    {
        get { return _orderAdd2; }
        set { _orderAdd2 = value; }
    }

    public string OrderCity
    {
        get { return _orderCity; }
        set { _orderCity = value; }
    }

    public int StateID
    {
        get { return _stateID; }
        set { _stateID = value; }
    }

    public string OrderZip
    {
        get { return _orderZip; }
        set { _orderZip = value; }
    }

    public DateTime OrderLastUpdate
    {
        get { return _orderLastUpdate; }
        set { _orderLastUpdate = value; }
    }
    #endregion

    #region Methods/Functions
    public static Ord Fetch(int id)
    {

        Ord o = new Ord();
        //connection object - ConfigurationManager namespace allows for runtime 
        //access to web.config setting, specifically connection strings and key values
        SqlConnection cn = new
            SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
        //command object is for direct interface with database
        //this constructor uses 2 arguments, first is name of stored procedure, 
        //2nd is connection object
        SqlCommand cmd = new SqlCommand("spGetOrderByID", cn);
        //Create datatable to hold result set
        DataTable dt = new DataTable();
        // Mark the Command as a Stored Procedure
        //command type is an enumeration: Stored procedure, text(embedded SQL) or table direct
        cmd.CommandType = CommandType.StoredProcedure;

        // Add Parameters to Stored Procedure
        cmd.Parameters.Add("@OrderID", SqlDbType.Int).Value = id;

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
            o.OrderID = Convert.ToInt32(dt.Rows[0]["OrderID"].ToString());
            o.UserID = Convert.ToInt32(dt.Rows[0]["UserID"].ToString());
            o.StatusID = Convert.ToInt32(dt.Rows[0]["StatusID"].ToString());
            o.OrderDate = Convert.ToDateTime(dt.Rows[0]["OrderDate"].ToString());
            o.OrderAdd1 = dt.Rows[0]["OrderAdd1"].ToString();
            o.OrderAdd2 = dt.Rows[0]["OrderAdd2"].ToString();
            o.OrderCity = dt.Rows[0]["OrderCity"].ToString();
            o.StateID = Convert.ToInt32(dt.Rows[0]["StateID"].ToString());
            o.OrderZip = dt.Rows[0]["OrderZip"].ToString();
            o.OrderLastUpdate = Convert.ToDateTime(dt.Rows[0]["OrderLastUpdate"].ToString());
            
        }
        return o;
    }



    public static DataTable Fetch()
    {
        DataTable dt = new DataTable();

        return dt;
    }

    public static bool Save(Ord o)
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
        if (o.OrderID > 0)
        {
            cmd.CommandText = "spUpdateOrder";
            cmd.Parameters.Add("@OrderID", SqlDbType.Int).Value = o.OrderID;
        }
        else
        {
            cmd.CommandText = "spInsertOrder";
        }

        //Create datatable to hold result set
        DataTable dt = new DataTable();
        // Mark the Command as a Stored Procedure
        //command type is an enumeration: Stored procedure, text(embedded SQL) or table direct
        cmd.CommandType = CommandType.StoredProcedure;

        // Add Parameters to Stored Procedure
        cmd.Parameters.Add("@UserID", SqlDbType.Int).Value = o.UserID;
        cmd.Parameters.Add("@StatusID", SqlDbType.Int).Value = o.StatusID;
        cmd.Parameters.Add("@OrderDate", SqlDbType.Date).Value = o.OrderDate;
        cmd.Parameters.Add("@OrderAdd1", SqlDbType.VarChar).Value = o.OrderAdd1;
        cmd.Parameters.Add("@OrderAdd2", SqlDbType.VarChar).Value = o.OrderAdd2;
        cmd.Parameters.Add("@OrderCity", SqlDbType.VarChar).Value = o.OrderCity;
        cmd.Parameters.Add("@StateID", SqlDbType.Int).Value = o.StateID;
        cmd.Parameters.Add("@OrderZip", SqlDbType.VarChar).Value = o.OrderZip;
        cmd.Parameters.Add("@OrderLastUpdate", SqlDbType.Date).Value = o.OrderLastUpdate;

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
    public Ord()
	{
		//
		// TODO: Add constructor logic here
		//
    }
    #endregion
}