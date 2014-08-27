using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;


/// <summary>
/// Summary description for Jersey
/// </summary>
public class Jersey
{

    string Country= null;
    string Home_Away= null;
    string Price= null; 

	public SqlDataReader Add_Jersey()
	{
        string strSQL = "INSERT INTO Product (Country, Home_Away, Price) VALUES (@Country, @Home_Away, @Price)";

        SqlConnection conn = new SqlConnection();

        string strConn = @GetConnectionString();
        conn.ConnectionString = strConn;

        SqlCommand comm = new SqlCommand();
        comm.CommandText = strSQL;
        comm.Connection = conn;

        comm.Parameters.AddWithValue("@Country", Country);
        comm.Parameters.AddWithValue("@Home_Away", Home_Away);
        comm.Parameters.AddWithValue("@Price", Price);

        conn.Open();

        return comm.ExecuteReader();
	}

    public SqlDataReader FindOneJersey(int intJerseyID)
    {
        SqlConnection conn = new SqlConnection();

        SqlCommand comm = new SqlCommand();

        string strConn = @GetConnectionString();

        string sqlString = "Select * FROM Product Where Product_Num = @Product_Num;";

        conn.ConnectionString = strConn;

        comm.Connection = conn;

        comm.CommandText = sqlString;
        comm.Parameters.AddWithValue("@JerseyID", intJerseyID);

        conn.Open();

        return comm.ExecuteReader();

    }

    public SqlDataReader DeleteOneJersey(int intJerseyID)
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand comm = new SqlCommand();

        string strConn = @GetConnectionString();

        string sqlString = "DELETE FROM Product WHERE Product_Num = @Product_Num;";

        conn.ConnectionString = strConn;
        comm.Connection = conn;
        comm.CommandText = sqlString;
        comm.Parameters.AddWithValue("@JerseyID", intJerseyID);
        conn.Open();
        return comm.ExecuteReader();



    }

    public string GetConnectionString()
    {
        return "Server = sql.neit.edu Database = se265_jerseyshop; User Id = tedelman; Password = neit2014;";
    }
}