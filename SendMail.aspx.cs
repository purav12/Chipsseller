using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net.Mail;
using System.Text.RegularExpressions;

public partial class MailTemplates : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    User c = new User();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["Status"] != null)
        {
            if (Request.QueryString["Status"].ToString() == "sent")
            {
                lblstatus.Visible = true;
            }
            else
            {
                lblstatus.Text = Request.QueryString["Status"].ToString();
                lblstatus.Visible = true;
            }
        }

        if (!IsPostBack)
        {
            ds = c.GetDs("select * from Description where Page='Mail Template'");
            string Description = ds.Tables[0].Rows[0]["Data"].ToString();
            string str1 = Server.HtmlDecode(Description);
            txthome.Text = str1;
        }
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

        System.Web.UI.HtmlControls.HtmlGenericControl li = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("Home");
        System.Web.UI.HtmlControls.HtmlGenericControl li1 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("Customers");
        System.Web.UI.HtmlControls.HtmlGenericControl li2 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("IdList");
        System.Web.UI.HtmlControls.HtmlGenericControl li4 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("Database");
        System.Web.UI.HtmlControls.HtmlGenericControl li5 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("Main");
        System.Web.UI.HtmlControls.HtmlGenericControl li6 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("liProfile");
        System.Web.UI.HtmlControls.HtmlGenericControl li7 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("Reports");
        System.Web.UI.HtmlControls.HtmlGenericControl li8 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("TableReports");
        System.Web.UI.HtmlControls.HtmlGenericControl li9 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("NewTableReports");
        System.Web.UI.HtmlControls.HtmlGenericControl li10 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("Backup");
        System.Web.UI.HtmlControls.HtmlGenericControl li11 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("Hisab");
        System.Web.UI.HtmlControls.HtmlGenericControl li12 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("lablelogin");
        li.Attributes.Add("class", "");
        li1.Attributes.Add("class", "");
        li2.Attributes.Add("class", "");
        li4.Attributes.Add("class", "");
        li5.Attributes.Add("class", "");
        li6.Attributes.Add("class", "");
        li7.Attributes.Add("class", "");
        li8.Attributes.Add("class", "");
        li9.Attributes.Add("class", "");
        li10.Attributes.Add("class", "");
        li11.Attributes.Add("class", "");
        li12.Attributes.Add("class", "");
    }


    protected void btnSend_Click(object sender, EventArgs e)
    {
        string strBody = txthome.Text;
        //strBody = Regex.Replace(strBody, "###Message###", "Your PayPal Order Is Processing We Will Send Confirmation Within 2-3 Hours", RegexOptions.IgnoreCase);
        AlternateView av = AlternateView.CreateAlternateViewFromString(strBody, null, "text/html");
        string result = SendMail(txttomail.Text, txtsubject.Text, strBody, Request.UserHostAddress.ToString(), true, av);
        if (result == "True")
        {
            Response.Redirect("SendMail.aspx?Status=sent");
        }
        else
        {
            Response.Redirect("SendMail.aspx?Status=" + result);
        }
    }


    protected void btnsave_Click(object sender, EventArgs e)
    {
        string str1 = Server.HtmlDecode(txthome.Text);
        string str2 = Server.HtmlEncode(txthome.Text);
        //ds = c.GetDs("update Description set Data='" + str2 + "' where Page='Mail Template'");
        Response.Redirect("SendMail.aspx");
        
    }

    //public string SendMail(String MailTo, String MailSubject, String MailBody, String IPAddress, bool IsBodyHtml, AlternateView Attachment)
    //{
    //    string result = "True";
    //    string senderID = "puravmehta12@gmail.com";// use sender's email id here..
    //    const string senderPassword = "9904161146"; // sender password here...
    //    try
    //    {
    //        SmtpClient smtp = new SmtpClient
    //        {
    //            Host = "smtp.gmail.com", // smtp server address here...
    //            Port = 587,
    //            EnableSsl = true,
    //            DeliveryMethod = SmtpDeliveryMethod.Network,
    //            Credentials = new System.Net.NetworkCredential("puravmehta12@gmail.com", "9904161146"),
    //            Timeout = 30000,
    //        };
    //        MailMessage message = new MailMessage(senderID, MailTo, MailSubject, MailBody);
    //        message.AlternateViews.Add(Attachment);
    //        smtp.Send(message);
    //    }
    //    catch (Exception ex)
    //    {
    //        result = ex.Message.ToString();
    //    }
    //    return result;

    //}

    public string SendMail(String MailTo, String MailSubject, String MailBody, String IPAddress, bool IsBodyHtml, AlternateView Attachment)
    {
        string result = "True";

        try
        {
       string mailServerName = "relay-hosting.secureserver.net";
       MailMessage message = new MailMessage("puravmehta12@gmail.com", MailTo, MailSubject, MailBody);
            SmtpClient mailClient = new SmtpClient();

            mailClient.Host = mailServerName;
            mailClient.Port = 25;
            message.AlternateViews.Add(Attachment);
            //message.Subject = "comments from my site";    
            //message.Body = body
            mailClient.Send(message);
            message.Dispose();
        }
        catch (Exception ex)
        {
            result = ex.Message.ToString();
        }
        return result;
    }


}