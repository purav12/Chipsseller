using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

/// <summary>
/// Summary description for User
/// </summary>
public class User
{
    string str;
    DataTable dt;
    SqlDataAdapter adp;
    SqlCommand cmd;
    SqlConnection cn;

    public User()
    {
        str = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
        cn = new SqlConnection(str);
    }

    public SqlConnection Getconnectionstring()
    {
        str = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
        cn = new SqlConnection(str);
        cn.Open();
        return cn;
    }

    public void cnopen()
    {
        if(cn.State != ConnectionState.Open)
        cn.Open();
    }

    public void cnclose()
    {
        cn.Close();
    }



    int _Id;
    string _UserName;
    string _Password;
    DateTime _CreateDate;
    string _Type;
    string _Phone_Number;
    string _City;
    string _EmailAdress;
    string _PasswordEmail;
    string _PasswordFb;
    string _Active;
    int _P;
    string _Name;
    string _Subject;
    string _Status;
    string _Details;
    DateTime _PostedDate;
    string _Email;
    string _Mobile_Number;
    string _Facebook_Id;
    string _Refrence;
    string _Customer_Name;
    string _Stock;
    string _Amount;
    string _OldBalance;
    string _Proft_Loss;
    string _EmailAddress;
    string _Limit;
    string _Quentity;
    string _Message;
    string _Remarks;
    string _Image_Url;
    //Rate
    int _Rate_Id;
    int _TableNumber;
    string _SpecialPin;
    string _RealName;
    int _TableId;
    string _Rates;
    string _TagLine;


    public int Rate_Id
    {
        set { _Rate_Id = value; }
        get { return _Rate_Id; }
    }

    public int TableNumber
    {
        set { _TableNumber = value; }
        get { return _TableNumber; }
    }

    public int TableId
    {
        set { _TableId = value; }
        get { return _TableId; }
    }

    public string RealName
    {

        set { _RealName = value; }
        get { return _RealName; }
    }

    public string Rates
    {

        set { _Rates = value; }
        get { return _Rates; }
    }

    public string SpecialPin
    {

        set { _SpecialPin = value; }
        get { return _SpecialPin; }
    }

    public string TagLine
    {

        set { _TagLine = value; }
        get { return _TagLine; }
    }


    public string Message
    {
        set { _Message = value; }
        get { return _Message; }
    }

    public string Status
    {
        set { _Status = value; }
        get { return _Status; }
    }

    public string Email
    {
        set { _Email = value; }
        get { return _Email; }
    }


    public string Image_Url
    {
        set { _Image_Url = value; }
        get { return _Image_Url; }
    }


    public string Mobile_Number
    {
        set { _Mobile_Number = value; }
        get { return _Mobile_Number; }
    }

    public string Facebook_Id
    {

        set { _Facebook_Id = value; }
        get { return _Facebook_Id; }
    }
    public string Refrence
    {

        set { _Refrence = value; }
        get { return _Refrence; }
    }
    public string Customer_Name
    {

        set { _Customer_Name = value; }
        get { return _Customer_Name; }
    }
    public string Stock
    {

        set { _Stock = value; }
        get { return _Stock; }
    }
    public string Amount
    {

        set { _Amount = value; }
        get { return _Amount; }
    }

    public string OldBalance
    {

        set { _OldBalance = value; }
        get { return _OldBalance; }
    }

    
    public string Proft_Loss
    {

        set { _Proft_Loss = value; }
        get { return _Proft_Loss; }
    }
    public string EmailAddress
    {

        set { _EmailAddress = value; }
        get { return _EmailAddress; }
    }

    public string Limit
    {

        set { _Limit = value; }
        get { return _Limit; }
    }



    public string Remarks
    {

        set { _Remarks = value; }
        get { return _Remarks; }
    }


