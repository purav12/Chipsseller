using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text.RegularExpressions;
using System.Data;
using System.Text;
using System.Security.Cryptography;
using System.Configuration;

public partial class PaypalDirect : System.Web.UI.Page
{
    public string action1 = string.Empty;
    public string hash1 = string.Empty;
    public string txnid1 = string.Empty;
    User c = new User();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        key.Value = ConfigurationManager.AppSettings["MERCHANT_KEY"];
        BindMasterData();
    }

    public void BindMasterData()
    {
        Label lblloggin = (Label)Master.FindControl("lblloggin");
        if (Session["user"] != null)
        {
            lblloggin.Text = "Logout";
        }
        else
        {
            lblloggin.Text = "Log in";
        }

        System.Web.UI.HtmlControls.HtmlGenericControl li = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("lidefault");
        System.Web.UI.HtmlControls.HtmlGenericControl li1 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("liContact");
        System.Web.UI.HtmlControls.HtmlGenericControl li2 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("lisignup");
        System.Web.UI.HtmlControls.HtmlGenericControl li3 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("liSignupfirst");
        System.Web.UI.HtmlControls.HtmlGenericControl li4 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("liContactform");
        System.Web.UI.HtmlControls.HtmlGenericControl li5 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("libank");
        System.Web.UI.HtmlControls.HtmlGenericControl li6 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("lilogin");
        System.Web.UI.HtmlControls.HtmlGenericControl li7 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("litablenames");
        li.Attributes.Add("class", "");
        li1.Attributes.Add("class", "");
        li2.Attributes.Add("class", "");
        li3.Attributes.Add("class", "");
        li4.Attributes.Add("class", "");
        li5.Attributes.Add("class", "");
        li6.Attributes.Add("class", "");
        li7.Attributes.Add("class", "");
    }

    protected void btmRandom_Click(object sender, EventArgs e)
    {
        SetOrder("7777", txtamount.Text, txtMailpaypal.Text);
        //string redirectUrl = "";
        //string amount = txtamount.Text;
        //redirectUrl += "https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&business=puravmehta01@yahoo.com&lc=IN";
        //redirectUrl += "&item_name=Development and Design Work&item_number=1&amount=" + amount;
        //redirectUrl += "&currency_code=USD&button_subtype=services&tax_rate=0&shipping=0&bn=PP%2dBuyNowBF%3abtn_paynow_LG%2egif%3aNonHosted";

        //Response.Redirect(redirectUrl);

        payumoney(txtamount.Text, txtMailpaypal.Text, "Chips Seller India");
    }

    public void payumoney(string amount, string Emaill, string ProductName)
    {
        try
        {

            string[] hashVarsSeq;
            string hash_string = string.Empty;

            Random rnd = new Random();
            string strHash = Generatehash512(rnd.ToString() + DateTime.Now);
            txnid1 = strHash.ToString().Substring(0, 10);

            string FirstName = "Purav Mehta";
            if (txtname.Text.Trim() != "")
            {
                FirstName = txtname.Text.Trim();
            }

            string MobileNumber = "9898989898";
            if (txtmob.Text.Trim() != "")
            {
                MobileNumber = txtmob.Text.Trim();
            }

            if (string.IsNullOrEmpty(Request.Form["hash"])) // generating hash value
            {
                if (
                    string.IsNullOrEmpty(ConfigurationManager.AppSettings["MERCHANT_KEY"]) ||
                    string.IsNullOrEmpty(txnid1) ||
                    string.IsNullOrEmpty(amount) ||
                    string.IsNullOrEmpty(FirstName) ||
                    string.IsNullOrEmpty(Emaill) ||
                    string.IsNullOrEmpty(MobileNumber) ||
                    string.IsNullOrEmpty(ProductName) ||
                    string.IsNullOrEmpty(ConfigurationManager.AppSettings["surl"]) ||
                    string.IsNullOrEmpty(ConfigurationManager.AppSettings["furl"])
                    )
                {
                    return;
                }

                else
                {
                    hashVarsSeq = ConfigurationManager.AppSettings["hashSequence"].Split('|'); // spliting hash sequence from config
                    hash_string = "";
                    foreach (string hash_var in hashVarsSeq)
                    {
                        if (hash_var == "key")
                        {
                            hash_string = hash_string + ConfigurationManager.AppSettings["MERCHANT_KEY"];
                            hash_string = hash_string + '|';
                        }
                        else if (hash_var == "txnid")
                        {
                            hash_string = hash_string + txnid1;
                            hash_string = hash_string + '|';
                        }
                        else if (hash_var == "amount")
                        {
                            hash_string = hash_string + Convert.ToDecimal(amount).ToString("g29");
                            hash_string = hash_string + '|';
                        }
                        else if (hash_var == "productinfo")
                        {
                            hash_string = hash_string + ProductName;
                            hash_string = hash_string + '|';
                        }
                        else if (hash_var == "firstname")
                        {
                            hash_string = hash_string + FirstName;
                            hash_string = hash_string + '|';
                        }
                        else if (hash_var == "email")
                        {
                            hash_string = hash_string + Emaill;
                            hash_string = hash_string + '|';
                        }
                        else
                        {

                            hash_string = hash_string + (Request.Form[hash_var] != null ? Request.Form[hash_var] : "");// isset if else
                            hash_string = hash_string + '|';
                        }
                    }

                    hash_string += ConfigurationManager.AppSettings["SALT"];// appending SALT

                    hash1 = Generatehash512(hash_string).ToLower();         //generating hash
                    action1 = ConfigurationManager.AppSettings["PAYU_BASE_URL"] + "/_payment";// setting URL

                }


            }

            else if (!string.IsNullOrEmpty(Request.Form["hash"]))
            {
                hash1 = Request.Form["hash"];
                action1 = ConfigurationManager.AppSettings["PAYU_BASE_URL"] + "/_payment";

            }




            if (!string.IsNullOrEmpty(hash1))
            {
                hash.Value = hash1;
                txnid.Value = txnid1;

                System.Collections.Hashtable data = new System.Collections.Hashtable(); // adding values in gash table for data post
                data.Add("hash", hash.Value);
                data.Add("txnid", txnid.Value);
                data.Add("key", key.Value);
                string AmountForm = Convert.ToDecimal(amount.Trim()).ToString("g29");// eliminating trailing zeros
                amount = AmountForm;
                data.Add("amount", AmountForm);
                data.Add("firstname", FirstName);
                data.Add("email", Emaill.Trim());
                data.Add("phone", MobileNumber);
                data.Add("productinfo", ProductName.Trim());
                data.Add("surl", ConfigurationManager.AppSettings["surl"]);
                data.Add("furl", ConfigurationManager.AppSettings["furl"]);
                data.Add("lastname", "");
                data.Add("curl", ConfigurationManager.AppSettings["curl"]);
                data.Add("address1", "");
                data.Add("address2", "");
                data.Add("city", "");
                data.Add("state", "");
                data.Add("country", "");
                data.Add("zipcode", "");
                data.Add("udf1", "");
                data.Add("udf2", "");
                data.Add("udf3", "");
                data.Add("udf4", "");
                data.Add("udf5", "");
                data.Add("pg", "");
                data.Add("service_provider", "payu_paisa");



                string strForm = PreparePOSTForm(action1, data);
                Page.Controls.Add(new LiteralControl(strForm));

            }

            else
            {
                //no hash

            }

        }

        catch (Exception ex)
        {
            Response.Write("<span style='color:red'>" + ex.Message + "</span>");

        }
    }

    private string PreparePOSTForm(string url, System.Collections.Hashtable data)      // post form
    {
        //Set a name for the form
        string formID = "PostForm";
        //Build the form using the specified data to be posted.
        StringBuilder strForm = new StringBuilder();
        strForm.Append("<form id=\"" + formID + "\" name=\"" +
                       formID + "\" action=\"" + url +
                       "\" method=\"POST\">");

        foreach (System.Collections.DictionaryEntry key in data)
        {

            strForm.Append("<input type=\"hidden\" name=\"" + key.Key +
                           "\" value=\"" + key.Value + "\">");
        }


        strForm.Append("</form>");
        //Build the JavaScript which will do the Posting operation.
        StringBuilder strScript = new StringBuilder();
        strScript.Append("<script language='javascript'>");
        strScript.Append("var v" + formID + " = document." +
                         formID + ";");
        strScript.Append("v" + formID + ".submit();");
        strScript.Append("</script>");
        //Return the form and the script concatenated.
        //(The order is important, Form then JavaScript)
        return strForm.ToString() + strScript.ToString();
    }


    public string Generatehash512(string text)
    {
        byte[] message = Encoding.UTF8.GetBytes(text);
        UnicodeEncoding UE = new UnicodeEncoding();
        byte[] hashValue;
        SHA512Managed hashString = new SHA512Managed();
        string hex = "";
        hashValue = hashString.ComputeHash(message);
        foreach (byte x in hashValue)
        {
            hex += String.Format("{0:x2}", x);
        }
        return hex;
    }


    public void SetOrder(string Stock, string Amount, string Email)
    {
        c.Getdata("insert into Paypal (Stock,Amount,Email,IsSeen,Active) values ('" + Stock + "','" + Amount + "','" + Email + "','No','No')");
        ds = c.GetDs("select * from Description where Page='Mail Template'");
        string strBody = ds.Tables[0].Rows[0]["Data"].ToString();
        strBody = Server.HtmlDecode(strBody);
        strBody = Regex.Replace(strBody, "###Message###", "You Intiated Process Of Sending Money To puravmehta1212@yahoo.com via Payumoney You Will Get Update Sortly About Your Transaction", RegexOptions.IgnoreCase);
        //Your PayPal Order Is Processing We Will Send Confirmation Within 2-3 Hours
        AlternateView av = AlternateView.CreateAlternateViewFromString(strBody, null, "text/html");

        //string subject = "PayPal Order Intiated from " + Email + "";
        //string result1 = SendMail("puravmehta1212@yahoo.com", subject, strBody, Request.UserHostAddress.ToString(), true, av);
        string result = SendMail(Email, "Payumoney Order Intiated", strBody, Request.UserHostAddress.ToString(), true, av);
    }

    public string SendMail(String MailTo, String MailSubject, String MailBody, String IPAddress, bool IsBodyHtml, AlternateView Attachment)
    {
        string result = "Message Sent Successfully..!!";
        string senderID = "puravmehta12@gmail.com";// use sender's email id here..
        const string senderPassword = "9904161146"; // sender password here...
        try
        {
            string mailServerName = "relay-hosting.secureserver.net";
            MailMessage message = new MailMessage("puravmehta12@gmail.com", MailTo, MailSubject, MailBody);
            SmtpClient mailClient = new SmtpClient();

            mailClient.Host = mailServerName;
            mailClient.Port = 25;
            message.AlternateViews.Add(Attachment);
            mailClient.Send(message);
            message.Dispose();
        }
        catch (Exception ex)
        {
            result = "Error sending email.!!!";
        }
        return result;

    }

}