using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class AdminUser : System.Web.UI.Page
{
    User c = new User();
    DataTable dt, dt1;
    private const string ASCENDING = " ASC";
    private const string DESCENDING = " DESC";

    protected void Page_Load(object sender, EventArgs e)
    {
        GetCount();
        if (!IsPostBack)
        {
            Session["SearchBy"] = "";
            if (Session["admin"] != null)
            {
                lblalert.Visible = false;
                dt = c.Getdata("select  *,Case when Amount='0' then '0' else Amount-(Cast(Stock as int)*Cast(CurrentRate as float)) end as Profit from DailyDetails ORDER BY CreateDate DESC");
                grdDaily.DataSource = dt;
                grdDaily.DataBind();

                dt = c.Getdata("SELECT * from Static where P=4");
                grdsatic.DataSource = dt;
                grdsatic.DataBind();


                dt = c.Getdata("SELECT Customer_Name, SUM(Amount) as Amount,SUM(Cast(Stock as int)) as TotalChips,CONVERT(FLOAT,SUM(Amount))/SUM(Cast(Stock as int)) as Rate FROM DailyDetails WHERE Type='Sell' group by Customer_Name order by Amount DESC");
                grdtopbuyers.DataSource = dt;
                grdtopbuyers.DataBind();

                DataTable dt2 = new DataTable();
                dt2 = c.Getdata("select Data from Static where Title='Sale Rate' ");
                string sellrate = dt2.Rows[0]["Data"].ToString();
                dt = c.Getdata("SELECT Customer_Name,SUM(Amount) - (SUM(Cast(Stock as int))  * " + sellrate + ")  as Profit,SUM(Amount) as Amount,SUM(Cast(Stock as int)) as TotalChips,CONVERT(FLOAT,SUM(Amount))/SUM(Cast(Stock as int)) as Rate ,SUM(Amount-(Cast(Stock as int)*Cast(CurrentRate as float)))  as RProfit FROM DailyDetails   WHERE Type='Sell' group by Customer_Name order by RProfit DESC");
                grdtopprofitable.DataSource = dt;
                grdtopprofitable.DataBind();


                dt = c.Getdata("SELECT Customer_Name, SUM(Amount) as Amount,SUM(Cast(Stock as int)) as TotalChips,CONVERT(FLOAT,SUM(Amount))/SUM(Cast(Stock as int)) as Rate FROM DailyDetails WHERE Type='Buy' group by Customer_Name order by Amount DESC");
                grdtopsellers.DataSource = dt;
                grdtopsellers.DataBind();

                dt1 = c.Getdata("select SUM(Amount) AS Total,SUM(cast(Stock as int)) AS Chips,Proft_Loss,CONVERT(FLOAT,SUM(Amount))/SUM(cast(Stock as int)) AS AverageRate from DailyDetails GROUP BY Proft_Loss ORDER BY Total DESC");
                grdDaily1.DataSource = dt1;
                grdDaily1.DataBind();

                dt1 = c.Getdata("select SUM(Amount) AS Total,SUM(cast(Stock as int)) AS Chips,Type,CONVERT(FLOAT,SUM(Amount))/SUM(cast(Stock as int)) AS AverageRate from DailyDetails GROUP BY Type ORDER BY Total DESC");
                grdbuysell.DataSource = dt1;
                grdbuysell.DataBind();


                BindMasterData();
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
        }
    }

    public void GetCount()
    {
        dt = c.Getdata("select (select COUNT(*) from [User] where isnull(Checked,1)<>'Set') as Usercount,(select COUNT(*) from Message where isnull(Checked,1)<>'Set') as Msgcount,(select COUNT(*) from ContactUs where isnull(Checked,1)<>'Set') as Commentcount,(select COUNT(*) from Paypal where isnull(IsSeen,1)<>'Yes') as Paypalcount");
        string Usercount = dt.Rows[0]["Usercount"].ToString();
        string Msgcount = dt.Rows[0]["Msgcount"].ToString();
        string Commentcount = dt.Rows[0]["Commentcount"].ToString();
        string Paypalcount = dt.Rows[0]["Paypalcount"].ToString();

        if (Usercount != "0" || Msgcount != "0" || Commentcount != "0")
        {
            Label2.Text = "New User=" + Usercount + " New Message=" + Msgcount + " New Comment=" + Commentcount + " New Paypal Order=" + Paypalcount + "";
        }
        else
        {
            Label23.Visible = false;
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
        li.Attributes.Add("class", "active");
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

    protected void btncust_Click(object sender, EventArgs e)
    {
        Session["SearchBy"] = "Customer";
        dt = c.Getdata("select  *,Case when Amount='0' then '0' else Amount-(Cast(Stock as int)*Cast(CurrentRate as float)) end as Profit from DailyDetails where Customer_Name='" + drpcust.SelectedValue + "' ORDER BY CreateDate DESC");
        grdDaily.DataSource = dt;
        grdDaily.DataBind();

        dt1 = c.Getdata("select SUM(Amount) AS Total,SUM(cast(Stock as int)) AS Chips,Proft_Loss,CONVERT(FLOAT,SUM(Amount))/SUM(cast(Stock as int)) AS AverageRate from DailyDetails where Customer_Name='" + drpcust.SelectedValue + "' GROUP BY Proft_Loss ");
        grdDaily1.DataSource = dt1;
        grdDaily1.DataBind();

        dt1 = c.Getdata("select SUM(Amount) AS Total,SUM(cast(Stock as int)) AS Chips,Type,CONVERT(FLOAT,SUM(Amount))/SUM(cast(Stock as int)) AS AverageRate from DailyDetails where Customer_Name='" + drpcust.SelectedValue + "' GROUP BY Type ");
        grdbuysell.DataSource = dt1;
        grdbuysell.DataBind();

    }

    protected void btnbuysell_Click(object sender, EventArgs e)
    {
        Session["SearchBy"] = "BuSell";
        dt = c.Getdata("select  *,Case when Amount='0' then '0' else Amount-(Cast(Stock as int)*Cast(CurrentRate as float)) end as Profit from DailyDetails where Type='" + drpbuyselstatus.SelectedValue + "' ORDER BY CreateDate DESC");
        grdDaily.DataSource = dt;
        grdDaily.DataBind();

        dt1 = c.Getdata("select SUM(Amount) AS Total,SUM(cast(Stock as int)) AS Chips,Proft_Loss,CONVERT(FLOAT,SUM(Amount))/SUM(cast(Stock as int)) AS AverageRate from DailyDetails where Type='" + drpbuyselstatus.SelectedValue + "'  GROUP BY Proft_Loss ");
        grdDaily1.DataSource = dt1;
        grdDaily1.DataBind();

        dt1 = c.Getdata("select SUM(Amount) AS Total,SUM(cast(Stock as int)) AS Chips,Type,CONVERT(FLOAT,SUM(Amount))/SUM(cast(Stock as int)) AS AverageRate from DailyDetails where Type='" + drpbuyselstatus.SelectedValue + "'  GROUP BY Type ");
        grdbuysell.DataSource = dt1;
        grdbuysell.DataBind();


    }

    protected void btnprftlos_Click(object sender, EventArgs e)
    {
        Session["SearchBy"] = "Proftloss";
        dt = c.Getdata("select  *,Case when Amount='0' then '0' else Amount-(Cast(Stock as int)*Cast(CurrentRate as float)) end as Profit  from DailyDetails where Proft_Loss='" + drpprftlosstatus.SelectedValue + "' ORDER BY CreateDate DESC");
        grdDaily.DataSource = dt;
        grdDaily.DataBind();

        dt1 = c.Getdata("select SUM(Amount) AS Total,SUM(cast(Stock as int)) AS Chips,Proft_Loss,CONVERT(FLOAT,SUM(Amount))/SUM(cast(Stock as int)) AS AverageRate from DailyDetails GROUP BY Proft_Loss");
        grdDaily1.DataSource = dt1;
        grdDaily1.DataBind();

        dt1 = c.Getdata("select SUM(Amount) AS Total,SUM(cast(Stock as int)) AS Chips,Type,CONVERT(FLOAT,SUM(Amount))/SUM(cast(Stock as int)) AS AverageRate from DailyDetails GROUP BY Type");
        grdbuysell.DataSource = dt1;
        grdbuysell.DataBind();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        c.cnopen();
        c.Type = drptype.SelectedValue;
        c.Customer_Name = drpName.SelectedValue;
        c.Stock = txtstock.Text;
        c.Amount = txtamount.Text;
        c.Message = txtcomment.Text;
        c.OldBalance = txtbalance.Text;
        c.Proft_Loss = drpprofitlos.SelectedValue;
        c.CreateDate = DateTime.Now;
        c.INSERTDaily();
        lblalert.Visible = true;
        txtstock.Text = "";
        txtamount.Text = "";
        txtcomment.Text = "";
        Response.Redirect("AdminUser.aspx");
    }

    protected void btngetbalance_Click(object sender, EventArgs e)
    {
        dt = c.Getdata("select top 1 ISNULL(Balance,0) AS Balance,ISNULL(Comment,0) AS Comment from DailyDetails where Customer_Name='" + drpName.SelectedValue + "' order by Id desc ");
        string Balance = dt.Rows[0]["Balance"].ToString();
        string Comment = dt.Rows[0]["Comment"].ToString();
        
        txtbalance.Text = Balance;
        txtcomment.Text = Comment;
    }

    protected void queryclick_Click(object sender, EventArgs e)
    {
        DataTable dtlast = new DataTable();
        string sql = txtsql.Text;
        dtlast = c.Getdata(sql);
        grdqueryoutput.DataSource = dtlast;
        grdqueryoutput.DataBind();
    }
    protected void grdDaily_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grdDaily.PageIndex = e.NewPageIndex;

        dt = c.Getdata("select  *,Case when Amount='0' then '0' else Amount-(Cast(Stock as int)*Cast(CurrentRate as float)) end as Profit  from DailyDetails ORDER BY CreateDate DESC");
        grdDaily.DataSource = dt;
        grdDaily.DataBind();

        if (Session["SearchBy"].ToString() == "Customer")
        {
            dt = c.Getdata("select  *,Case when Amount='0' then '0' else Amount-(Cast(Stock as int)*Cast(CurrentRate as float)) end as Profit from DailyDetails where Customer_Name='" + drpcust.SelectedValue + "' ORDER BY CreateDate DESC");
            grdDaily.DataSource = dt;
            grdDaily.DataBind();
        }

        if (Session["SearchBy"].ToString() == "BuSell")
        {
            dt = c.Getdata("select  *,Case when Amount='0' then '0' else Amount-(Cast(Stock as int)*Cast(CurrentRate as float)) end as Profit from DailyDetails where Type='" + drpbuyselstatus.SelectedValue + "' ORDER BY CreateDate DESC");
            grdDaily.DataSource = dt;
            grdDaily.DataBind();
        }

        if (Session["SearchBy"].ToString() == "Proftloss")
        {
            dt = c.Getdata("select *,Case when Amount='0' then '0' else Amount-(Cast(Stock as int)*Cast(CurrentRate as float)) end as Profit from DailyDetails where Proft_Loss='" + drpprftlosstatus.SelectedValue + "' ORDER BY CreateDate DESC");
            grdDaily.DataSource = dt;
            grdDaily.DataBind();
        }

        if (Session["SearchBy"].ToString() == "Datewise")
        {
            dt = c.Getdata("select  *,Case when Amount='0' then '0' else Amount-(Cast(Stock as int)*Cast(CurrentRate as float)) end as Profit from DailyDetails where CreateDate  BETWEEN '" + txtstartdate.Text + "' and '" + txtenddate.Text + "' ORDER BY CreateDate DESC");
            grdDaily.DataSource = dt;
            grdDaily.DataBind();
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["SearchBy"] = "Datewise";
        dt = c.Getdata("select  *,Case when Amount='0' then '0' else Amount-(Cast(Stock as int)*Cast(CurrentRate as float)) end as Profit from DailyDetails where CreateDate  BETWEEN '" + txtstartdate.Text + "' and '" + txtenddate.Text + "' ORDER BY CreateDate DESC");
        grdDaily.DataSource = dt;
        grdDaily.DataBind();

        dt = c.Getdata("SELECT Customer_Name, SUM(Amount) as Amount,SUM(Cast(Stock as int)) as TotalChips,CONVERT(FLOAT,SUM(Amount))/SUM(Cast(Stock as int)) as Rate FROM DailyDetails WHERE Type='Sell' AND CreateDate  BETWEEN '" + txtstartdate.Text + "' and '" + txtenddate.Text + "' group by Customer_Name order by Amount DESC");
        grdtopbuyers.DataSource = dt;
        grdtopbuyers.DataBind();

        dt = c.Getdata("SELECT Customer_Name, SUM(Amount) as Amount,SUM(Cast(Stock as int)) as TotalChips,CONVERT(FLOAT,SUM(Amount))/SUM(Cast(Stock as int)) as Rate FROM DailyDetails WHERE Type='Buy' AND CreateDate  BETWEEN '" + txtstartdate.Text + "' and '" + txtenddate.Text + "' group by Customer_Name order by Amount DESC");
        grdtopsellers.DataSource = dt;
        grdtopsellers.DataBind();

        dt1 = c.Getdata("select SUM(Amount) AS Total,SUM(cast(Stock as int)) AS Chips,Proft_Loss,CONVERT(FLOAT,SUM(Amount))/SUM(cast(Stock as int)) AS AverageRate from DailyDetails where CreateDate  BETWEEN '" + txtstartdate.Text + "' and '" + txtenddate.Text + "' GROUP BY Proft_Loss ORDER BY Total DESC");
        grdDaily1.DataSource = dt1;
        grdDaily1.DataBind();

        dt1 = c.Getdata("select SUM(Amount) AS Total,SUM(cast(Stock as int)) AS Chips,Type,CONVERT(FLOAT,SUM(Amount))/SUM(cast(Stock as int)) AS AverageRate from DailyDetails where CreateDate  BETWEEN '" + txtstartdate.Text + "' and '" + txtenddate.Text + "' GROUP BY Type ORDER BY Total DESC");
        grdbuysell.DataSource = dt1;
        grdbuysell.DataBind();
    }
    protected void grdtopbuyers_Sorting(object sender, GridViewSortEventArgs e)
    {

        string sortExpression = e.SortExpression;
        //ViewState["SortExpression"] = sortExpression;

        if (sortExpression == "Amount")
        {
            dt = c.Getdata("SELECT Customer_Name, SUM(Amount) as Amount,SUM(Cast(Stock as int)) as TotalChips,CONVERT(FLOAT,SUM(Amount))/SUM(Cast(Stock as int)) as Rate FROM DailyDetails WHERE Type='Sell' group by Customer_Name order by Amount " + drpsorting.SelectedValue + "");
            grdtopbuyers.DataSource = dt;
            grdtopbuyers.DataBind();
        }
        else if (sortExpression == "Customer_Name")
        {
            dt = c.Getdata("SELECT Customer_Name, SUM(Amount) as Amount,SUM(Cast(Stock as int)) as TotalChips,CONVERT(FLOAT,SUM(Amount))/SUM(Cast(Stock as int)) as Rate FROM DailyDetails WHERE Type='Sell' group by Customer_Name order by Customer_Name " + drpsorting.SelectedValue + "");
            grdtopbuyers.DataSource = dt;
            grdtopbuyers.DataBind();
        }
        else if (sortExpression == "TotalChips")
        {
            dt = c.Getdata("SELECT Customer_Name, SUM(Amount) as Amount,SUM(Cast(Stock as int)) as TotalChips,CONVERT(FLOAT,SUM(Amount))/SUM(Cast(Stock as int)) as Rate FROM DailyDetails WHERE Type='Sell' group by Customer_Name order by TotalChips " + drpsorting.SelectedValue + "");
            grdtopbuyers.DataSource = dt;
            grdtopbuyers.DataBind();
        }
        else if (sortExpression == "Rate")
        {
            dt = c.Getdata("SELECT Customer_Name, SUM(Amount) as Amount,SUM(Cast(Stock as int)) as TotalChips,CONVERT(FLOAT,SUM(Amount))/SUM(Cast(Stock as int)) as Rate FROM DailyDetails WHERE Type='Sell' group by Customer_Name order by Rate " + drpsorting.SelectedValue + "");
            grdtopbuyers.DataSource = dt;
            grdtopbuyers.DataBind();
        }
    }


    protected void grdDaily_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            Width.Visible = true;
            Int16 num = Convert.ToInt16(e.CommandArgument);
            txtid1.Text = grdDaily.Rows[num].Cells[0].Text;
            txtType1.Text = grdDaily.Rows[num].Cells[1].Text;
            txtStock1.Text = grdDaily.Rows[num].Cells[2].Text;
            txtAmount1.Text = grdDaily.Rows[num].Cells[3].Text;
            txtCustomerName1.Text = grdDaily.Rows[num].Cells[4].Text;
            txtProftLos1s1.Text = grdDaily.Rows[num].Cells[5].Text;
            txtCreateDate1.Text = grdDaily.Rows[num].Cells[6].Text;
            txtRate1.Text = grdDaily.Rows[num].Cells[7].Text;
            txtComment1.Text = grdDaily.Rows[num].Cells[8].Text;
            txtbalance1.Text = grdDaily.Rows[num].Cells[11].Text;

        }
    }

    protected void Button11_Click(object sender, EventArgs e)
    {
        c.cnopen();
        c.Id = Convert.ToInt32(txtid1.Text);
        c.Customer_Name = txtCustomerName1.Text;
        c.Stock = txtStock1.Text;
        c.CreateDate = Convert.ToDateTime(txtCreateDate1.Text);
        c.Type = txtType1.Text;
        c.Amount = txtAmount1.Text;
        c.Message = txtComment1.Text;
        c.Proft_Loss = txtProftLos1s1.Text;
        c.INSERTDaily();
        Response.Redirect("AdminUser.aspx");
    }
    protected void Button21_Click(object sender, EventArgs e)
    {
        c.cnopen();
        c.Id = Convert.ToInt32(txtid1.Text);
        c.Customer_Name = txtCustomerName1.Text;
        c.Stock = txtStock1.Text;
        c.CreateDate = Convert.ToDateTime(txtCreateDate1.Text);
        c.Type = txtType1.Text;
        c.Amount = txtAmount1.Text;
        c.Message = txtComment1.Text;
        c.Proft_Loss = txtProftLos1s1.Text;
        c.OldBalance = txtbalance1.Text;
        c.UpdateDaily();
        Response.Redirect("AdminUser.aspx");
    }
    protected void Button31_Click(object sender, EventArgs e)
    {
        c.cnopen();
        c.Id = Convert.ToInt32(txtid1.Text);
        c.DeleteDaily();
        Response.Redirect("AdminUser.aspx");
    }
    protected void grdtopprofitable_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType != DataControlRowType.DataRow)
        {
            return;
        }
        int Amount = 0;
        Label lblProfit = (Label)e.Row.FindControl("lblProfit");
        String Customer_Name = (string)((DataRowView)e.Row.DataItem)["Customer_Name"];
        DataSet CustProDetils = c.GetDs("select *,Case when Amount='0' then '0' else Amount-(Cast(Stock as int)*Cast(CurrentRate as float)) end as Profit  from DailyDetails where Customer_Name='" + Customer_Name + "' and Proft_Loss='Profit' ");
        for (int i = 0; i < CustProDetils.Tables[0].Rows.Count; i++)
        {
            Amount += Convert.ToInt32(CustProDetils.Tables[0].Rows[i]["Profit"]);
        }
        lblProfit.Text = Amount.ToString();
    }



    protected void btnshowclick(object sender, EventArgs e)
    {
        dt = c.Getdata("SELECT Details from Customer Where Name='" + drpName.SelectedValue + "'");
        string Details = dt.Rows[0]["Details"].ToString();
        txtdesc.Text = Details;
        dt = c.Getdata("select top 1 Comment from DailyDetails where Customer_Name='" + drpName.SelectedValue + "' order by Id desc ");
        string Comment = dt.Rows[0]["Comment"].ToString();
        txtcommentlast.Text = Comment;
        txtdesc.Visible = true;
        txtcommentlast.Visible = true;
        Button6.Visible = true;
    }


    protected void btnupdateclick(object sender, EventArgs e)
    {
        dt = c.Getdata("update Customer set Details='" + txtdesc .Text + "' Where Name='" + drpName.SelectedValue + "'");
    }
}