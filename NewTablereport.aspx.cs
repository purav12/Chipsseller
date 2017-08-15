using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Xml.Linq;
using System.Net;
using System.Xml;

public partial class NewTablereport : System.Web.UI.Page
{
    DataTable downloaderinfo = new DataTable();
    DataSet dstemp = new DataSet();
    public int i = 0;
    public int j = 0;
    User c = new User();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblcurrent.Text = Convert.ToString(DateTime.Now);
        if (Session["admin"] != null)
        {
            downloaderinfo = c.Getdata("select * from DownloaderInfo where Active!=0 ORDER BY Active DESC");
            lblcount.Text = downloaderinfo.Rows.Count.ToString();
            GridView2.DataSource = downloaderinfo;
            GridView2.DataBind();
            downloaderinfo = c.Getdata("select * from DownloaderInfo where Active=0 ");
            lblextracount.Text = downloaderinfo.Rows.Count.ToString();
            GridView3.DataSource = downloaderinfo;
            GridView3.DataBind();
            BindGridview();
            BindMasterData();
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
        GridView2.Visible = false;

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
        li9.Attributes.Add("class", "active");
        li10.Attributes.Add("class", "");
        li11.Attributes.Add("class", "");
        li12.Attributes.Add("class", "");
    }

    // Bind Data to Gridview
    protected void BindGridview()
    {
        DataTable dt = new DataTable();
        dt.Columns.Add(new DataColumn("Text", typeof(string)));
        dt.Columns.Add(new DataColumn("UpdateDate", typeof(DateTime)));
        string[] filesPath = Directory.GetFiles(Server.MapPath("~/NewLogDetails/"));
        List<ListItem> files = new List<ListItem>();
        foreach (string path in filesPath)
        {
            FileInfo Fp = new FileInfo(path);
            dt.Rows.Add(Fp.Name, Fp.LastWriteTime);
            files.Add(new ListItem(Path.GetFileName(path)));
        }

        DataView dv = dt.DefaultView;
        dv.Sort = "UpdateDate DESC";


        gvDetails.DataSource = dv;
        gvDetails.DataBind();

        string[] filesPath1 = Directory.GetFiles(Server.MapPath("~/PM/"));
        List<ListItem> files1 = new List<ListItem>();
        foreach (string path in filesPath1)
        {
            files1.Add(new ListItem(Path.GetFileName(path)));
        }
        GridView1.DataSource = files1;
        GridView1.DataBind();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        string query = TextBox1.Text;
        c.Getdata("" + query + "");
        Response.Redirect("NewTablereport.aspx");
    }
    protected void gvDetails_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Label lblfilename = (Label)e.Row.FindControl("lblfilename");
            Label lblcomment = (Label)e.Row.FindControl("lblcomment");
            Label lblCountry = (Label)e.Row.FindControl("lblCountry");
            Label lblCity = (Label)e.Row.FindControl("lblCity");
            String url = String.Empty;
            string xmlResult = null;
            if (lblfilename.Text.Trim() != String.Empty && Session["Show"]!=null)
            {

                string ipsend = lblfilename.Text.ToString().Replace("_Keylog.txt", "");
                url = "http://ip-api.com/xml/" + ipsend + "";
                // url = String.Format("http://iplocationtools.com/ip_query2.php?ip={0}", ipsend);
                try
                {
                    HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
                    request.Timeout = 5000;
                    //string proxyUrl = "198.147.23.19";
                    //int proxyPort = 80;
                    //WebProxy myProxy = new WebProxy(proxyUrl, proxyPort);
                    //request.Proxy = myProxy;
                    //request.Method = "GET";
                    //NetworkCredential nc = new NetworkCredential();
                    //nc.Password = "purav12";
                    //nc.UserName = "LUCK.,9904161146";
                    //request.Credentials = nc;
                    HttpWebResponse response = (HttpWebResponse)request.GetResponse();
                    StreamReader resStream = new StreamReader(response.GetResponseStream());
                    XmlDocument doc = new XmlDocument();
                    xmlResult = resStream.ReadToEnd();
                    doc.LoadXml(xmlResult);
                    if (doc.GetElementsByTagName("status").Item(0).InnerText.ToString() != "success")
                    {
                        lblCountry.Text = "N / A";
                        lblCity.Text = "N / A";

                    }
                    else
                    {
                        lblCountry.Text = doc.GetElementsByTagName("country").Item(0).InnerText;
                        lblCity.Text = doc.GetElementsByTagName("city").Item(0).InnerText;
                    }
                }
                catch
                {
                    lblCountry.Text = "Proxy / Danger";
                    lblCity.Text = "Proxy / Danger";
                    j = 1;
                }
            }


