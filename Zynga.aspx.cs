﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Zynga : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    User c = new User();
    protected void Page_Load(object sender, EventArgs e)
    {
        BindMasterData();
        try
        {
            BindCartData();
        }
        catch
        {
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
        li5.Attributes.Add("class", "");
        li6.Attributes.Add("class", "");
        li7.Attributes.Add("class", "");
    }

    public void BindCartData()
    {
        dt = c.Getdata("select * from CartData where Type='Zynga' order by DisplayOrder");
        lblname1.Text = dt.Rows[0]["Name"].ToString();
        lblprice1.Text = dt.Rows[0]["Value"].ToString() + " USD";

        lblname2.Text = dt.Rows[1]["Name"].ToString();
        lblprice2.Text = dt.Rows[1]["Value"].ToString() + " USD";

        lblname3.Text = dt.Rows[2]["Name"].ToString();
        lblprice3.Text = dt.Rows[2]["Value"].ToString() + " USD";

        lblname4.Text = dt.Rows[3]["Name"].ToString();
        lblprice4.Text = dt.Rows[3]["Value"].ToString() + " USD";

        lblname5.Text = dt.Rows[4]["Name"].ToString();
        lblprice5.Text = dt.Rows[4]["Value"].ToString() + " USD";

        lblnameextra.Text = "Instant";
        lblpriceextra.Text = "PAY";

     

    }


}