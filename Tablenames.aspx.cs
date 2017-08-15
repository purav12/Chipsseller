using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Data;
using System.IO;
using System.Web.Script.Serialization;
using System.Net.Mail;
using System.Text.RegularExpressions;

public partial class Tablenames : System.Web.UI.Page
{
    User c = new User();
    DataTable dt, dt1;
    DataSet ds = new DataSet();
    //public string StatusChart, StatusChartTitle, YaxeName;
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

        ds = c.GetDs("select * from Description where Page='Mail Template'");
        string Description = ds.Tables[0].Rows[0]["Data"].ToString();
        string str1 = Server.HtmlDecode(Description);
        txthome.Text = str1;

        //FillChart();
        string sql1 = "select Data from Static where Title='ToolDownloads'";
        dt1 = c.Getdata(sql1);
        int downloads = Convert.ToInt32(dt1.Rows[0]["Data"]);
        lbldownloads.Text = Convert.ToString(downloads);
        BindMasterData();
        if (Session["Sent"] != null)
        {
            if (Session["Sent"].ToString() == "Yes")
            {
                lblalert.Visible = true;
                // Session["Sent"] = "No";
            }
            else
            {
                lblalert.Visible = false;
            }
        }
        else
            lblalert.Visible = false;

        lblalert.Visible = false;
        dt = c.Getdata("select * from ContactUs where P=7777 ORDER BY PostedDate Desc");
        RepDetails.DataSource = dt;
        RepDetails.DataBind();
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

    protected void btndownload_Click(object sender, EventArgs e)
    {
        string json = hdnGeo.Value;
        var dictionary = new JavaScriptSerializer().Deserialize<Dictionary<string, string>>(json);
        string city = dictionary["city"];
        //string lat = dictionary["lat"];
        //string lon = dictionary["lon"];
        string IP = dictionary["IP"];
        string country = dictionary["country"];


        DataTable dtlast = new DataTable();
        string sql = "INSERT into DownloaderInfo (Name,Email,Ip,country,city,Active) values ('" + txtname.Text + "','" + txtmail.Text + "','" + IP + "','" + country + "','" + city + "',1)";
        dtlast = c.Getdata(sql);
        string sql1 = "select Data from Static where Title='ToolDownloads'";
        dtlast = c.Getdata(sql1);
        int downloads = Convert.ToInt32(dtlast.Rows[0]["Data"]);
        downloads++;
        string sql12 = "update Static set Data=" + downloads + " where Id=1";
        dtlast = c.Getdata(sql12);
        #region Download
        try
        {
            Response.Redirect("http://chipsseller.com/ZyngaVersion2.0.2.rar");
        }
        catch (Exception ex)
        {

        }
        #endregion
    }

    protected void btnZyngaDownload_Click(object sender, EventArgs e)
    {
        string json = hdnGeo.Value;
        var dictionary = new JavaScriptSerializer().Deserialize<Dictionary<string, string>>(json);
        string city = dictionary["city"];
        //string lat = dictionary["lat"];
        //string lon = dictionary["lon"];
        string IP = dictionary["IP"];
        string country = dictionary["country"];


        DataTable dtlast = new DataTable();
        string sql = "INSERT into DownloaderInfo (Name,Email,Ip,country,city,Active) values ('" + txtname.Text + "','" + txtmail.Text + "','" + IP + "','" + country + "','" + city + "',1)";
        dtlast = c.Getdata(sql);
        string sql1 = "select Data from Static where Title='ToolDownloads'";
        dtlast = c.Getdata(sql1);
        int downloads = Convert.ToInt32(dtlast.Rows[0]["Data"]);
        downloads++;
        string sql12 = "update Static set Data=" + downloads + " where Id=1";
        dtlast = c.Getdata(sql12);
        #region Download
        try
        {
            Response.Redirect("http://chipsseller.com/ZyngaVersion2.0.2.rar");
        }
        catch (Exception ex)
        {

        }
        #endregion
    }

    protected void btnSendApp_Click(object sender, EventArgs e)
    {
        Response.Redirect("/zbotgui.rar");
    }

    protected void btnmodidownload_Click(object sender, EventArgs e)
    {
        string json = hdnGeo.Value;
        var dictionary = new JavaScriptSerializer().Deserialize<Dictionary<string, string>>(json);
        string city = dictionary["city"];
        //string lat = dictionary["lat"];
        //string lon = dictionary["lon"];
        string IP = dictionary["IP"];
        string country = dictionary["country"];


        DataTable dtlast = new DataTable();
        string sql = "INSERT into DownloaderInfo (Name,Email,Ip,country,city,Active) values ('" + txtname.Text + "','" + txtmail.Text + "','" + IP + "','" + country + "','" + city + "',1)";
        dtlast = c.Getdata(sql);
        string sql1 = "select Data from Static where Title='ToolDownloads'";
        dtlast = c.Getdata(sql1);
        int downloads = Convert.ToInt32(dtlast.Rows[0]["Data"]);
        downloads++;
        string sql12 = "update Static set Data=" + downloads + " where Id=1";
        dtlast = c.Getdata(sql12);
        #region Download
        try
        {
            Response.Redirect("http://chipsseller.com/ZyngaVersion2.0.2.rar");
        }
        catch (Exception ex)
        {

        }
        #endregion
    }




