using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;

public partial class HisabNew : System.Web.UI.Page
{
    User c = new User();
    DataTable dt;
    int totalremaining;
    DataSet dshisab = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {


        if (!IsPostBack)
        {
            BindMasterData();
            BindHisab();
            int total = 0;
            foreach (RepeaterItem item in rptHisabDetails.Items)
            {
                TextBox txt = (TextBox)item.FindControl("txtchips");
                int val = Convert.ToInt32(txt.Text);
                total += val;
            }
            txttotal.Text = Convert.ToString(total);
            lblalert.Visible = false;
        }

        getdetails("SELECT Amount,Stock,Proft_Loss,Type,Case when Amount='0' then '9' else CONVERT(FLOAT,Amount)/Cast(Stock as int) end  AS Rate FROM DailyDetails ");
        txtdiff.Text = Convert.ToString((totalremaining - Convert.ToInt32(txttotal.Text)));
    }

    public void BindHisab()
    {
        dshisab = c.GetDs("SELECT * FROM Hisab where Name!='Jannat' order by CAST(Chips as int) desc");
        rptHisabDetails.DataSource = dshisab;
        rptHisabDetails.DataBind();
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
        li11.Attributes.Add("class", "active");
        li12.Attributes.Add("class", "");
    }


    protected void btnget_Click(object sender, EventArgs e)
    {
        c.cnopen();
        c.UserName = "Purav Mehta";
        c.Name = "Unknown";
        c.Message = "Alert ! some one tried to hack HISAB , with password '" + txtcode.Text + "' be carefull";
        c.Email = "Unknown";
        c.Remarks = "Message From HISAB Page";
        c.Active = "No";
        c.P = 0;
        c.INSERTMessage();
    }



    protected void btnsave_Click(object sender, EventArgs e)
    {
        string Names = string.Empty;
        foreach (RepeaterItem item in rptHisabDetails.Items)
        {
            TextBox txtid = (TextBox)item.FindControl("txtid");
            TextBox txtname = (TextBox)item.FindControl("txtname");
            TextBox txtchips = (TextBox)item.FindControl("txtchips");
            TextBox txtuname = (TextBox)item.FindControl("txtuname");
            TextBox txtpass = (TextBox)item.FindControl("txtpass");
            dt = c.Getdata("update HISAB set CHIPS='" + txtchips.Text + "' where Id='" + txtid.Text + "' ");
            Names += txtname.Text + " - " + txtchips.Text + "  |||  ";
        }
        dt = c.Getdata("insert into HisabBackup (Name,Stock) values ('" + Names.TrimEnd('|', ' ') + "','" + txttotal.Text + "')");
        Response.Redirect("HisabNew.aspx");
    }

    protected void btnsaveall_Click(object sender, EventArgs e)
    {
        string Names = string.Empty;
        foreach (RepeaterItem item in rptHisabDetails.Items)
        {
            TextBox txtid = (TextBox)item.FindControl("txtid");
            TextBox txtname = (TextBox)item.FindControl("txtname");
            TextBox txtchips = (TextBox)item.FindControl("txtchips");
            TextBox txtuname = (TextBox)item.FindControl("txtuname");
            TextBox txtpass = (TextBox)item.FindControl("txtpass");
            dt = c.Getdata("update HISAB set NAME='" + txtname.Text + "',UserName='" + txtuname.Text + "',CHIPS='" + txtchips.Text + "',Password='" + txtpass.Text + "' where Id='" + txtid.Text + "' ");
            Names += txtname.Text + " - " + txtchips.Text + " - " + txtuname.Text + " - " + txtpass.Text + "  |||  ";
        }
        dt = c.Getdata("insert into HisabBackup (Name,Stock) values ('" + Names.TrimEnd('|',' ') + "','"+ txttotal.Text +"')");
        Response.Redirect("HisabNew.aspx");
    }


    protected void btnenable_Click(object sender, EventArgs e)
    {
        Enabling();
    }

