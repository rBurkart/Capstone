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
	public SqlDataReader Add_Jersey(int intJerseyID)
	{
        string strSQL = "INSERT INTO JERSEY () VALUES ()";

        SqlConnection conn = new SqlConnection();

        string strConn = "";
        conn.ConnectionString = strConn;

        SqlCommand comm = new SqlCommand();
        comm.CommandText = strSQL;
        comm.Connection = conn;

        comm.Parameters.AddWithValue("@JerseyID", intJerseyID);

        conn.Open();

        return comm.ExecuteReader();
	}

    public SqlDataReader FindOneJersey(int intJerseyID)
    {
        SqlConnection conn = new SqlConnection();

        SqlCommand comm = new SqlCommand();

        string strConn = "";

        string sqlString = "Select * From Jersey Where JerseyID = @JerseyID;";

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

        string strConn = "";

        string sqlString = "DELETE FROM Jersey Where JerseyID - @JerseyID;";

        conn.ConnectionString = strConn;
        comm.Connection = conn;
        comm.CommandText = sqlString;
        comm.Parameters.AddWithValue("@JerseyID", intJerseyID);
        conn.Open();
        return comm.ExecuteReader();



    }
}