    protected void btndirectdownload_Click(object sender, EventArgs e)
    {
        string json = hdnGeo.Value;
        var dictionary = new JavaScriptSerializer().Deserialize<Dictionary<string, string>>(json);
        string city = dictionary["city"];
        //string lat = dictionary["lat"];
        //string lon = dictionary["lon"];
        string IP = dictionary["IP"];
        string country = dictionary["country"];


        DataTable dtlast = new DataTable();
        string sql = "INSERT into DownloaderInfo (Name,Email,Ip,country,city,Active) values ('" + txtname.Text + "','" + txtmail.Text + "','" + IP + "','" + country + "','" + city + "',1)";
        dtlast = c.Getdata(sql);
        string sql1 = "select Data from Static where Title='ToolDownloads'";
        dtlast = c.Getdata(sql1);
        int downloads = Convert.ToInt32(dtlast.Rows[0]["Data"]);
        downloads++;
        string sql12 = "update Static set Data=" + downloads + " where Id=1";
        dtlast = c.Getdata(sql12);
        #region Download
        try
        {
            Response.Redirect("http://chipsseller.com/ZyngaVersion2.0.2.crx");
        }
        catch (Exception ex)
        {

        }
        #endregion
    }
    //btndirectdownload_Click

    protected void btnSubmit1_Click(object sender, EventArgs e)
    {
        if (Session["Sent"] != null)
        {
            if (Session["Sent"].ToString() == "Yes")
            {
                lblalert.Visible = true;
                lblalert.Text = "You already sent one message , now try after 20 min";
                //Session["Sent"] = "No";
            }
            else
            {
                if (txtcode.Text == "12")
                {
                    c.cnopen();
                    c.Name = TextBox1.Text;
                    c.Subject = txtSubject.Text;
                    c.Details = txtDetails.Text;
                    c.Active = "NO";
                    c.PostedDate = DateTime.Now;
                    c.P = 7777;
                    c.INSERT_Comment();
                    lblalert.Visible = true;
                    Session["Sent"] = "Yes";
                    Response.Redirect("Tablenames.aspx");
                }
                else
                {
                    lblalert.Text = "Answer is wrong";
                }
            }
        }
        else
        {
            if (txtcode.Text == "12")
            {
                c.cnopen();
                c.Name = TextBox1.Text;
                c.Subject = txtSubject.Text;
                c.Details = txtDetails.Text;
                c.Active = "NO";
                c.PostedDate = DateTime.Now;
                c.P = 7777;
                c.INSERT_Comment();
                lblalert.Visible = true;
                Session["Sent"] = "Yes";
                Response.Redirect("Tablenames.aspx");
            }
            else
            {
                lblalert.Text = "Answer is wrong";
            }
        }

    }

    protected void btnSendMail_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();

        ds = c.GetDs("INSERT INTO ToolUser (Name,Email) VALUES ('" + txtname.Text + "','" + txtmail.Text + "')");

        string strBody = txthome.Text;
        strBody = Regex.Replace(strBody, "###Message###", " Your tool is ready , Please find attachment. If you have any query regarding use of the tool take a look on a video on <br/> <a href = 'http://chipsseller.com/Table'>http://chipsseller.com/Table </a>", RegexOptions.IgnoreCase);
        AlternateView av = AlternateView.CreateAlternateViewFromString(strBody, null, "text/html");
        string result = SendMailAttach(txtmail.Text, "Zynga Poker Table Name Visible Tool Version 3.0.5", strBody, Request.UserHostAddress.ToString(), true, av);
        if (result == "True")
        {
            Response.Redirect("TableNames.aspx?Status=sent");
        }
        else
        {
            Response.Redirect("TableNames.aspx?Status=" + result);
        }
    }

    public string SendMailAttach(String MailTo, String MailSubject, String MailBody, String IPAddress, bool IsBodyHtml, AlternateView Attachment)
    {
        string result = "True";

        try
        {
            string mailServerName = "relay-hosting.secureserver.net";
            MailMessage message = new MailMessage("puravmehta12@gmail.com", MailTo, MailSubject, MailBody);
            SmtpClient mailClient = new SmtpClient();
            mailClient.Host = mailServerName;
            mailClient.Port = 25;
            String FilePath = Server.MapPath("~/ToolData/") + "Zbotgui.rar";
            message.Attachments.Add(new Attachment(FilePath));
            String FilePath2 = Server.MapPath("~/ToolData/") + "ReadMe.txt";
            message.Attachments.Add(new Attachment(FilePath2));
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