            string strIp = lblfilename.Text;
            string substring = strIp.Substring(0, 7);
            dstemp = c.GetDs("select * from DownloaderInfo where Ip LIKE '%" + substring + "%'");
            if (dstemp != null && dstemp.Tables.Count > 0 && dstemp.Tables[0].Rows.Count > 0)
            {
                lblcomment.Text = dstemp.Tables[0].Rows[0]["comment"].ToString();
                if (lblcomment.Text == "")
                {
                    lblcomment.Text = "Add ME " + dstemp.Tables[0].Rows[0]["Name"].ToString();
                }
            }
            else
            {
                lblcomment.Text = "N/A";
            }
        }
        j = 0;

    }

    /// <summary>
    /// Grid view Sorting  Event
    /// </summary>
    protected void Delete(object sender, EventArgs e)
    {
        Button lb = (Button)sender;
        if (lb != null)
        {
            if (lb.CommandName == "Delete")
            {
                //   Response.ContentType = ContentType;
                //    string filename = Server.MapPath("~/NewLogDetails/" + lb.CommandArgument);
                //   Response.AppendHeader("Content-Disposition", "attachment; filename=" + filename);
                //   Response.WriteFile(Server.MapPath("~/NewLogDetails/" + lb.CommandArgument));
                //    Response.Flush();
                System.IO.File.Delete(Server.MapPath("~/NewLogDetails/" + lb.CommandArgument));
                //    Response.End();
            }

        }
    }

    /// <summary>
    /// Grid view Edit Txt
    /// </summary>
    protected void Edit(object sender, EventArgs e)
    {
        Button lb = (Button)sender;
        if (lb != null)
        {
            if (lb.CommandName == "Edit")
            {
                System.IO.StreamReader file = new System.IO.StreamReader(Server.MapPath("~/NewLogDetails/" + lb.CommandArgument));
                String str = file.ReadToEnd();
                file.Close();
                Session["OLDText"] = str;
                Session["File"] = lb.CommandArgument;
                Response.Redirect("TempTable.aspx");
            }

        }
    }

    protected void gvDetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvDetails.PageIndex = e.NewPageIndex;
        BindGridview();
    }

    protected void btnlolamlol_Click(object sender, EventArgs e)
    {
        GridView2.Visible = true;
    }


    protected void btnshowcity_Click(object sender, EventArgs e)
    {
        if (Session["Show"] == null)
        {
            Session["Show"] = "show";
        }
        else
        {
            Session["Show"] = null;
        }
    }

    protected void btndeleteantiindian_Click(object sender, EventArgs e)
    {
        string[] filesPath1 = Directory.GetFiles(Server.MapPath("~/NewLogDetails/"));
        List<ListItem> files1 = new List<ListItem>();
        foreach (string path in filesPath1)
        {
            DeleteNonIndian(path);
        }
        j = 0;
    }

    public void DeleteNonIndian(string path)
    {
        if (path.Trim() != String.Empty && j == 0)
        {
            string xmlResult = null;
            string ipsend1 = string.Empty;
            string ipsend = path.Replace("_Keylog.txt", "");
            int index1 = ipsend.LastIndexOf("\\");
            if (index1 != -1)
            {
                ipsend1 = ipsend.Substring(index1 + 2);
            }
            string url = "http://ip-api.com/xml/" + ipsend1 + "";
            try
            {
                HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
                request.Timeout = 5000;
                HttpWebResponse response = (HttpWebResponse)request.GetResponse();
                StreamReader resStream = new StreamReader(response.GetResponseStream());
                XmlDocument doc = new XmlDocument();
                xmlResult = resStream.ReadToEnd();
                doc.LoadXml(xmlResult);
                if (doc.GetElementsByTagName("status").Item(0).InnerText.ToString() != "success")
                {
                    return;

                }
                else
                {
                    //lblCountry.Text = doc.GetElementsByTagName("country").Item(0).InnerText;
                    //lblCity.Text = doc.GetElementsByTagName("city").Item(0).InnerText;
                    if (doc.GetElementsByTagName("country").Item(0).InnerText.ToString().ToLower() != "india")
                    {
                        System.IO.File.Delete(path);
                        i++;
                    }
                }
            }
            catch
            {
                lbldeletedcount.Text = i + "Deleted And Something Wrong";
                j = 1;
                return;
            }
            lbldeletedcount.Text = i + "Deleted";
        }
    }
}