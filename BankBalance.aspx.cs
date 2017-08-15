using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AdminBank : System.Web.UI.Page
{
    User c = new User();
    DataTable dt;
    DataSet dsbank = new DataSet();
    int totalremaining;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindMasterData();
            BindBankData();
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
        li5.Attributes.Add("class", "active");
        li6.Attributes.Add("class", "");
        li7.Attributes.Add("class", "");
    }

    public void BindBankData()
    {
        dsbank = c.GetDs("SELECT * FROM StaticBank");
        rptBankDetails.DataSource = dsbank;
        rptBankDetails.DataBind();

        DataTable dt = c.Getdata("select SUM(CAST(Balance as float)) as Total  FROM StaticBank");
        txtTotalBalance.Text = dt.Rows[0]["Total"].ToString();
    }



    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (Session["admin"] != null)
        {
            foreach (RepeaterItem item in rptBankDetails.Items)
            {
                TextBox txtBalance = (TextBox)item.FindControl("txtBalance");
                TextBox txtNote = (TextBox)item.FindControl("txtNote");
                Label lblname = (Label)item.FindControl("lblname");
                dt = c.Getdata("update StaticBank set Balance='" + txtBalance.Text + "',Note='" + txtNote.Text + "' where Name='" + lblname.Text + "' ");
            }
        }
        else
        {
            Response.Redirect("Default.aspx");
        }

        Response.Redirect("AdminBank.aspx");

    }




}