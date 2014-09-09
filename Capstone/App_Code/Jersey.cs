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

    private string userfname;
    private string userlname;
    private string useradd1;
    private string useradd2;
    private string usercity;
    private string userstate;
    private string userzip;
    private string username;
    private string userpassword;
    private string useremail;
    private string userphone;
    private string userrole;
    private string userisactive;
    public string feedback = "";

    public string UserFName
    {
        get { return userfname; }

        set
        {
            if (Validator.GotPoop(value) == true)
                feedback += "ERROR: Invalid movie name....contains Poop.\n";
            else if (Validator.IsItFilledIn(value) == false)
                feedback += "ERROR: Invalid movie name...must be at least one character.\n";
            else
                userfname = value;
        }
    }
    public string UserLName
    {
        get { return userlname; }
        set
        {
            if (Validator.GotPoop(value) == true)
                feedback += "ERROR: Invalid movie genre....contains Poop.\n";
            else if (Validator.IsItFilledIn(value) == false)
                feedback += "ERROR: Invalid movie genre...must be at least one character.\n";
            else
               userlname = value;
        }
    }
    public string UserAdd1
    {
        get { return useradd1; }
        set
        {
            if (Validator.GotPoop(value) == true)
                feedback += "ERROR: Invalid movie rating....contains Poop.\n";
            else if (Validator.IsItFilledIn(value) == false)
                feedback += "ERROR: Invalid movie rating...must be at least one character.\n";
            else
                useradd1 = value;
        }
    }
    public string UserAdd2
    {
        get { return useradd2; }
        set
        {
            
                useradd2 = value;
        }
    }
    public string UserCity
    {
        get { return usercity; }
        set
        {
            if (Validator.GotPoop(value) == true)
                feedback += "ERROR: Invalid time....contains Poop.\n";
            else if (Validator.IsItFilledIn(value) == false)
                feedback += "ERROR: time...must be at least one character.\n";
            else
                usercity = value;
        }
    }
    public string UserState
    {
        get { return userstate; }
        set
        {
            if (Validator.GotPoop(value) == true)
                feedback += "ERROR: Invalid description....contains Poop.\n";
            else if (Validator.IsItFilledIn(value) == false)
                feedback += "ERROR: Invalid description...must be at least one character.\n";
            else
                userstate = value;
        }
    }
    public string UserZip
    {
        get { return userzip; }
        set
        {
            if (Validator.GotPoop(value) == true)
                feedback += "ERROR: Invalid description....contains Poop.\n";
            else if (Validator.IsItFilledIn(value) == false)
                feedback += "ERROR: Invalid description...must be at least one character.\n";
            else
                userzip = value;
        }
    }
    public string UserName
    {
        get { return username; }
        set
        {
            if (Validator.GotPoop(value) == true)
                feedback += "ERROR: Invalid description....contains Poop.\n";
            else if (Validator.IsItFilledIn(value) == false)
                feedback += "ERROR: Invalid description...must be at least one character.\n";
            else
                username = value;
        }
    }
    public string UserPassword
    {
        get { return userpassword; }
        set
        {
            if (Validator.GotPoop(value) == true)
                feedback += "ERROR: Invalid description....contains Poop.\n";
            else if (Validator.IsItFilledIn(value) == false)
                feedback += "ERROR: Invalid description...must be at least one character.\n";
            else
                userpassword = value;
        }
    }
    public string UserEmail
    {
        get { return useremail; }
        set
        {
            if (Validator.GotPoop(value) == true)
                feedback += "ERROR: Invalid description....contains Poop.\n";
            else if (Validator.IsItFilledIn(value) == false)
                feedback += "ERROR: Invalid description...must be at least one character.\n";
            else
                useremail = value;
        }
    }
    public string UserPhone
    {
        get { return userphone; }
        set
        {
            if (Validator.GotPoop(value) == true)
                feedback += "ERROR: Invalid description....contains Poop.\n";
            else if (Validator.IsItFilledIn(value) == false)
                feedback += "ERROR: Invalid description...must be at least one character.\n";
            else
                userphone = value;
        }
    }
    public string UserRole
    {
        get { return userrole; }
        set
        {
            if (Validator.GotPoop(value) == true)
                feedback += "ERROR: Invalid description....contains Poop.\n";
            else if (Validator.IsItFilledIn(value) == false)
                feedback += "ERROR: Invalid description...must be at least one character.\n";
            else
                userrole = value;
        }
    }
    public string UserIsActive
    {
        get { return userisactive; }
        set
        {
            if (Validator.GotPoop(value) == true)
                feedback += "ERROR: Invalid description....contains Poop.\n";
            else if (Validator.IsItFilledIn(value) == false)
                feedback += "ERROR: Invalid description...must be at least one character.\n";
            else
                userisactive = value;
        }
    }
    public string AddUser()
    {

        string feedback="";

        string strSQL = "INSERT INTO Users (UserFname, UserLname, UserAdd1, UserAdd2, UserCity, UserState, UserZip, UserName, UserPassword, UserEmail, UserPhone) VALUES (@UserFname, @UserLname, @UserAdd1, @UserAdd2, @UserCity, @UserState, @UserZip, @UserName, @UserPassword, @UserEmail, @UserPhone  )";

        SqlConnection conn = new SqlConnection(); 

        string strConn = @GetConnectionString();
        conn.ConnectionString = strConn;

        SqlCommand comm = new SqlCommand(); 
        comm.CommandText = strSQL; 
        comm.Connection = conn; 

        comm.Parameters.AddWithValue("@UserFname", userfname);
        comm.Parameters.AddWithValue("@UserLname", userlname);
        comm.Parameters.AddWithValue("@UserAdd1", useradd1);
        comm.Parameters.AddWithValue("@UserAdd2", useradd2);
        comm.Parameters.AddWithValue("@UserCity", usercity);
        comm.Parameters.AddWithValue("@UserState", userstate );
        comm.Parameters.AddWithValue("@UserZip", userzip);
        comm.Parameters.AddWithValue("@UserName", username);
        comm.Parameters.AddWithValue("@UserPassword", userpassword);
        comm.Parameters.AddWithValue("@UserEmail", useremail);
        comm.Parameters.AddWithValue("@UserPhone", userphone);
        
        
            conn.Open(); 

            comm.ExecuteNonQuery();
            conn.Close();
            return feedback;

    }

    public DataSet Teams()
    {

        DataSet ds = new DataSet();
        


        SqlCommand comm = new SqlCommand();
        //creation of a new Sqlcommand

        String strSQL = "SELECT * FROM Teams WHERE 0=0";
        


        SqlConnection conn = new SqlConnection();
        //creates a new Sql connection called conn

        string strConn = @GetConnectionString();
        conn.ConnectionString = strConn;
        


        comm.Connection = conn;
       
        comm.CommandText = strSQL;
        
        SqlDataAdapter da = new SqlDataAdapter();
        //creation of the data adapter
        da.SelectCommand = comm;
        //a data adapter that tells the command that its a select command


        conn.Open();
        //opens the connection
        da.Fill(ds, "Teams");
        // fills the data set with persons
        conn.Close();
        //closes the connection


        return ds;
        //returns the data
    }
    public SqlDataReader FindOneJersey(int intCountryID)
    {

        SqlConnection conn = new SqlConnection();
        // creation of an oledb connection called conn

        SqlCommand comm = new SqlCommand();
        // creation of an oledb command called comm


        string strConn = @GetConnectionString();
        //connection string that specifies where the database is and how it needs to be accessed


        string sqlString = "SELECT * FROM Teams WHERE CountryID = @CountryID;";
        // a string that selects all data for the person that has the unique student id

        conn.ConnectionString = strConn;
        // tells the connection that this is how it needs to connect to the db

        comm.Connection = conn;
        // tells the connection what type of connection it is

        comm.CommandText = sqlString;
        // tells the command what query it needs to perform

        comm.Parameters.AddWithValue("@CountryID", intCountryID);
        //gives the query the parameters it needs to select the unique student

        conn.Open();
        //opens the connection

        return comm.ExecuteReader();
        // returns the data for use by the form that called for this information
    }

    public string GetConnectionString()
    {
        return "Server = sql.neit.edu; Database = se265_jerseyshop; User Id = tedelman; Password = neit2014;";
    }

}