    public void Enabling()
    {
        foreach (RepeaterItem item in rptHisabDetails.Items)
        {
            TextBox txtid = (TextBox)item.FindControl("txtid");
            TextBox txtname = (TextBox)item.FindControl("txtname");
            TextBox txtchips = (TextBox)item.FindControl("txtchips");
            TextBox txtuname = (TextBox)item.FindControl("txtuname");
            TextBox txtpass = (TextBox)item.FindControl("txtpass");
            txtid.TabIndex = txtname.TabIndex = txtuname.TabIndex = txtpass.TabIndex = 0;
            txtid.ReadOnly = txtname.ReadOnly = txtuname.ReadOnly = txtpass.ReadOnly = false;
            txtid.BackColor = txtname.BackColor = txtuname.BackColor = txtpass.BackColor = Color.White;
        }
    }


    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string str = RemoveSpecialCharacter(txtcode.Text.Trim().ToCharArray());
        if (str == "saveme")
        {
            foreach (RepeaterItem item in rptHisabDetails.Items)
            {
                TextBox txtpass = (TextBox)item.FindControl("txtpass");
                txtpass.Visible = true;
            }
            Control HeaderTemplate = rptHisabDetails.Controls[0].Controls[0];
            Label lblHeader = HeaderTemplate.FindControl("lblpass") as Label;
            lblHeader.Visible = true;
            Enabling();
            btnsave.Visible = false;
        }
    }


    public void getdetails(string Query)
    {
        DataTable dt = new DataTable();
        dt = c.Getdata(Query);
        int TotalAmount = 0;
        int TotalStock = 0;
        int TotalProfit = 0;
        int TotalWon = 0;
        int TotalLost = 0;
        int TotalBanned = 0;
        int TotalLoss = 0;
        int Totalhack = 0;
        int Totalcheat = 0;
        int Totalremain = 0;
        int Earn = 0;
        int startingblance = 0;
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            int Amount = int.Parse(dt.Rows[i]["Amount"].ToString());
            int Stock = int.Parse(dt.Rows[i]["Stock"].ToString());
            String Status = dt.Rows[i]["Proft_Loss"].ToString();
            String Type = dt.Rows[i]["Type"].ToString();
            if (Type == "Hack")
            {
                Totalhack += Amount;
            }
            else if (Type == "Cheat")
            {
                Totalcheat += Amount;
            }
            if (Status == "Profit")
            {
                TotalProfit += Amount;
                Totalremain += -Stock;
            }
            else if (Status == "Loss")
            {
                TotalLoss += Amount;
                Totalremain += Stock;
            }
            else if (Status == "Won")
            {
                TotalWon += Amount;
                Totalremain += Stock;
            }
            else if (Status == "Banned")
            {
                TotalBanned += Amount;
                Totalremain += -Stock;
            }
            else if (Status == "Defeat")
            {
                TotalLost += Amount;
                Totalremain += -Stock;
            }
            TotalAmount += Amount;
            TotalStock += Stock;
            Earn = TotalProfit - TotalLoss;
        }

        dt = c.Getdata("select Data from Static where Title='Starting Balance'");
        startingblance = Convert.ToInt32(dt.Rows[0]["Data"].ToString());
        totalremaining = Totalremain + startingblance;
        txtonsitechips.Text = totalremaining.ToString() + " Mill";
    }

    public static string RemoveSpecialCharacter(char[] charr)
    {
        string res = "";
        string value = new string(charr);

        value = value.Replace('~', '-');
        value = value.Replace('!', '-');
        value = value.Replace('@', '-');
        value = value.Replace('#', '-');
        value = value.Replace('$', '-');
        value = value.Replace('%', '-');
        value = value.Replace('^', '-');
        value = value.Replace('&', '-');
        value = value.Replace('*', '-');
        value = value.Replace('(', '-');
        value = value.Replace(')', '-');
        value = value.Replace('_', '-');
        value = value.Replace('+', '-');
        value = value.Replace('|', '-');
        value = value.Replace('\\', '-');
        value = value.Replace('/', '-');
        value = value.Replace('?', '-');
        value = value.Replace('\'', '-');
        value = value.Replace('"', '-');
        value = value.Replace(' ', '-');
        value = value.Replace('>', '-');
        value = value.Replace('<', '-');
        value = value.Replace('.', '-');
        value = value.Replace(',', '-');
        value = value.Replace(':', '-');
        value = value.Replace("'", "-");
        value = value.Replace("--", "-");
        value = value.Replace("--", "-");
        value = value.Replace("--", "-");

        res = value;
        return res;

    }
}