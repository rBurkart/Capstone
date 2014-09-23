using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for Cat
/// </summary>
public class Cat
{
	
    #region Fields
        private int _id;
        private string _name;
        private bool _active;
    #endregion

    #region Properties

    public int ID
    {
        get { return _id; }
        set { _id = value; }
    }

    public string Name
    {
        get { return _name; }
        set { _name = value; }
    }

    public bool Active
    {
        get { return _active; }
        set { _active = value; }
    }
    #endregion

    #region Methods/Functions

    public static Cat Fetch(int id)
    {

        Cat c = new Cat();
        //connection object - ConfigurationManager namespace allows for runtime 
        //access to web.config setting, specifically connection strings and key values
        SqlConnection cn = new
            SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
        //command object is for direct interface with database
        //this constructor uses 2 arguments, first is name of stored procedure, 
        //2nd is connection object
        SqlCommand cmd = new SqlCommand("spGetTeamByID", cn);
        //Create datatable to hold result set
        DataTable dt = new DataTable();
        // Mark the Command as a Stored Procedure
        //command type is an enumeration: Stored procedure, text(embedded SQL) or table direct
        cmd.CommandType = CommandType.StoredProcedure;

        // Add Parameters to Stored Procedure
        cmd.Parameters.Add("@ID", SqlDbType.Int).Value = id;

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
            c.ID = Convert.ToInt32(dt.Rows[0]["TeamID"].ToString());
            c.Name = dt.Rows[0]["CountryName"].ToString();
            //c.Desc = dt.Rows[0]["CategoryDesc"].ToString();
            c.Active = Convert.ToBoolean(dt.Rows[0]["TeamIsActive"].ToString());
        }
        return c;
    }



    public static DataTable Fetch()
    {
        DataTable dt = new DataTable();

        return dt;
    }

    public static bool Save(Cat c)
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
        if (c.ID > 0)
        {
            cmd.CommandText = "spUpdateTeam";
            cmd.Parameters.Add("@TeamID", SqlDbType.Int).Value = c.ID;
        }
        else
        {
            cmd.CommandText = "spInsertTeam";
        }

        //Create datatable to hold result set
        DataTable dt = new DataTable();
        // Mark the Command as a Stored Procedure
        //command type is an enumeration: Stored procedure, text(embedded SQL) or table direct
        cmd.CommandType = CommandType.StoredProcedure;

        // Add Parameters to Stored Procedure
        cmd.Parameters.Add("@CountryName", SqlDbType.VarChar).Value = c.Name;
        cmd.Parameters.Add("@TeamIsActive", SqlDbType.Bit).Value = c.Active;

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

    #region constructor
        public Cat()
	    {
		    //
		    // TODO: Add constructor logic here
		    //
	    }
    #endregion

}