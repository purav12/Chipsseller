using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Members : System.Web.UI.Page
{
    User c = new User();
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        BindMasterData();

        if (Session["admin"] != null)
        {
            Response.Redirect("Default.aspx");
        }
        else if (Session["user"] != null)
        {
            Response.Redirect("Default.aspx");
        }

        if (Session["Sent"] != null)
        {
            if (Session["Sent"].ToString() == "Yes")
            {
                lblalert.Visible = true;
                Session["Sent"] = "No";
            }
            else
            {
                lblalert.Visible = false;
            }
        }
        else
        lblalert.Visible = false;

        dt = c.Getdata("select top 20 Case when charindex('###', Subject)='0' then Subject else SUBSTRING(Subject,0,charindex('###', Subject)) end as Subject,* from ContactUs where P!=7777 and P!=786 ORDER BY Id Desc");
        RepDetails.DataSource = dt;
        RepDetails.DataBind();
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
        li4.Attributes.Add("class", "active");
        li5.Attributes.Add("class", "");
        li6.Attributes.Add("class", "");
        li7.Attributes.Add("class", "");
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        c.cnopen();
        c.Name = txtName.Text;
        c.Subject = txtSubject.Text +"  ###  "+ txtcontacts.Text;
        c.Details = txtDetails.Text;
        c.Active = "NO";
        c.PostedDate = DateTime.Now;
        c.P = 100;
        c.INSERT_Comment();
        lblalert.Visible = true;
        Session["Sent"] = "Yes";
        Response.Redirect("ContactForm.aspx");

    }

    protected void btnSubmitLatest_Click(object sender, EventArgs e)
    {
        dt = c.Getdata("select top 20 Case when charindex('###', Subject)='0' then Subject else SUBSTRING(Subject,0,charindex('###', Subject)) end as Subject,* from ContactUs where P!=7777 and P!=786 ORDER BY Id Desc");
        RepDetails.DataSource = dt;
        RepDetails.DataBind();

    }


    protected void btnbtnbuyzynga_Click(object sender, EventArgs e)
    {
        Response.Redirect("Zynga.aspx");

    }

    protected void btnbtnbuyTP_Click(object sender, EventArgs e)
    {
        Response.Redirect("TeenPatti.aspx");

    }
    
}