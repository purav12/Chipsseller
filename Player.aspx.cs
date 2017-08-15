using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Player : System.Web.UI.Page
{
    User c = new User();
    DataTable dt,dt1;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblalert.Visible = false;
        if (Session["user"] != null)
        {

            BindMasterData();


            if (!IsPostBack)
            {
                string Id = Request.QueryString["Id"].ToString();
                dt = c.Getdata("select * from [User] Where Id ='" + Id + "'");
                string Name = dt.Rows[0]["UserName"].ToString();
                RepDetails.DataSource = dt;
                RepDetails.DataBind();

                dt1 = c.Getdata("select * from Limit Where Name ='" + Name + "'");
                GridView1.DataSource = dt1;
                GridView1.DataBind();
            }
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
        li1.Attributes.Add("class", "active");
        li2.Attributes.Add("class", "");
        li4.Attributes.Add("class", "");
        li5.Attributes.Add("class", "");
        li6.Attributes.Add("class", "");
        li7.Attributes.Add("class", "");
    }



    protected void btnMsg_Click(object sender, EventArgs e)
    {
        string Id = Request.QueryString["Id"].ToString();
        dt = c.Getdata("select * from [User] Where Id ='" + Id + "'");
        string Name = dt.Rows[0]["UserName"].ToString();
        c.cnopen();
        c.UserName = Name;
        c.Name = Session["user"].ToString();
        c.Message = txtuser.Text;
        c.Active = "No";
        c.P = 1;
        c.Remarks = "Player.aspx";
        c.INSERTMessage();
        lblalert.Visible = true;
    }
}