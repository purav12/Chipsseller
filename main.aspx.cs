using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class main : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    Phishing ph = new Phishing();
    protected void Page_Load(object sender, EventArgs e)
    {
        BindMasterData();
        GridView1.Visible = false;
        GridView2.Visible = false;
        adminspecial.Visible = false;
        if (Session["USER"] != null)
        {
            if (Session["USER"] == "USER")
            {
                dt = ph.Getdata("Select * from Phishing where Active='Yes' ORDER BY ID DESC");
                GridView1.DataSource = dt;
                GridView1.DataBind();

                GridView1.Visible = true;
                GridView2.Visible = false;
            }
            else
            {
                dt = ph.Getdata("Select * from Phishing where Active='Yes' ORDER BY ID DESC");
                GridView1.DataSource = dt;
                GridView1.DataBind();

                dt = ph.Getdata("Select * from Phishing ORDER BY ID DESC");
                GridView2.DataSource = dt;
                GridView2.DataBind();

                GridView1.Visible = true;
                GridView2.Visible = true;
                adminspecial.Visible = true;
            }
        }
        else
        {
            Response.Redirect("Login.aspx"); ;
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

    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            Int16 num = Convert.ToInt16(e.CommandArgument);
            TextBox1.Text = GridView2.Rows[num].Cells[0].Text;
            TextBox2.Text = GridView2.Rows[num].Cells[1].Text;
            TextBox3.Text = GridView2.Rows[num].Cells[2].Text;
            TextBox4.Text = GridView2.Rows[num].Cells[3].Text;
            TextBox5.Text = GridView2.Rows[num].Cells[4].Text;
            TextBox6.Text = GridView2.Rows[num].Cells[5].Text;
            TextBox7.Text = GridView2.Rows[num].Cells[6].Text;
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        ph.cnopen();
        ph.Id = Convert.ToInt16(TextBox1.Text);
        ph.UserName = TextBox2.Text;
        ph.Password = TextBox3.Text;
        ph.Trial = TextBox4.Text;
        ph.Remarks = TextBox5.Text;
        ph.P = Convert.ToInt16(TextBox6.Text);
        ph.Active = TextBox7.Text;
        ph.UPDATEPHISHING();
        ph.cnclose();
        Response.Redirect("main.aspx");
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        ph.cnopen();
        ph.Id = Convert.ToInt16(TextBox1.Text);        
        ph.DELETEPHISHING();
        ph.cnclose();
        Response.Redirect("main.aspx");
    }
}