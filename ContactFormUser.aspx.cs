using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ContactFormUser : System.Web.UI.Page
{
    User c = new User();
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            BindMasterData();
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
            dt = c.Getdata("select Case when charindex('###', Subject)='0' then Subject else SUBSTRING(Subject,0,charindex('###', Subject)) end as Subject,* from ContactUs where P!=7777 and P!=786 ORDER BY Id Desc");
            RepDetails.DataSource = dt;
            RepDetails.DataBind();
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

        System.Web.UI.HtmlControls.HtmlGenericControl li = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("liProfile");
        System.Web.UI.HtmlControls.HtmlGenericControl li1 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("liMembers");
        System.Web.UI.HtmlControls.HtmlGenericControl li2 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("liContactUs");
        System.Web.UI.HtmlControls.HtmlGenericControl li4 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("liContactform");
        System.Web.UI.HtmlControls.HtmlGenericControl li5 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("libank");
        System.Web.UI.HtmlControls.HtmlGenericControl li6 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("lilogin");
        System.Web.UI.HtmlControls.HtmlGenericControl li7 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("litablenames");
        li.Attributes.Add("class", "");
        li1.Attributes.Add("class", "");
        li2.Attributes.Add("class", "");
        li4.Attributes.Add("class", "active");
        li5.Attributes.Add("class", "");
        li6.Attributes.Add("class", "");
        li7.Attributes.Add("class", "");
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        c.cnopen();
        c.Name = Session["user"].ToString();
        c.Subject = txtSubject.Text + "  ###  " + txtcontacts.Text;
        c.Details = txtDetails.Text;
        c.Active = "NO";
        c.PostedDate = DateTime.Now;
        c.P = 100;
        c.INSERT_Comment();
        lblalert.Visible = true;
    }
    protected void btnSubmitLatest_Click(object sender, EventArgs e)
    {
        dt = c.Getdata("select Case when charindex('###', Subject)='0' then Subject else SUBSTRING(Subject,0,charindex('###', Subject)) end as Subject,* from ContactUs where P!=7777 and P!=786 ORDER BY Id Desc");
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