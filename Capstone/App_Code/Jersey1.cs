//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Data.SqlClient;
//using System.Data;

///// <summary>
///// Summary description for Jersey1
///// </summary>
//public class Jersey1
//{
	
	
//    private string productname;
//    private string productdesc;
//    private string productsku;
//    private string productcost;
//    private string picture;
//    public string feedback = "";
//    public Int32 ProductID = 0;

//    public string ProductName
//    {
//        get { return productname; }
//        set
//        {
//            if (Validator.GotPoop(value) == true)
//                feedback += "ERROR: Invalid description....contains Poop.\n";
//            else if (Validator.IsItFilledIn(value) == false)
//                feedback += "ERROR: Invalid description...must be at least one character.\n";
//            else
//                productname = value;
//        }
//    }
//    public string ProductDesc
//    {
//        get { return productdesc; }
//        set
//        {
//            if (Validator.GotPoop(value) == true)
//                feedback += "ERROR: Invalid description....contains Poop.\n";
//            else if (Validator.IsItFilledIn(value) == false)
//                feedback += "ERROR: Invalid description...must be at least one character.\n";
//            else
//                productdesc = value;
//        }
//    }
//    public string ProductSKU
//    {
//        get { return productsku; }
//        set
//        {
//            if (Validator.GotPoop(value) == true)
//                feedback += "ERROR: Invalid description....contains Poop.\n";
//            else if (Validator.IsItFilledIn(value) == false)
//                feedback += "ERROR: Invalid description...must be at least one character.\n";
//            else
//                productsku = value;
//        }
//    }
//    public string ProductCost
//    {
//        get { return productcost; }
//        set
//        {
//            if (Validator.GotPoop(value) == true)
//                feedback += "ERROR: Invalid description....contains Poop.\n";
//            else if (Validator.IsItFilledIn(value) == false)
//                feedback += "ERROR: Invalid description...must be at least one character.\n";
//            else
//                productcost = value;
//        }
//    }
//     public string Picture
//    {
//        get { return picture; }
//        set
//        {
            
//                picture = value;
//        }
//    }
//    public string AddProduct()
//    {

//        string feedback="";

//        string strSQL = "INSERT INTO Products (ProductName, ProductDesc, ProductSKU, ProductCost, Picture) VALUES (@ProductName, @ProductDesc, @ProductSKU, @ProductCost, @Picture)";

//        SqlConnection conn = new SqlConnection(); 

//        string strConn = @GetConnectionString();
//        conn.ConnectionString = strConn;

//        SqlCommand comm = new SqlCommand(); 
//        comm.CommandText = strSQL; 
//        comm.Connection = conn; 

//        comm.Parameters.AddWithValue("@ProductName", productname);
//        comm.Parameters.AddWithValue("@ProductDesc", ProductDesc );
//        comm.Parameters.AddWithValue("@ProductSKU", productsku);
//        comm.Parameters.AddWithValue("@ProductCost", productcost);
//        comm.Parameters.AddWithValue("@Picture", picture);
     
//            conn.Open(); 

//            comm.ExecuteNonQuery();
//            conn.Close();
//            return feedback;

//    }

//    public Int32 DeleteOneJersey(int intProductID)
//    {

//        Int32 intRecords = 0;

//        SqlConnection conn = new SqlConnection();
//        SqlCommand comm = new SqlCommand();

//        string strConn = @GetConnectionString();

//        string sqlString =
//            "DELETE FROM Products WHERE ProductID = @ProductID;";

//        conn.ConnectionString = strConn;

//        comm.Connection = conn;
//        comm.CommandText = sqlString;
//        comm.Parameters.AddWithValue("@ProductID", intProductID);

//        conn.Open();

//        intRecords = comm.ExecuteNonQuery();

//        conn.Close();

//        return intRecords;
//    }

//    public Int32 UpdateAJersey()
//    {
//        Int32 intRecords = 0;

//        string strSQL = "UPDATE Products Set ProductName = @ProductName, ProductDesc = @ProductDesc, ProductSKU = @ProductSKU, ProductCost = @ProductCost, Picture = @Picture WHERE ProductID = @ProductID;";

//        SqlConnection conn = new SqlConnection();
//        string strConn = @GetConnectionString();
//        conn.ConnectionString = strConn;

//        SqlCommand comm = new SqlCommand();
//        comm.CommandText = strSQL;
//        comm.Connection = conn;

//        comm.Parameters.AddWithValue("@ProductName", productname);
//        comm.Parameters.AddWithValue("@ProductDesc", productdesc);
//        comm.Parameters.AddWithValue("@ProductSKU", productsku);
//        comm.Parameters.AddWithValue("@ProductCost", productcost);
//        comm.Parameters.AddWithValue("@Picture", picture);
//        comm.Parameters.AddWithValue("@ProductID", ProductID);

       
//            conn.Open();

//            intRecords = comm.ExecuteNonQuery();
       
//            conn.Close();
        
//        return intRecords;
//    }
//    public string GetConnectionString()
//    {
//        return "Server = sql.neit.edu; Database = se265_jerseyshop; User Id = tedelman; Password = neit2014;";
//    }

//    public DataSet SearchJersey(String Jersey)
//    {
//        DataSet ds = new DataSet();

//        SqlCommand comm = new SqlCommand();

//        String strSQL = "SELECT ProductID, ProductName, ProductDesc, ProductSKU, ProductCost, Picture FROM Products WHERE 0=0";

//        if (Jersey.Length > 0)
//        {
//            strSQL += " AND ProductName LIKE @ProductName";
//            comm.Parameters.AddWithValue("@ProductName", "%" + Jersey + "%");
//        }

//        SqlConnection conn = new SqlConnection();
//        string strConn = @GetConnectionString();
//        conn.ConnectionString = strConn;

//        comm.Connection = conn;
//        comm.CommandText = strSQL;

//        SqlDataAdapter da = new SqlDataAdapter();
//        da.SelectCommand = comm;

//        conn.Open();
//        da.Fill(ds, "Products");
//        conn.Close();

//        return ds;
//    }

       
    
//}
