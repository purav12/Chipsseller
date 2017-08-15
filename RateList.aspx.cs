using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class RateList : System.Web.UI.Page
{
    User c = new User();
    DataTable dt,dt1,dt2;
    string t1, t2, t3,t4;
    int i1, i2;

    protected void Page_Load(object sender, EventArgs e)
    {
        lblalert.Visible = false;
        dt = c.Getdata("select * from RateController Where TableId='1'");
        string Rates = dt.Rows[0]["Rates"].ToString();
        string[] Main = Rates.Split(',');
        lbl1.Text = Main[0];
        lbl2.Text = Main[1];
        lbl3.Text = Main[2];
        lbl4.Text = Main[3];
        lbl5.Text = Main[4];
        lbl6.Text = Main[5];
        lbl7.Text = Main[6];
        lblTagLine.Text = dt.Rows[0]["TagLine"].ToString();
        BindMasterData();
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
        li5.Attributes.Add("class", "");
        li6.Attributes.Add("class", "");
        li7.Attributes.Add("class", "");
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        dt = c.Getdata("select * from Rate Where SpecialPin='"+txtUserId.Text+"'");
        if (dt.Rows.Count == 0)
        {
            lblalert.Visible = true;
        }
        else
        {
            useronly.Visible = true;
            i1 = Convert.ToInt32(dt.Rows[0]["Rate_Id"]);
            t1= dt.Rows[0]["Customer_Name"].ToString();
            i2 = Convert.ToInt32(dt.Rows[0]["TableNumber"]);
            t2 =dt.Rows[0]["SpecialPin"].ToString();
            t3 =  dt.Rows[0]["Remarks"].ToString();
            t4 = dt.Rows[0]["RealName"].ToString();

            dt1 = c.Getdata("select * from RateController Where TableId='"+i2+"'");
            string Rates = dt1.Rows[0]["Rates"].ToString();
            string[] Main = Rates.Split(',');
            lbl1.Text = Main[0];
            lbl2.Text = Main[1];
            lbl3.Text = Main[2];
            lbl4.Text = Main[3];
            lbl5.Text = Main[4];
            lbl6.Text = Main[5];
            lbl7.Text = Main[6];
            lblTagLine.Text = dt1.Rows[0]["TagLine"].ToString();

            lblwelcome.Text = "Welcome " + t4;
            Session["Customer_Name"] = t1;
            dt2 = c.Getdata("select * from DailyDetails Where Customer_Name='" + t1 + "' AND Type != 'Hack' ORDER BY CreateDate DESC");
            grdDaily.DataSource = dt2;
            grdDaily.DataBind();


            dt2 = c.Getdata("select SUM(Amount) AS Total,SUM(cast(Stock as int)) AS Chips,Type,CONVERT(FLOAT,SUM(Amount))/SUM(cast(Stock as int)) AS AverageRate from DailyDetails where Customer_Name='" + t1 + "' AND Type != 'Hack' GROUP BY Type ");
            grdbuysell.DataSource = dt2;
            grdbuysell.DataBind();
            

        }
    }
 
    protected void grdDaily_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grdDaily.PageIndex = e.NewPageIndex;
        dt2 = c.Getdata("select * from DailyDetails Where Customer_Name='" + Session["Customer_Name"] + "' AND Type != 'Hack' ORDER BY CreateDate DESC");
        grdDaily.DataSource = dt2;
        grdDaily.DataBind();
    }

    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}