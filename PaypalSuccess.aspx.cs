using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PaypalSuccess : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string email = string.Empty;
        string firstname = string.Empty;
        string amount = string.Empty;
        string phone = string.Empty;

        BindMasterData();
        if (Request.QueryString["orderid"] != null)
        {
            lblorderNo.Text = Request.QueryString["orderid"].ToString();

            if (Request.QueryString["email"] != null)
            {
                email = Request.QueryString["email"].ToString();
                lblemail.Text = email;
            }
            if (Request.QueryString["firstname"] != null)
            {
                firstname = Request.QueryString["firstname"].ToString();
            }
            if (Request.QueryString["amount"] != null)
            {
                amount = Request.QueryString["amount"].ToString();
            }
            if (Request.QueryString["phone"] != null)
            {
                phone = Request.QueryString["phone"].ToString();
            }

            AlternateView av = AlternateView.CreateAlternateViewFromString("PayumoneyOrder# " + Request.QueryString["orderid"].ToString() + "Received, from customer name: (" + firstname + "), Mobile: (" + phone + ") and Emaill: (" + email + ")", null, "text/html");
            SendMail("puravmehta1212@yahoo.com", "PayUMoney Order Received", "PayumoneyOrder# " + Request.QueryString["orderid"].ToString() + "Received, from customer name: (" + firstname + "), Mobile: ("+phone+") and Emaill: ("+email+")" , Request.UserHostAddress.ToString(), true, av);
        }
        
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