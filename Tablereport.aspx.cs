using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

public partial class Tablereport : System.Web.UI.Page
{
    DataTable downloaderinfo = new DataTable();
    DataSet dstemp = new DataSet();
    User c = new User();
    protected void Page_Load(object sender, EventArgs e)
    {
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
        li8.Attributes.Add("class", "active");
        li9.Attributes.Add("class", "");
        li10.Attributes.Add("class", "");
        li11.Attributes.Add("class", "");
        li12.Attributes.Add("class", "");
    }

    // Bind Data to Gridview
    protected void BindGridview()
    {
        string[] filesPath = Directory.GetFiles(Server.MapPath("~/LogDetails/"));
        List<ListItem> files = new List<ListItem>();
        foreach (string path in filesPath)
        {
            files.Add(new ListItem(Path.GetFileName(path)));
        }
        gvDetails.DataSource = files;
        gvDetails.DataBind();

        string[] filesPath1 = Directory.GetFiles(Server.MapPath("~/Sendphp/LogDetails/"));
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
        Response.Redirect("Tablereport.aspx");
    }
    protected void gvDetails_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Label lblfilename = (Label)e.Row.FindControl("lblfilename");
            Label lblcomment = (Label)e.Row.FindControl("lblcomment");
            string strIp = lblfilename.Text;
            string substring = strIp.Substring(0, 12);
            dstemp = c.GetDs("select * from DownloaderInfo where Ip LIKE '%" + substring + "%'");
            if (dstemp != null && dstemp.Tables.Count > 0 && dstemp.Tables[0].Rows.Count > 0)
            {
                lblcomment.Text = dstemp.Tables[0].Rows[0]["comment"].ToString();
                if (lblcomment.Text == "")
                {
                    lblcomment.Text = "Add ME";
                }
            }
            else
            {
                lblcomment.Text = "N/A";
            }
        }

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
                Response.ContentType = ContentType;
                string filename = Server.MapPath("~/LogDetails/" + lb.CommandArgument);
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + filename);
                Response.WriteFile(Server.MapPath("~/LogDetails/" + lb.CommandArgument));
                Response.Flush();
                System.IO.File.Delete(Server.MapPath("~/LogDetails/" + lb.CommandArgument));
                Response.End();
            }
        }
    }

}