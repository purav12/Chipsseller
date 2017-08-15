using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Dashboard : System.Web.UI.Page
{
    User c = new User();
    GridView maingrid = new GridView();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["admin"] != null)
            {
                BindMasterData();
                BindallGrids();
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
        li10.Attributes.Add("class", "");
        li11.Attributes.Add("class", "");
        li12.Attributes.Add("class", "");
    }
    public void BindallGrids()
    {
        DataSet Ds = new DataSet();
        DataTable dt = new DataTable();
        Ds = c.GetDs("select Count(*) as TotalOrder,Day(CreateDate) as Date,Sum(cast(Stock as int)) as Stock,Sum(cast(Amount as int)) as Amount,sum(Amount)-(sum(Cast(Stock as int))*avg(Cast(CurrentRate as float)))  as Profit,avg(Cast(CurrentRate as float)) as CurrentRate from DailyDetails  where CreateDate BETWEEN dateadd(hour,-24,GETDATE()) and getdate()  and Proft_Loss='Profit'  GROUP BY DATEPART([hour], CreateDate),Day(CreateDate)  ORDER BY datepart([hour], CreateDate) Asc");
        dt = Ds.Tables[0];
        grdlast24.DataSource = dt;
        grdlast24.DataBind();

        Ds = c.GetDs("select Count(*) as TotalOrder,Day(CreateDate) as Date,Sum(cast(Stock as int)) as Stock,Sum(cast(Amount as int)) as Amount,sum(Amount)-(sum(Cast(Stock as int))*avg(Cast(CurrentRate as float)))  as Profit,avg(Cast(CurrentRate as float)) as CurrentRate  from DailyDetails where  CreateDate between dateadd(day,-7,dateadd(dd, 0, datediff(dd, 0, getdate()))) and dateadd(dd, 0, datediff(dd, 0, getdate())) and Proft_Loss='Profit' group by Day(CreateDate) order by Day(CreateDate) Asc  ");
        dt = Ds.Tables[0];
        GridView1.DataSource = dt;
        GridView1.DataBind();

        Ds = c.GetDs("select Count(*) TotalOrder,CASE Month(CreateDate)         When 1 then 'January'		When 2 then 'February'		When 3 then 'March'		When 4 then 'April'		When 5 then 'May'		When 6 then 'June'		When 7 then 'July'		When 8 then 'August'		When 9 then 'September'		When 10 then 'October'		When 11 then 'November'		When 12 then 'December'END as Month,Sum(cast(Stock as int)) as Stock,Sum(cast(Amount as int)) as Amount,sum(Amount)-(sum(Cast(Stock as int))*avg(Cast(CurrentRate as float)))  as Profit,avg(Cast(CurrentRate as float)) as CurrentRate  from DailyDetails where month(CreateDate)= month(getdate()) and year(CreateDate)= year(getdate())  and Proft_Loss='Profit' group by Month(CreateDate) order by Month(CreateDate) Asc  ");
        dt = Ds.Tables[0];
        GridView2.DataSource = dt;
        GridView2.DataBind();

        Ds = c.GetDs("select Count(*) TotalOrder,CASE Month(CreateDate)         When 1 then 'January'		When 2 then 'February'		When 3 then 'March'		When 4 then 'April'		When 5 then 'May'		When 6 then 'June'		When 7 then 'July'		When 8 then 'August'		When 9 then 'September'		When 10 then 'October'		When 11 then 'November'		When 12 then 'December'END as Month,Sum(cast(Stock as int)) as Stock,Sum(cast(Amount as int)) as Amount,sum(Amount)-(sum(Cast(Stock as int))*avg(Cast(CurrentRate as float)))  as Profit,avg(Cast(CurrentRate as float)) as CurrentRate  from DailyDetails where CONVERT(CHAR(10),CreateDate,101) BETWEEN CONVERT(CHAR(10),DATEADD(dd,-(DAY(DATEADD(mm,2,getdate()))-1),DATEADD(mm,-1,getdate())),101) AND CONVERT(CHAR(10),DATEADD(s,-1,DATEADD(mm, DATEDIFF(m,0,GETDATE()),0)),101)  and Proft_Loss='Profit' group by Month(CreateDate) order by Month(CreateDate) Asc  ");
        dt = Ds.Tables[0];
        GridView3.DataSource = dt;
        GridView3.DataBind();

        Ds = c.GetDs("select Count(*) TotalOrder,CASE Month(CreateDate)         When 1 then 'January'		When 2 then 'February'		When 3 then 'March'		When 4 then 'April'		When 5 then 'May'		When 6 then 'June'		When 7 then 'July'		When 8 then 'August'		When 9 then 'September'		When 10 then 'October'		When 11 then 'November'		When 12 then 'December'END as Month,Sum(cast(Stock as int)) as Stock,Sum(cast(Amount as int)) as Amount,sum(Amount)-(sum(Cast(Stock as int))*avg(Cast(CurrentRate as float)))  as Profit,avg(Cast(CurrentRate as float)) as CurrentRate  from DailyDetails where MONTH(CreateDate) BETWEEN MONTH(DATEADD(MONTH,-3,GETDATE())) AND MONTH(GETDATE())  and year(CreateDate)= year(getdate()) and Proft_Loss='Profit' group by Month(CreateDate) order by Month(CreateDate) Asc ");
        dt = Ds.Tables[0];
        GridView4.DataSource = dt;
        GridView4.DataBind();

        Ds = c.GetDs("select Count(*) TotalOrder,CASE Month(CreateDate)         When 1 then 'January'		When 2 then 'February'		When 3 then 'March'		When 4 then 'April'		When 5 then 'May'		When 6 then 'June'		When 7 then 'July'		When 8 then 'August'		When 9 then 'September'		When 10 then 'October'		When 11 then 'November'		When 12 then 'December'END as Month,Sum(cast(Stock as int)) as Stock,Sum(cast(Amount as int)) as Amount,sum(Amount)-(sum(Cast(Stock as int))*avg(Cast(CurrentRate as float)))  as Profit,avg(Cast(CurrentRate as float)) as CurrentRate  from DailyDetails where year(CreateDate)= year(getdate()) and Proft_Loss='Profit' group by Month(CreateDate) order by Month(CreateDate) Asc  ");
        dt = Ds.Tables[0];
        GridView5.DataSource = dt;
        GridView5.DataBind();

        Ds = c.GetDs("select Count(*) TotalOrder,CASE Month(CreateDate)         When 1 then 'January'		When 2 then 'February'		When 3 then 'March'		When 4 then 'April'		When 5 then 'May'		When 6 then 'June'		When 7 then 'July'		When 8 then 'August'		When 9 then 'September'		When 10 then 'October'		When 11 then 'November'		When 12 then 'December'END as Month,Sum(cast(Stock as int)) as Stock,Sum(cast(Amount as int)) as Amount,sum(Amount)-(sum(Cast(Stock as int))*avg(Cast(CurrentRate as float)))  as Profit,avg(Cast(CurrentRate as float)) as CurrentRate  from DailyDetails where year(CreateDate)= year(DATEADD(YEAR,-1,GETDATE())) and Proft_Loss='Profit' group by Month(CreateDate) order by Month(CreateDate) Asc ");
        dt = Ds.Tables[0];
        GridView6.DataSource = dt;
        GridView6.DataBind();



    }
}