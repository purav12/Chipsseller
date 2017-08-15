using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Phishing
/// </summary>
public class Phishing
{
    string str;
    DataTable dt;
    SqlDataAdapter adp;
    SqlCommand cmd;
    SqlConnection cn;

    public Phishing()
    {
        str = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
        cn = new SqlConnection(str);
    }

    public void cnopen()
    {
        cn.Open();
    }

    public void cnclose()
    {
        cn.Close();
    }


    int _Id;
    string _UserName;
    string _Password;
    string _Remarks;
    string _Trial;
    string _Active;
    int _P;

    public string Remarks
    {

        set { _Remarks = value; }
        get { return _Remarks; }
    }
    public string Trial
    {

        set { _Trial = value; }
        get { return _Trial; }
    }
    public int Id
    {
        set { _Id = value; }
        get { return _Id; }
    }
    public int P
    {
        set { _P = value; }
        get { return _P; }
    }
    public string UserName
    {

        set { _UserName = value; }
        get { return _UserName; }
    }
    public string Password
    {
        set { _Password = value; }
        get { return _Password; }
    }
    public string Active
    {
        set { _Active = value; }
        get { return _Active; }
    }


    public void INSERTPHISHING()
    {
        cmd = new SqlCommand("SP_PHISHING", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.Add("@Id", SqlDbType.Int).Value = this.Id;
        cmd.Parameters.Add("@UserName", SqlDbType.VarChar).Value = this.UserName;
        cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = this.Password;
        cmd.Parameters.Add("@Remarks", SqlDbType.VarChar).Value = this.Remarks;
        cmd.Parameters.Add("@Trial", SqlDbType.VarChar).Value = this.Trial;
        cmd.Parameters.Add("@Active", SqlDbType.VarChar).Value = this.Active;
        cmd.Parameters.Add("@P", SqlDbType.Int).Value = this.P;
        cmd.Parameters.Add("@mode", SqlDbType.Int).Value = 1;
        cmd.ExecuteNonQuery();
    }

    public void UPDATEPHISHING()
    {
        cmd = new SqlCommand("SP_PHISHING", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@Id", SqlDbType.Int).Value = this.Id;
        cmd.Parameters.Add("@UserName", SqlDbType.VarChar).Value = this.UserName;
        cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = this.Password;
        cmd.Parameters.Add("@Remarks", SqlDbType.VarChar).Value = this.Remarks;
        cmd.Parameters.Add("@Trial", SqlDbType.VarChar).Value = this.Trial;
        cmd.Parameters.Add("@Active", SqlDbType.VarChar).Value = this.Active;
        cmd.Parameters.Add("@P", SqlDbType.Int).Value = this.P;
        cmd.Parameters.Add("@mode", SqlDbType.Int).Value = 2;
        cmd.ExecuteNonQuery();
    }

    public void DELETEPHISHING()
    {
        cmd = new SqlCommand("SP_PHISHING", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@Id", SqlDbType.Int).Value = this.Id;
        cmd.Parameters.Add("@mode", SqlDbType.Int).Value = 3;
        cmd.ExecuteNonQuery();
    }

    public DataTable Getdata(string q)
    {
        DataTable dt = new DataTable();
        adp = new SqlDataAdapter(q, cn);
        adp.Fill(dt);
        return dt;
    }

} 