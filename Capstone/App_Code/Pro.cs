using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for Products
/// </summary>
public class Pro
{
	

    #region Fields
        private int _productID;
        private int _teamID;
        private string _productName;
        private string _productDesc;
        private string _productSKU;
        private decimal _productCost;
        private bool _productIsActive;
    #endregion

    #region Properties
        public int ProductID
        {
            get { return _productID; }
            set { _productID = value; }
        }

        public int TeamID
        {
            get { return _teamID; }
            set { _teamID = value; }
        }

        public string ProductName
        {
            get { return _productName; }
            set { _productName = value; }
        }

        public string ProductDesc
        {
            get { return _productDesc; }
            set { _productDesc = value; }
        }

        public string ProductSKU
        {
            get { return _productSKU; }
            set { _productSKU = value; }
        }

        public decimal ProductCost
        {
            get { return _productCost; }
            set { _productCost = value; }
        }

        public bool ProductIsActive
        {
            get { return _productIsActive; }
            set { _productIsActive = value; }
        }
    #endregion

    #region Methods/Functions
        public static Pro Fetch(int id)
        {
            Pro p = new Pro();

            SqlConnection cn = new 
                SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);

            SqlCommand cmd = new SqlCommand("spGetProductByID", cn);

            DataTable dt = new DataTable();

            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@ProductID", SqlDbType.Int).Value = id;

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
                p.ProductID = Convert.ToInt32(dt.Rows[0]["ProductID"].ToString());
                p.TeamID = Convert.ToInt32(dt.Rows[0]["TeamID"].ToString());
                p.ProductName = dt.Rows[0]["ProductName"].ToString();
                p.ProductDesc = dt.Rows[0]["ProductDesc"].ToString();
                p.ProductSKU = dt.Rows[0]["ProductSKU"].ToString();
                p.ProductCost = Convert.ToDecimal(dt.Rows[0]["ProductCost"].ToString());
                p.ProductIsActive = Convert.ToBoolean(dt.Rows[0]["ProductIsActive"].ToString());
            }
            return p;
        }

    public static DataTable Fetch()
    {
        DataTable dt = new DataTable();

        return dt;
    }

    public static bool Save(Pro p)
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
        if (p.ProductID > 0)
        {
            cmd.CommandText = "spUpdateProduct";
            cmd.Parameters.Add("@ProductID", SqlDbType.Int).Value = p.ProductID;
        }
        else
        {
            cmd.CommandText = "spInsertProduct";
        }
        //Create datatable to hold result set
        DataTable dt = new DataTable();
        // Mark the Command as a Stored Procedure
        //command type is an enumeration: Stored procedure, text(embedded SQL) or table direct
        cmd.CommandType = CommandType.StoredProcedure;

        // Add Parameters to Stored Procedure
        cmd.Parameters.Add("@TeamID", SqlDbType.VarChar).Value = p.TeamID;
        cmd.Parameters.Add("@ProductName", SqlDbType.VarChar).Value = p.ProductName;
        cmd.Parameters.Add("@ProductDesc", SqlDbType.VarChar).Value = p.ProductDesc;
        cmd.Parameters.Add("@ProductSKU", SqlDbType.VarChar).Value = p.ProductSKU;
        cmd.Parameters.Add("@ProductCost", SqlDbType.Decimal).Value = p.ProductCost;
        cmd.Parameters.Add("@ProductIsActive", SqlDbType.Bit).Value = p.ProductIsActive;

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
        public Pro()
	    {
		    //
		    // TODO: Add constructor logic here
		    //
        }
    #endregion

}