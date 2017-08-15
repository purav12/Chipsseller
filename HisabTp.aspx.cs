using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class HisabTp : System.Web.UI.Page
{
    User c = new User();
    DataTable dt;
    int totalremaining;
    protected void Page_Load(object sender, EventArgs e)
    {

        BindMasterData();

        if (!IsPostBack)
        {
            lblalert.Visible = false;
            dt = c.Getdata("select * from Static Where P=2 order by CAST(Data as int) Desc");
            //for (int i = 0; i < dt.Rows.Count; i++)
            //{
            //    string Title = dt.Rows[i]["Title"].ToString();
            //    string Data = dt.Rows[i]["Data"].ToString();

            //}
            lblid1.Text = dt.Rows[0]["Title"].ToString();
            lblstock1.Text = dt.Rows[0]["Data"].ToString();

            lblid2.Text = dt.Rows[1]["Title"].ToString();
            lblstock2.Text = dt.Rows[1]["Data"].ToString();

            lblid3.Text = dt.Rows[2]["Title"].ToString();
            lblstock3.Text = dt.Rows[2]["Data"].ToString();

            lblid4.Text = dt.Rows[3]["Title"].ToString();
            lblstock4.Text = dt.Rows[3]["Data"].ToString();

            lblid5.Text = dt.Rows[4]["Title"].ToString();
            lblstock5.Text = dt.Rows[4]["Data"].ToString();

            lblid6.Text = dt.Rows[5]["Title"].ToString();
            lblstock6.Text = dt.Rows[5]["Data"].ToString();

            lblid7.Text = dt.Rows[6]["Title"].ToString();
            lblstock7.Text = dt.Rows[6]["Data"].ToString();

            lblid8.Text = dt.Rows[7]["Title"].ToString();
            lblstock8.Text = dt.Rows[7]["Data"].ToString();

            lblid9.Text = dt.Rows[8]["Title"].ToString();
            lblstock9.Text = dt.Rows[8]["Data"].ToString();

            lblid10.Text = dt.Rows[9]["Title"].ToString();
            lblstock10.Text = dt.Rows[9]["Data"].ToString();

            lbltotalstock9.Text = Convert.ToString(Convert.ToInt32(dt.Rows[0]["Data"].ToString()) + Convert.ToInt32(dt.Rows[1]["Data"].ToString()) + Convert.ToInt32(dt.Rows[2]["Data"].ToString()) + Convert.ToInt32(dt.Rows[3]["Data"].ToString()) + Convert.ToInt32(dt.Rows[4]["Data"].ToString()) + Convert.ToInt32(dt.Rows[5]["Data"].ToString()) + Convert.ToInt32(dt.Rows[6]["Data"].ToString()) + Convert.ToInt32(dt.Rows[7]["Data"].ToString()) + Convert.ToInt32(dt.Rows[8]["Data"].ToString()) + Convert.ToInt32(dt.Rows[9]["Data"].ToString()));

            //lblid10.Text = dt.Rows[99]["Title"].ToString();
            //lblstock10.Text = dt.Rows[99]["Data"].ToString();
        }
        getdetails("SELECT *,Case when Amount='0' then '9' else CONVERT(FLOAT,Amount)/Cast(Stock as int) end  AS Rate FROM DailyDetailsTp ");
        txtdiffrence.Text = Convert.ToString((totalremaining - Convert.ToInt32(lbltotalstock9.Text)));
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



    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        dt = c.Getdata("update Static set Data='" + lblstock1.Text + "' where Title='" + lblid1.Text + "' and P=2 ");
        dt = c.Getdata("update Static set Data='" + lblstock2.Text + "' where Title='" + lblid2.Text + "'  and P=2 ");
        dt = c.Getdata("update Static set Data='" + lblstock3.Text + "' where Title='" + lblid3.Text + "'  and P=2 ");
        dt = c.Getdata("update Static set Data='" + lblstock4.Text + "' where Title='" + lblid4.Text + "'  and P=2 ");
        dt = c.Getdata("update Static set Data='" + lblstock5.Text + "' where Title='" + lblid5.Text + "'  and P=2 ");
        dt = c.Getdata("update Static set Data='" + lblstock6.Text + "' where Title='" + lblid6.Text + "'  and P=2 ");
        dt = c.Getdata("update Static set Data='" + lblstock7.Text + "' where Title='" + lblid7.Text + "'  and P=2 ");
        dt = c.Getdata("update Static set Data='" + lblstock8.Text + "' where Title='" + lblid8.Text + "'  and P=2 ");
        dt = c.Getdata("update Static set Data='" + lblstock9.Text + "' where Title='" + lblid9.Text + "'  and P=2 ");
        dt = c.Getdata("update Static set Data='" + lblstock10.Text + "' where Title='" + lblid10.Text + "'  and P=2 ");
        Response.Redirect("HisabTp.aspx");
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
        int startingblance = -62;
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
        //startingblance = Convert.ToInt32(dt.Rows[0]["Data"].ToString());
        totalremaining = Totalremain + startingblance;
        txtonsitechips.Text = totalremaining.ToString() + " Mill";
    }


}