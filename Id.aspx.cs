using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;

public partial class Id : System.Web.UI.Page
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
    }

    public void BindHisab()
    {
        dshisab = c.GetDs("SELECT * FROM Hisab order by CAST(Chips as int) desc");
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

        System.Web.UI.HtmlControls.HtmlGenericControl li = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("lidefault");
        System.Web.UI.HtmlControls.HtmlGenericControl li1 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("liContact");
        System.Web.UI.HtmlControls.HtmlGenericControl li2 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("lisignup");
        System.Web.UI.HtmlControls.HtmlGenericControl li3 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("liSignupfirst");
        System.Web.UI.HtmlControls.HtmlGenericControl li4 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("liContactform");
        System.Web.UI.HtmlControls.HtmlGenericControl li5 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("libank");
        System.Web.UI.HtmlControls.HtmlGenericControl li6 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("lilogin");
        System.Web.UI.HtmlControls.HtmlGenericControl li7 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("litablenames");
        li.Attributes.Add("class", "active");
        li1.Attributes.Add("class", "");
        li2.Attributes.Add("class", "");
        li3.Attributes.Add("class", "");
        li4.Attributes.Add("class", "");
        li5.Attributes.Add("class", "");
        li6.Attributes.Add("class", "");
        li7.Attributes.Add("class", "");
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