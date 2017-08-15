using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class DBBackup : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    SqlCommand sqlcmd = new SqlCommand();
    User c = new User();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            TextBox1.Text = Server.MapPath("~/BackupFiles/");


            if (Session["admin"] != null)
            {
                BindMasterData();
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
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
        li8.Attributes.Add("class", "");
        li9.Attributes.Add("class", "");
        li10.Attributes.Add("class", "active");
        li11.Attributes.Add("class", "");
        li12.Attributes.Add("class", "");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        //Mentioned Connection string make sure that user id and password sufficient previlages        

        //Enter destination directory where backup file stored
        string destdir = Server.MapPath("~/BackupFiles/");

        //Check that directory already there otherwise create 
        if (!System.IO.Directory.Exists(destdir))
        {
            //lblerror.Text = "Backup files folder not found";
            //Response.Write("Backup files folder not found");
            System.IO.Directory.CreateDirectory(destdir);
        }
        try
        {
            //Open connection
            c.cnopen();
            //query to take backup database
            sqlcmd = new SqlCommand("backup database Chipsseller to disk='" + destdir + "" + DateTime.Now.ToString("ddMMyyyy_HHmmss") + ".Bak'", c.Getconnectionstring());
            sqlcmd.ExecuteNonQuery();
            //Close connection
            c.cnclose();
            lblerror.Text = "Backup database successfully";
            Response.Write("Backup database successfully");
        }
        catch (Exception ex)
        {
            lblerror.Text = ex.Message;
            //lblerror.Text = "Error During backup database!";
            Response.Write("Error During backup database!");
        }
    }


}