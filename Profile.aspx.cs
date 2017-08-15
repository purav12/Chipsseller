using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class UserIndex : System.Web.UI.Page
{
    User c = new User();
    DataTable dt, dt1,dt2;
    protected void Page_Load(object sender, EventArgs e)
    {
        BindMasterData();
        messagebox.Visible = false;
        if (Session["user"] != null)
        {
            lblwelcome.Text = "Welcome " + Session["user"] + "";
            dt = c.Getdata("select * from [User] where UserName='" + Session["user"] + "'");
            txtId.Text = dt.Rows[0]["Id"].ToString();
            TextBox txtusername = new TextBox();
            txtusername.Text = dt.Rows[0]["UserName"].ToString();
            dt1 = c.Getdata("select * from Message where UserName='" + txtusername.Text + "'");
            if (dt1.Rows.Count != 0)
            {
                txtmsgid.Text = dt1.Rows[0]["Id"].ToString();
            }
            GridView1.DataSource = dt1;
            GridView1.DataBind();
            DataList1.DataSource = dt;
            DataList1.DataBind();

            dt2 = c.Getdata("select * from Limit where Name='" + Session["user"] + "'");
            GridView2.DataSource = dt2;
            GridView2.DataBind();

            if(dt2.Rows.Count == 0)
            {
                limitlol.Visible = true;
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
        li.Attributes.Add("class", "active");
        li1.Attributes.Add("class", "");
        li2.Attributes.Add("class", "");        
        li4.Attributes.Add("class", "");
        li5.Attributes.Add("class", "");
        li6.Attributes.Add("class", "");
        li7.Attributes.Add("class", "");
    }



    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            messagebox.Visible = true;
            Int16 num = Convert.ToInt16(e.CommandArgument);
            msgfrom.Text = GridView1.Rows[num].Cells[1].Text;
            message.Text = GridView1.Rows[num].Cells[2].Text;
        }
    }
 
    protected void btnlimitset_Click(object sender, EventArgs e)
    {
        Response.Redirect("Limit.aspx");
    }
}