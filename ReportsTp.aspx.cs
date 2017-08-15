using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class ReportsTp : System.Web.UI.Page
{
    User c = new User();
    DataTable dt, dt1;
    int TotalAmount = 0, TotalStock = 0, TotalProfit = 0, Totalhack = 0, Totalremain = 0, Totalcheat = 0, TotalLoss = 0, Earn = 0, TotalWon = 0, TotalBanned = 0, TotalLost = 0;
    public string StatusChart, StatusChartTitle, YaxeName;
    protected void Page_Load(object sender, EventArgs e)
    {
        FillChart();
        Session["SearchBy"] = "";
        if (Session["admin"] != null)
        {
            Session["Query"] = txtsql.Text;
            BindGrid();

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
        li8.Attributes.Add("class", "");
        li9.Attributes.Add("class", "");
        li10.Attributes.Add("class", "");
        li11.Attributes.Add("class", "");
        li12.Attributes.Add("class", "");
    }



    protected void queryclick_Click(object sender, EventArgs e)
    {
        Session["Query"] = txtsql.Text;
        BindGrid();
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */
    }
    protected void Export_Click(object sender, EventArgs e)
    {
        TotalAmount = 0;
        TotalStock = 0;
        TotalProfit = 0;
        TotalWon = TotalLost = TotalBanned = 0;
        TotalLoss = 0;
        Totalhack = 0;
        Totalcheat = 0;
        Totalremain = 0;
        Earn = 0;
        dt1 = (DataTable)Session["datatable"];
        for (int i = 0; i < dt1.Rows.Count; i++)
        {
            int Amount = int.Parse(dt1.Rows[i]["Amount"].ToString());
            int Stock = int.Parse(dt1.Rows[i]["Stock"].ToString());
            String Status = dt1.Rows[i]["Proft_Loss"].ToString();
            String Type = dt1.Rows[i]["Type"].ToString();
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


        Response.Clear();
        Response.Buffer = true;
        Response.AddHeader("content-disposition", "attachment;filename=GridViewExport.doc");
        Response.Charset = "";
        Response.ContentType = "application/vnd.ms-word ";
        StringWriter sw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(sw);
        grdDaily.AllowPaging = false;
        grdDaily.DataBind();
        grdDaily.RenderControl(hw);
        string temp = sw.ToString() + "<br></br><div><tr><td ><br></br>Total Profit &nbsp&nbsp&nbsp</td><td >" + TotalProfit + " &nbsp Rs</td></tr><tr><td><br></br>Total Loss &nbsp&nbsp&nbsp </td><td>" + TotalLoss + " &nbsp Rs</td></tr><tr><td><br></br>Earn  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>" + Earn + "  (Hacked - " + Totalhack + ",Cheat - " + Totalcheat + "  ) &nbsp Rs</td></tr><tr><td><br></br><br></br><br></br> <tr><td><br></br>Won &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td><td>" + TotalWon + " &nbsp Rs</td></tr> <tr><td><br></br>Lost &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td><td>" + TotalLost + " &nbsp Rs</td></tr> <tr><td><br></br>Banned &nbsp&nbsp&nbsp&nbsp&nbsp</td><td>" + TotalBanned + " &nbsp Rs</td></tr> <br></br><br></br><br></br>  <tr>Chips Remaining &nbsp &nbsp&nbsp&nbsp&nbsp &nbsp&nbsp</td><td>" + (Totalremain-62) + " &nbsp Lakhs</td></tr>  <br></br><br></br><br></br><tr>Total Stock &nbsp &nbsp&nbsp&nbsp&nbsp &nbsp&nbsp</td><td>" + TotalStock + " &nbsp Lakhs</td></tr><tr><td><br></br>Total Amount &nbsp&nbsp&nbsp</td><td>" + TotalAmount + " &nbsp Rs</td></tr></div>";
        Response.Output.Write(temp);
        Response.Flush();
        Response.End();
    }
    public void BindGrid()
    {
        dt = c.Getdata(Session["Query"].ToString());
        Session["datatable"] = dt;
        grdDaily.DataSource = dt;
        TotalAmount = 0;
        TotalStock = 0;
        TotalProfit = 0;
        TotalWon = TotalLost = TotalBanned = 0;
        TotalLoss = 0;
        Totalhack = 0;
        Totalcheat = 0;
        Totalremain = 0;
        Earn = 0;
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
        int final = Totalremain - 62;
        Label1.Text = TotalStock.ToString();
        Label2.Text = TotalAmount.ToString();
        Label3.Text = TotalProfit.ToString();
        Label4.Text = TotalLoss.ToString();
        Label5.Text = Earn.ToString();
        lblhacked.Text = Totalhack.ToString();
        lblcheat.Text = Totalcheat.ToString();
        Label6.Text = TotalWon.ToString();
        Label7.Text = TotalLost.ToString();
        Label8.Text = TotalBanned.ToString();
        Label9.Text = final.ToString();
        grdDaily.DataBind();
    }
    protected void grdDaily_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grdDaily.PageIndex = e.NewPageIndex;

        BindGrid();
    }

    public void FillChart()
    {
        try
        {
            string XaxeName = "";
            DataSet dsPieChart = new DataSet();
            dsPieChart = c.GetDs("select SUM(Amount) AS Total,Proft_Loss from DailyDetailsTp GROUP BY Proft_Loss");
            if (dsPieChart != null && dsPieChart.Tables.Count > 0 && dsPieChart.Tables[0].Rows.Count > 0)
            {
                string[] RandColor = { "109618", "ff9900", "dc3912", "3366cc", "a83bed" };
                Random random = new Random();
                StatusChart = "['Status', 'Amount'],";
                for (int i = 0; i < dsPieChart.Tables[0].Rows.Count; i++)
                {
                    StatusChart += "[";
                    string Status = dsPieChart.Tables[0].Rows[i]["Proft_Loss"].ToString();
                    if (Status.Length > 35) Status = Status.Substring(0, 35) + "...";
                    StatusChart += "'" + Status + "'" + "," + Convert.ToString(Math.Round(Convert.ToDecimal(dsPieChart.Tables[0].Rows[i]["Total"]), 2));
                    StatusChart += "],";
                }
                StatusChart = StatusChart.TrimEnd(',');
                StatusChartTitle = "'Status Chart - '";
                YaxeName = "Amount";
            }
        }
        catch { }
    }



}