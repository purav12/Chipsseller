using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Net.Mail;
using System.Data;

public partial class Paypal : System.Web.UI.Page
{
    User c = new User();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Redirect("Paypal.aspx");
        BindMasterData();
        try
        {
            BindCartData();
        }
        catch
        {
        }
    }

    public void BindCartData()
    {
        dt = c.Getdata("select * from CartData where Type='OCTRO' order by DisplayOrder");
        lblname1.Text = dt.Rows[0]["Extra"].ToString();
        lblprice1.Text = dt.Rows[0]["Value"].ToString() + " INR";


        lblname2.Text = dt.Rows[1]["Extra"].ToString();
        lblprice2.Text = dt.Rows[1]["Value"].ToString() + " INR";

        lblname3.Text = dt.Rows[2]["Extra"].ToString();
        lblprice3.Text = dt.Rows[2]["Value"].ToString() + " INR";

        //lblname4.Text = dt.Rows[3]["Extra"].ToString();
        //lblprice4.Text = dt.Rows[3]["Value"].ToString() + " USD";

        //lblname5.Text = dt.Rows[4]["Extra"].ToString();
        //lblprice5.Text = dt.Rows[4]["Value"].ToString() + " USD";

        lblcount1.Text = dt.Rows[0]["Count"].ToString();
        lblcount2.Text = dt.Rows[1]["Count"].ToString();
        lblcount3.Text = dt.Rows[2]["Count"].ToString();
        //lblcount4.Text = dt.Rows[3]["Count"].ToString();
        //lblcount5.Text = dt.Rows[4]["Count"].ToString();
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
    protected void btn25m_Click(object sender, EventArgs e)
    {
        SetOrder(lblname1.Text, lblcount1.Text, txtMailpaypal.Text);
        string redirectUrl = "";
        redirectUrl += "https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&business=puravmehta01@yahoo.com&lc=IN";
        redirectUrl += "&item_name=" + lblname1.Text + " CR&item_number=1&amount=" + lblcount1.Text + "";
        redirectUrl += "&currency_code=USD&button_subtype=services&tax_rate=0&shipping=0&bn=PP%2dBuyNowBF%3abtn_paynow_LG%2egif%3aNonHosted";
        Response.Redirect(redirectUrl);
    }
    protected void btn50m_Click(object sender, EventArgs e)
    {
        SetOrder(lblname2.Text, lblcount2.Text, txtMailpaypal.Text);
        string redirectUrl = "";
        redirectUrl += "https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&business=puravmehta01@yahoo.com&lc=IN";
        redirectUrl += "&item_name=" + lblname2.Text + " CR&item_number=1&amount=" + lblcount2.Text + "";
        redirectUrl += "&currency_code=USD&button_subtype=services&tax_rate=0&shipping=0&bn=PP%2dBuyNowBF%3abtn_paynow_LG%2egif%3aNonHosted";
        Response.Redirect(redirectUrl);
    }
    protected void btn100m_Click(object sender, EventArgs e)
    {
        SetOrder(lblname3.Text, lblcount3.Text, txtMailpaypal.Text);
        string redirectUrl = "";
        redirectUrl += "https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&business=puravmehta01@yahoo.com&lc=IN";
        redirectUrl += "&item_name=" + lblname3.Text + " CR&item_number=1&amount=" + lblcount3.Text + "";
        redirectUrl += "&currency_code=USD&button_subtype=services&tax_rate=0&shipping=0&bn=PP%2dBuyNowBF%3abtn_paynow_LG%2egif%3aNonHosted";
        Response.Redirect(redirectUrl);
    }


    public void SetOrder(string Stock, string Amount, string Email)
    {
        c.Getdata("insert into Paypal (Stock,Amount,Email,IsSeen,Active) values ('" + Stock + "','" + Amount + "','" + Email + "','No','No')");
        ds = c.GetDs("select * from Description where Page='Mail Template'");
        string strBody = ds.Tables[0].Rows[0]["Data"].ToString();
        strBody = Server.HtmlDecode(strBody);
        strBody = Regex.Replace(strBody, "###Message###", "You Intiated Process Of Sending Money To puravmehta01@yahoo.com via Paypal You Will Get Update Sortly About Your Transaction", RegexOptions.IgnoreCase);
        //Your PayPal Order Is Processing We Will Send Confirmation Within 2-3 Hours
        AlternateView av = AlternateView.CreateAlternateViewFromString(strBody, null, "text/html");
        string result = SendMail(Email, "PayPal Order Intiated", strBody, Request.UserHostAddress.ToString(), true, av);
        //string subject = "PayPal Order Intiated from " + Email + "";
        //string result1 = SendMail("puravmehta1212@yahoo.com", subject, strBody, Request.UserHostAddress.ToString(), true, av);
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