    public string Quentity
    {

        set { _Quentity = value; }
        get { return _Quentity; }
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

    public string Type
    {
        set { _Type = value; }
        get { return _Type; }
    }

    public DateTime CreateDate
    {
        set { _CreateDate = value; }
        get { return _CreateDate; }
    }

    public string Phone_Number
    {
        set { _Phone_Number = value; }
        get { return _Phone_Number; }
    }

    public string City
    {
        set { _City = value; }
        get { return _City; }
    }

    public string EmailAdress
    {
        set { _EmailAdress = value; }
        get { return _EmailAdress; }
    }

    public string PasswordEmail
    {
        set { _PasswordEmail = value; }
        get { return _PasswordEmail; }
    }

    public string PasswordFb
    {
        set { _PasswordFb = value; }
        get { return _PasswordFb; }
    }

    public string Active
    {
        set { _Active = value; }
        get { return _Active; }
    }

    public string Name
    {

        set { _Name = value; }
        get { return _Name; }
    }
    public string Subject
    {

        set { _Subject = value; }
        get { return _Subject; }
    }
    public string Details
    {

        set { _Details = value; }
        get { return _Details; }
    }
    public DateTime PostedDate
    {

        set { _PostedDate = value; }
        get { return _PostedDate; }
    }


    public void INSERTRate()
    {
        cmd = new SqlCommand("SP_Rate", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.Add("@Rate_Id", SqlDbType.Int).Value = this.Rate_Id;
        cmd.Parameters.Add("@Customer_Name", SqlDbType.VarChar).Value = this.Customer_Name;
        cmd.Parameters.Add("@TableNumber", SqlDbType.Int).Value = this.TableNumber;
        cmd.Parameters.Add("@SpecialPin", SqlDbType.VarChar).Value = this.SpecialPin;
        cmd.Parameters.Add("@Remarks", SqlDbType.VarChar).Value = this.Remarks;
        cmd.Parameters.Add("@RealName", SqlDbType.VarChar).Value = this.RealName;
        cmd.Parameters.Add("@mode", SqlDbType.Int).Value = 1;
        cmd.ExecuteNonQuery();
    }

    public void UPDATERate()
    {
        cmd = new SqlCommand("SP_Rate", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@Rate_Id", SqlDbType.Int).Value = this.Rate_Id;
        cmd.Parameters.Add("@Customer_Name", SqlDbType.VarChar).Value = this.Customer_Name;
        cmd.Parameters.Add("@TableNumber", SqlDbType.Int).Value = this.TableNumber;
        cmd.Parameters.Add("@SpecialPin", SqlDbType.VarChar).Value = this.SpecialPin;
        cmd.Parameters.Add("@Remarks", SqlDbType.VarChar).Value = this.Remarks;
        cmd.Parameters.Add("@RealName", SqlDbType.VarChar).Value = this.RealName;
        cmd.Parameters.Add("@mode", SqlDbType.Int).Value = 2;
        cmd.ExecuteNonQuery();
    }

    public void DELETERate()
    {
        cmd = new SqlCommand("SP_Rate", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@Rate_Id", SqlDbType.Int).Value = this.Rate_Id;
        //cmd.Parameters.Add("@Customer_Name", SqlDbType.VarChar).Value = this.Customer_Name;
        //cmd.Parameters.Add("@TableNumber", SqlDbType.Int).Value = this.TableNumber;
        //cmd.Parameters.Add("@SpecialPin", SqlDbType.VarChar).Value = this.SpecialPin;
        //cmd.Parameters.Add("@Remarks", SqlDbType.VarChar).Value = this.Remarks;
        //cmd.Parameters.Add("@RealName", SqlDbType.VarChar).Value = this.RealName;
        cmd.Parameters.Add("@mode", SqlDbType.Int).Value = 3;
        cmd.ExecuteNonQuery();
    }

    public void INSERTRateController()
    {
        cmd = new SqlCommand("SP_RateController", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.Add("@Id", SqlDbType.Int).Value = this.Id;
        cmd.Parameters.Add("@TableId", SqlDbType.Int).Value = this.TableId;
        cmd.Parameters.Add("@Rates", SqlDbType.VarChar).Value = this.Rates;
        cmd.Parameters.Add("@TagLine", SqlDbType.VarChar).Value = this.TagLine;
        cmd.Parameters.Add("@Remarks", SqlDbType.VarChar).Value = this.Remarks;
        cmd.Parameters.Add("@mode", SqlDbType.Int).Value = 1;
        cmd.ExecuteNonQuery();
    }

    public void UPDATERateController()
    {
        cmd = new SqlCommand("SP_RateController", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@Id", SqlDbType.Int).Value = this.Id;
        cmd.Parameters.Add("@TableId", SqlDbType.Int).Value = this.TableId;
        cmd.Parameters.Add("@Rates", SqlDbType.VarChar).Value = this.Rates;
        cmd.Parameters.Add("@TagLine", SqlDbType.VarChar).Value = this.TagLine;
        cmd.Parameters.Add("@Remarks", SqlDbType.VarChar).Value = this.Remarks;
        cmd.Parameters.Add("@mode", SqlDbType.Int).Value = 2;
        cmd.ExecuteNonQuery();
    }

    public void DELETERateController()
    {
        cmd = new SqlCommand("SP_RateController", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@Id", SqlDbType.Int).Value = this.Id;
        //cmd.Parameters.Add("@TableId", SqlDbType.Int).Value = this.TableId;
        //cmd.Parameters.Add("@Rates", SqlDbType.VarChar).Value = this.Rates;
        //cmd.Parameters.Add("@TagLine", SqlDbType.VarChar).Value = this.TagLine;
        //cmd.Parameters.Add("@Remarks", SqlDbType.VarChar).Value = this.Remarks;
        //cmd.Parameters.Add("@mode", SqlDbType.Int).Value = 3;
        cmd.ExecuteNonQuery();
    }

    public void INSERT_Comment()
    {
        cmd = new SqlCommand("SP_ContactUs", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.Add("@Id", SqlDbType.Int).Value = this.Id;
        cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = this.Name;
        cmd.Parameters.Add("@Subject", SqlDbType.VarChar).Value = this.Subject;
        cmd.Parameters.Add("@Details", SqlDbType.VarChar).Value = this.Details;
        cmd.Parameters.Add("@PostedDate", SqlDbType.DateTime).Value = this.PostedDate;
        cmd.Parameters.Add("@Active", SqlDbType.VarChar).Value = this.Active;
        cmd.Parameters.Add("@P", SqlDbType.Int).Value = this.P;
        cmd.Parameters.Add("@mode", SqlDbType.Int).Value = 1;
        cmd.ExecuteNonQuery();
    }

    public void Update_Comment()
    {
        cmd = new SqlCommand("SP_ContactUs", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@Id", SqlDbType.Int).Value = this.Id;
        cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = this.Name;
        cmd.Parameters.Add("@Subject", SqlDbType.VarChar).Value = this.Subject;
        cmd.Parameters.Add("@Details", SqlDbType.VarChar).Value = this.Details;
        cmd.Parameters.Add("@PostedDate", SqlDbType.DateTime).Value = this.PostedDate;
        cmd.Parameters.Add("@Active", SqlDbType.VarChar).Value = this.Active;
        cmd.Parameters.Add("@P", SqlDbType.Int).Value = this.P;
        cmd.Parameters.Add("@mode", SqlDbType.Int).Value = 2;
        cmd.ExecuteNonQuery();
    }

    public void Delete_Comment()
    {
        cmd = new SqlCommand("SP_ContactUs", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@Id", SqlDbType.Int).Value = this.Id;
        //cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = this.Name;
        //cmd.Parameters.Add("@Subject", SqlDbType.VarChar).Value = this.Subject;
        //cmd.Parameters.Add("@Details", SqlDbType.VarChar).Value = this.Details;
        //cmd.Parameters.Add("@PostedDate", SqlDbType.DateTime).Value = this.PostedDate;
        //cmd.Parameters.Add("@Active", SqlDbType.VarChar).Value = this.Active;
        //cmd.Parameters.Add("@P", SqlDbType.Int).Value = this.P;
        cmd.Parameters.Add("@mode", SqlDbType.Int).Value = 3;
        cmd.ExecuteNonQuery();
    }

    public void INSERT()
    {
        cmd = new SqlCommand("SP_User", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.Add("@Id", SqlDbType.Int).Value = this.Id;
        cmd.Parameters.Add("@UserName", SqlDbType.VarChar).Value = this.UserName;
        cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = this.Password;
        cmd.Parameters.Add("@Remarks", SqlDbType.VarChar).Value = this.Remarks;
        cmd.Parameters.Add("@Type", SqlDbType.VarChar).Value = this.Type;
        cmd.Parameters.Add("@CreateDate", SqlDbType.DateTime).Value = this.CreateDate;
        cmd.Parameters.Add("@Image_Url", SqlDbType.VarChar).Value = this.Image_Url;
        cmd.Parameters.Add("@Phone_Number", SqlDbType.VarChar).Value = this.Phone_Number;
        cmd.Parameters.Add("@City", SqlDbType.VarChar).Value = this.City;
        cmd.Parameters.Add("@Active", SqlDbType.VarChar).Value = this.Active;
        cmd.Parameters.Add("@P", SqlDbType.Int).Value = this.P;
        cmd.Parameters.Add("@EmailAdress", SqlDbType.VarChar).Value = this.EmailAdress;
        cmd.Parameters.Add("@mode", SqlDbType.Int).Value = 1;
        cmd.ExecuteNonQuery();
    }

    public void UPDATE()
    {
        cmd = new SqlCommand("SP_User", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@Id", SqlDbType.Int).Value = this.Id;
        cmd.Parameters.Add("@UserName", SqlDbType.VarChar).Value = this.UserName;
        cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = this.Password;
        cmd.Parameters.Add("@Remarks", SqlDbType.VarChar).Value = this.Remarks;
        cmd.Parameters.Add("@Type", SqlDbType.VarChar).Value = this.Type;
        cmd.Parameters.Add("@CreateDate", SqlDbType.DateTime).Value = this.CreateDate;
        cmd.Parameters.Add("@Image_Url", SqlDbType.VarChar).Value = this.Image_Url;
        cmd.Parameters.Add("@Phone_Number", SqlDbType.VarChar).Value = this.Phone_Number;
        cmd.Parameters.Add("@City", SqlDbType.VarChar).Value = this.City;
        cmd.Parameters.Add("@Active", SqlDbType.VarChar).Value = this.Active;
        cmd.Parameters.Add("@P", SqlDbType.Int).Value = this.P;
        cmd.Parameters.Add("@EmailAdress", SqlDbType.VarChar).Value = this.EmailAdress;
        cmd.Parameters.Add("@mode", SqlDbType.Int).Value = 2;
        cmd.ExecuteNonQuery();
    }


    public void Delete()
    {
        cmd = new SqlCommand("SP_User", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@Id", SqlDbType.Int).Value = this.Id;
        //cmd.Parameters.Add("@UserName", SqlDbType.VarChar).Value = this.UserName;
        //cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = this.Password;
        //cmd.Parameters.Add("@Remarks", SqlDbType.VarChar).Value = this.Remarks;
        //cmd.Parameters.Add("@Type", SqlDbType.VarChar).Value = this.Type;
        //cmd.Parameters.Add("@CreateDate", SqlDbType.DateTime).Value = this.CreateDate;
        //cmd.Parameters.Add("@Image_Url", SqlDbType.VarChar).Value = this.Image_Url;
        //cmd.Parameters.Add("@Phone_Number", SqlDbType.VarChar).Value = this.Phone_Number;
        //cmd.Parameters.Add("@City", SqlDbType.VarChar).Value = this.City;
        //cmd.Parameters.Add("@Active", SqlDbType.VarChar).Value = this.Active;
        //cmd.Parameters.Add("@P", SqlDbType.Int).Value = this.P;
        //cmd.Parameters.Add("@EmailAdress", SqlDbType.VarChar).Value = this.EmailAdress;
        cmd.Parameters.Add("@mode", SqlDbType.Int).Value = 3;
        cmd.ExecuteNonQuery();
    }

    public void IdDetailsINSERT()
    {
        cmd = new SqlCommand("SP_IdDetail", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.Add("@Id", SqlDbType.Int).Value = this.Id;
        cmd.Parameters.Add("@EmailAddress", SqlDbType.VarChar).Value = this.EmailAddress;
        cmd.Parameters.Add("@PasswordEmail", SqlDbType.VarChar).Value = this.PasswordEmail;
        cmd.Parameters.Add("@Remarks", SqlDbType.VarChar).Value = this.Remarks;
        cmd.Parameters.Add("@PasswordFb", SqlDbType.VarChar).Value = this.PasswordFb;
        cmd.Parameters.Add("@Status", SqlDbType.VarChar).Value = this.Status;
        cmd.Parameters.Add("@P", SqlDbType.Int).Value = this.P;
        cmd.Parameters.Add("@mode", SqlDbType.Int).Value = 1;
        cmd.ExecuteNonQuery();
    }

    public void IdDetailsUPDATE()
    {
        cmd = new SqlCommand("SP_IdDetail", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@Id", SqlDbType.Int).Value = this.Id;
        cmd.Parameters.Add("@EmailAddress", SqlDbType.VarChar).Value = this.EmailAddress;
        cmd.Parameters.Add("@PasswordEmail", SqlDbType.VarChar).Value = this.PasswordEmail;
        cmd.Parameters.Add("@Remarks", SqlDbType.VarChar).Value = this.Remarks;
        cmd.Parameters.Add("@PasswordFb", SqlDbType.VarChar).Value = this.PasswordFb;
        cmd.Parameters.Add("@Status", SqlDbType.VarChar).Value = this.Status;
        cmd.Parameters.Add("@P", SqlDbType.Int).Value = this.P;
        cmd.Parameters.Add("@mode", SqlDbType.Int).Value = 2;
        cmd.ExecuteNonQuery();
    }

    public void IdDetailsDELETE()
    {
        cmd = new SqlCommand("SP_IdDetail", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@Id", SqlDbType.Int).Value = this.Id;
        //cmd.Parameters.Add("@EmailAddress", SqlDbType.VarChar).Value = this.EmailAddress;
        //cmd.Parameters.Add("@PasswordEmail", SqlDbType.VarChar).Value = this.PasswordEmail;
        //cmd.Parameters.Add("@Remarks", SqlDbType.VarChar).Value = this.Remarks;
        //cmd.Parameters.Add("@PasswordFb", SqlDbType.VarChar).Value = this.PasswordFb;
        //cmd.Parameters.Add("@Status", SqlDbType.VarChar).Value = this.Status;
        //cmd.Parameters.Add("@P", SqlDbType.Int).Value = this.P;
        cmd.Parameters.Add("@mode", SqlDbType.Int).Value = 3;
        cmd.ExecuteNonQuery();
    }

    public void INSERTDaily()
    {
        cmd = new SqlCommand("SP_DailyDetails", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.Add("@Id", SqlDbType.Int).Value = this.Id;
        cmd.Parameters.Add("@Customer_Name", SqlDbType.VarChar).Value = this.Customer_Name;
        cmd.Parameters.Add("@Stock", SqlDbType.VarChar).Value = this.Stock;
        cmd.Parameters.Add("@CreateDate", SqlDbType.DateTime).Value = this.CreateDate;
        cmd.Parameters.Add("@Type", SqlDbType.VarChar).Value = this.Type;
        cmd.Parameters.Add("@Amount", SqlDbType.VarChar).Value = this.Amount;
        cmd.Parameters.Add("@OldBalance", SqlDbType.VarChar).Value = this.OldBalance;
        cmd.Parameters.Add("@Comment", SqlDbType.VarChar).Value = this.Message;
        cmd.Parameters.Add("@Proft_Loss", SqlDbType.VarChar).Value = this.Proft_Loss;
        cmd.Parameters.Add("@mode", SqlDbType.Int).Value = 1;
        cmd.ExecuteNonQuery();
    }

    public void UpdateDaily()
    {
        cmd = new SqlCommand("SP_DailyDetails", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@Id", SqlDbType.Int).Value = this.Id;
        cmd.Parameters.Add("@Customer_Name", SqlDbType.VarChar).Value = this.Customer_Name;
        cmd.Parameters.Add("@Stock", SqlDbType.VarChar).Value = this.Stock;
        cmd.Parameters.Add("@CreateDate", SqlDbType.DateTime).Value = this.CreateDate;
        cmd.Parameters.Add("@Type", SqlDbType.VarChar).Value = this.Type;
        cmd.Parameters.Add("@Amount", SqlDbType.VarChar).Value = this.Amount;
        cmd.Parameters.Add("@OldBalance", SqlDbType.VarChar).Value = this.OldBalance;
        cmd.Parameters.Add("@Comment", SqlDbType.VarChar).Value = this.Message;
        cmd.Parameters.Add("@Proft_Loss", SqlDbType.VarChar).Value = this.Proft_Loss;
        cmd.Parameters.Add("@mode", SqlDbType.Int).Value = 2;
        cmd.ExecuteNonQuery();
    }

    public void DeleteDaily()
    {
        cmd = new SqlCommand("SP_DailyDetails", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@Id", SqlDbType.Int).Value = this.Id;
        cmd.Parameters.Add("@mode", SqlDbType.Int).Value = 3;
        cmd.ExecuteNonQuery();
    }


    public void INSERTDailyTp()
    {
        cmd = new SqlCommand("SP_DailyDetailsTp", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.Add("@Id", SqlDbType.Int).Value = this.Id;
        cmd.Parameters.Add("@Customer_Name", SqlDbType.VarChar).Value = this.Customer_Name;
        cmd.Parameters.Add("@Stock", SqlDbType.VarChar).Value = this.Stock;
        cmd.Parameters.Add("@CreateDate", SqlDbType.DateTime).Value = this.CreateDate;
        cmd.Parameters.Add("@Type", SqlDbType.VarChar).Value = this.Type;
        cmd.Parameters.Add("@Amount", SqlDbType.VarChar).Value = this.Amount;
        cmd.Parameters.Add("@Comment", SqlDbType.VarChar).Value = this.Message;
        cmd.Parameters.Add("@Proft_Loss", SqlDbType.VarChar).Value = this.Proft_Loss;
        cmd.Parameters.Add("@mode", SqlDbType.Int).Value = 1;
        cmd.ExecuteNonQuery();
    }

    public void UpdateDailyTp()
    {
        cmd = new SqlCommand("SP_DailyDetailsTp", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@Id", SqlDbType.Int).Value = this.Id;
        cmd.Parameters.Add("@Customer_Name", SqlDbType.VarChar).Value = this.Customer_Name;
        cmd.Parameters.Add("@Stock", SqlDbType.VarChar).Value = this.Stock;
        cmd.Parameters.Add("@CreateDate", SqlDbType.DateTime).Value = this.CreateDate;
        cmd.Parameters.Add("@Type", SqlDbType.VarChar).Value = this.Type;
        cmd.Parameters.Add("@Amount", SqlDbType.VarChar).Value = this.Amount;
        cmd.Parameters.Add("@Comment", SqlDbType.VarChar).Value = this.Message;
        cmd.Parameters.Add("@Proft_Loss", SqlDbType.VarChar).Value = this.Proft_Loss;
        cmd.Parameters.Add("@mode", SqlDbType.Int).Value = 2;
        cmd.ExecuteNonQuery();
    }

    public void DeleteDailyTp()
    {
        cmd = new SqlCommand("SP_DailyDetailsTp", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@Id", SqlDbType.Int).Value = this.Id;
        cmd.Parameters.Add("@mode", SqlDbType.Int).Value = 3;
        cmd.ExecuteNonQuery();
    }
    public void INSERTCustomer()
    {
        cmd = new SqlCommand("SP_Customer", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.Add("@Id", SqlDbType.Int).Value = this.Id;
        cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = this.Name;
        cmd.Parameters.Add("@Mobile_Number", SqlDbType.VarChar).Value = this.Mobile_Number;
        cmd.Parameters.Add("@Refrence", SqlDbType.VarChar).Value = this.Refrence;
        cmd.Parameters.Add("@Details", SqlDbType.VarChar).Value = this.Details;
        cmd.Parameters.Add("@P", SqlDbType.Int).Value = this.P;
        cmd.Parameters.Add("@Remarks", SqlDbType.VarChar).Value = this.Remarks;
        cmd.Parameters.Add("@mode", SqlDbType.Int).Value = 1;
        cmd.ExecuteNonQuery();
    }

    public void UPDATECustomer()
    {
        cmd = new SqlCommand("SP_Customer", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@Id", SqlDbType.Int).Value = this.Id;
        cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = this.Name;
        cmd.Parameters.Add("@Mobile_Number", SqlDbType.VarChar).Value = this.Mobile_Number;
        cmd.Parameters.Add("@Refrence", SqlDbType.VarChar).Value = this.Refrence;
        cmd.Parameters.Add("@Details", SqlDbType.VarChar).Value = this.Details;
        cmd.Parameters.Add("@P", SqlDbType.Int).Value = this.P;
        cmd.Parameters.Add("@Remarks", SqlDbType.VarChar).Value = this.Remarks;
        cmd.Parameters.Add("@mode", SqlDbType.Int).Value = 2;
        cmd.ExecuteNonQuery();
    }

    public void DELETECustomer()
    {
        cmd = new SqlCommand("SP_Customer", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@Id", SqlDbType.Int).Value = this.Id;
        //cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = this.Name;
        //cmd.Parameters.Add("@Mobile_Number", SqlDbType.VarChar).Value = this.Mobile_Number;
        //cmd.Parameters.Add("@Refrence", SqlDbType.VarChar).Value = this.Refrence;
        //cmd.Parameters.Add("@Details", SqlDbType.VarChar).Value = this.Details;
        //cmd.Parameters.Add("@P", SqlDbType.Int).Value = this.P;
        //cmd.Parameters.Add("@Remarks", SqlDbType.VarChar).Value = this.Remarks;
        cmd.Parameters.Add("@mode", SqlDbType.Int).Value = 3;
        cmd.ExecuteNonQuery();
    }

    public void INSERTLimit()
    {
        cmd = new SqlCommand("SP_Limit", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.Add("@Id", SqlDbType.Int).Value = this.Id;
        cmd.Parameters.Add("@Limit", SqlDbType.VarChar).Value = this.Limit;
        cmd.Parameters.Add("@Quentity", SqlDbType.VarChar).Value = this.Quentity;
        cmd.Parameters.Add("@Remarks", SqlDbType.VarChar).Value = this.Remarks;
        cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = this.Name;
        cmd.Parameters.Add("@Active", SqlDbType.VarChar).Value = this.Active;
        cmd.Parameters.Add("@P", SqlDbType.Int).Value = this.P;
        cmd.Parameters.Add("@mode", SqlDbType.Int).Value = 1;
        cmd.ExecuteNonQuery();
    }

    public void UPDATELimit()
    {
        cmd = new SqlCommand("SP_Limit", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@Id", SqlDbType.Int).Value = this.Id;
        cmd.Parameters.Add("@Limit", SqlDbType.VarChar).Value = this.Limit;
        cmd.Parameters.Add("@Remarks", SqlDbType.VarChar).Value = this.Remarks;
        cmd.Parameters.Add("@Quentity", SqlDbType.VarChar).Value = this.Quentity;
        cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = this.Name;
        cmd.Parameters.Add("@Active", SqlDbType.VarChar).Value = this.Active;
        cmd.Parameters.Add("@P", SqlDbType.Int).Value = this.P;
        cmd.Parameters.Add("@mode", SqlDbType.Int).Value = 2;
        cmd.ExecuteNonQuery();
    }

    public void DELETELimit()
    {
        cmd = new SqlCommand("SP_Limit", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@Id", SqlDbType.Int).Value = this.Id;
        //cmd.Parameters.Add("@Limit", SqlDbType.VarChar).Value = this.Limit;
        //cmd.Parameters.Add("@Quentity", SqlDbType.VarChar).Value = this.Quentity;
        //cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = this.Name;
        //cmd.Parameters.Add("@Active", SqlDbType.DateTime).Value = this.Active;
        //cmd.Parameters.Add("@P", SqlDbType.Int).Value = this.P;
        cmd.Parameters.Add("@mode", SqlDbType.Int).Value = 3;
        cmd.ExecuteNonQuery();
    }

    public void UPDATEMessage()
    {
        cmd = new SqlCommand("SP_Message", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@Id", SqlDbType.Int).Value = this.Id;
        cmd.Parameters.Add("@UserName", SqlDbType.VarChar).Value = this.UserName;
        cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = this.Name;
        cmd.Parameters.Add("@Message", SqlDbType.VarChar).Value = this.Message;
        cmd.Parameters.Add("@Remarks", SqlDbType.VarChar).Value = this.Remarks;
        cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = this.Email;
        cmd.Parameters.Add("@Active", SqlDbType.VarChar).Value = this.Active;
        cmd.Parameters.Add("@P", SqlDbType.Int).Value = this.P;
        cmd.Parameters.Add("@mode", SqlDbType.Int).Value = 2;
        cmd.ExecuteNonQuery();
    }

    public void INSERTMessage()
    {
        cmd = new SqlCommand("SP_Message", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.Add("@Id", SqlDbType.Int).Value = this.Id;
        cmd.Parameters.Add("@UserName", SqlDbType.VarChar).Value = this.UserName;
        cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = this.Name;
        cmd.Parameters.Add("@Message", SqlDbType.VarChar).Value = this.Message;
        cmd.Parameters.Add("@Remarks", SqlDbType.VarChar).Value = this.Remarks;
        cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = this.Email;
        cmd.Parameters.Add("@Active", SqlDbType.VarChar).Value = this.Active;
        cmd.Parameters.Add("@P", SqlDbType.Int).Value = this.P;
        cmd.Parameters.Add("@mode", SqlDbType.Int).Value = 1;
        cmd.ExecuteNonQuery();
    }

    public void DELETEMESSAGE()
    {
        cmd = new SqlCommand("SP_Message", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@Id", SqlDbType.Int).Value = this.Id;
        //cmd.Parameters.Add("@UserName", SqlDbType.VarChar).Value = this.UserName;
        //cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = this.Name;
        //cmd.Parameters.Add("@Message", SqlDbType.VarChar).Value = this.Message;
        //cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = this.Email;
        //cmd.Parameters.Add("@Remarks", SqlDbType.VarChar).Value = this.Remarks;
        //cmd.Parameters.Add("@Active", SqlDbType.VarChar).Value = this.Active;
        //cmd.Parameters.Add("@Mobile_Number", SqlDbType.VarChar).Value = this.Mobile_Number;
        //cmd.Parameters.Add("@P", SqlDbType.Int).Value = this.P;
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

    public DataSet GetDs(string q)
    {
        DataSet ds = new DataSet();
        adp = new SqlDataAdapter(q, cn);
        adp.Fill(ds);
        return ds;
    }


}