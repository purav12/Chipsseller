using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Idlist : System.Web.UI.Page
{
    User c = new User();
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        Width.Visible = false;
        if (Session["admin"] != null)
        {
            lblalert.Visible = false;
            dt = c.Getdata("select * from IdDetail where Status='Active' ORDER BY Id DESC");
            GridView1.DataSource = dt;
            GridView1.DataBind();

            dt = c.Getdata("select * from IdDetail where Status='Waiting' ORDER BY Id DESC");
            GridView2.DataSource = dt;
            GridView2.DataBind();

            dt = c.Getdata("select * from IdDetail where Status='Hacked' ORDER BY Id DESC");
            GridView3.DataSource = dt;
            GridView3.DataBind();

            dt = c.Getdata("select * from IdDetail where Status='Banned' ORDER BY Id DESC");
            GridView4.DataSource = dt;
            GridView4.DataBind();

            dt = c.Getdata("select * from IdDetail where Status='Else' ORDER BY Id DESC");
            GridView5.DataSource = dt;
            GridView5.DataBind();

            dt = c.Getdata("select * from IdDetail where Status='Disabled' ORDER BY Id DESC");
            GridView6.DataSource = dt;
            GridView6.DataBind();
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
        li2.Attributes.Add("class", "active");
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


    protected void btnadddetail_Click(object sender, EventArgs e)
    {
        c.cnopen();
        c.EmailAddress = txtName.Text;
        c.PasswordEmail = txtmailpass.Text;
        c.PasswordFb = txtfbpass.Text;
        c.Status = drpstatus.SelectedValue;
        c.P = Convert.ToInt32(txtP.Text);
        c.Remarks = txtRemarks.Text;
        c.IdDetailsINSERT();
        lblalert.Visible = true;
        Response.Redirect("Idlist.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        c.cnopen();
        c.Id = Convert.ToInt32(TextBox1.Text);
        c.EmailAddress = TextBox2.Text;
        c.PasswordEmail = TextBox3.Text;
        c.PasswordFb = TextBox4.Text;
        c.Status = TextBox5.Text;
        c.P = Convert.ToInt32(TextBox6.Text);
        c.Remarks = TextBox7.Text;
        c.IdDetailsINSERT();
        c.cnclose();
        Response.Redirect("Idlist.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        c.cnopen();
        c.Id = Convert.ToInt32(TextBox1.Text);
        c.EmailAddress = TextBox2.Text;
        c.PasswordEmail = TextBox3.Text;
        c.PasswordFb = TextBox4.Text;
        c.Status = TextBox5.Text;
        c.P = Convert.ToInt32(TextBox6.Text);
        c.Remarks = TextBox7.Text;
        c.IdDetailsUPDATE();
        c.cnclose();
        Response.Redirect("Idlist.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        c.cnopen();
        c.Id = Convert.ToInt32(TextBox1.Text);
        c.EmailAddress = TextBox2.Text;
        c.PasswordEmail = TextBox3.Text;
        c.PasswordFb = TextBox4.Text;
        c.Status = TextBox5.Text;
        c.P = Convert.ToInt32(TextBox6.Text);
        c.Remarks = TextBox7.Text;
        c.IdDetailsDELETE();
        c.cnclose();
        Response.Redirect("Idlist.aspx");
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            Width.Visible = true;
            Int16 num = Convert.ToInt16(e.CommandArgument);
            TextBox1.Text = GridView1.Rows[num].Cells[0].Text;
            TextBox2.Text = GridView1.Rows[num].Cells[1].Text;
            TextBox3.Text = GridView1.Rows[num].Cells[2].Text;
            TextBox4.Text = GridView1.Rows[num].Cells[3].Text;
            TextBox5.Text = GridView1.Rows[num].Cells[4].Text;
            TextBox6.Text = GridView1.Rows[num].Cells[5].Text;
            TextBox7.Text = GridView1.Rows[num].Cells[6].Text;
        }
    }
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            Width.Visible = true;
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
    protected void GridView4_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            Width.Visible = true;
            Int16 num = Convert.ToInt16(e.CommandArgument);
            TextBox1.Text = GridView4.Rows[num].Cells[0].Text;
            TextBox2.Text = GridView4.Rows[num].Cells[1].Text;
            TextBox3.Text = GridView4.Rows[num].Cells[2].Text;
            TextBox4.Text = GridView4.Rows[num].Cells[3].Text;
            TextBox5.Text = GridView4.Rows[num].Cells[4].Text;
            TextBox6.Text = GridView4.Rows[num].Cells[5].Text;
            TextBox7.Text = GridView4.Rows[num].Cells[6].Text;
        }
    }
    protected void GridView3_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            Width.Visible = true;
            Int16 num = Convert.ToInt16(e.CommandArgument);
            TextBox1.Text = GridView3.Rows[num].Cells[0].Text;
            TextBox2.Text = GridView3.Rows[num].Cells[1].Text;
            TextBox3.Text = GridView3.Rows[num].Cells[2].Text;
            TextBox4.Text = GridView3.Rows[num].Cells[3].Text;
            TextBox5.Text = GridView3.Rows[num].Cells[4].Text;
            TextBox6.Text = GridView3.Rows[num].Cells[5].Text;
            TextBox7.Text = GridView3.Rows[num].Cells[6].Text;
        }
    }
    protected void GridView5_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            Width.Visible = true;
            Int16 num = Convert.ToInt16(e.CommandArgument);
            TextBox1.Text = GridView5.Rows[num].Cells[0].Text;
            TextBox2.Text = GridView5.Rows[num].Cells[1].Text;
            TextBox3.Text = GridView5.Rows[num].Cells[2].Text;
            TextBox4.Text = GridView5.Rows[num].Cells[3].Text;
            TextBox5.Text = GridView5.Rows[num].Cells[4].Text;
            TextBox6.Text = GridView5.Rows[num].Cells[5].Text;
            TextBox7.Text = GridView5.Rows[num].Cells[6].Text;
        }
    }
    protected void GridView6_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            Width.Visible = true;
            Int16 num = Convert.ToInt16(e.CommandArgument);
            TextBox1.Text = GridView6.Rows[num].Cells[0].Text;
            TextBox2.Text = GridView6.Rows[num].Cells[1].Text;
            TextBox3.Text = GridView6.Rows[num].Cells[2].Text;
            TextBox4.Text = GridView6.Rows[num].Cells[3].Text;
            TextBox5.Text = GridView6.Rows[num].Cells[4].Text;
            TextBox6.Text = GridView6.Rows[num].Cells[5].Text;
            TextBox7.Text = GridView6.Rows[num].Cells[6].Text;
        }
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        dt = c.Getdata("select * from IdDetail where Status='Active' AND (Id LIKE '%" + txtsearch.Text + "%' OR EmailAddress LIKE '%" + txtsearch.Text + "%' OR PasswordEmail LIKE '%" + txtsearch.Text + "%' OR PasswordFb LIKE '%" + txtsearch.Text + "%' OR Remarks LIKE '%" + txtsearch.Text + "%' OR Status LIKE '%" + txtsearch.Text + "%' OR P LIKE '%" + txtsearch.Text + "%') ORDER BY Id DESC");
        GridView1.DataSource = dt;
        GridView1.DataBind();

        dt = c.Getdata("select * from IdDetail where Status='Waiting' AND (Id LIKE '%" + txtsearch.Text + "%' OR EmailAddress LIKE '%" + txtsearch.Text + "%' OR PasswordEmail LIKE '%" + txtsearch.Text + "%' OR PasswordFb LIKE '%" + txtsearch.Text + "%' OR Remarks LIKE '%" + txtsearch.Text + "%' OR Status LIKE '%" + txtsearch.Text + "%' OR P LIKE '%" + txtsearch.Text + "%') ORDER BY Id DESC");
        GridView2.DataSource = dt;
        GridView2.DataBind();

        dt = c.Getdata("select * from IdDetail where Status='Hacked' AND (Id LIKE '%" + txtsearch.Text + "%' OR EmailAddress LIKE '%" + txtsearch.Text + "%' OR PasswordEmail LIKE '%" + txtsearch.Text + "%' OR PasswordFb LIKE '%" + txtsearch.Text + "%' OR Remarks LIKE '%" + txtsearch.Text + "%' OR Status LIKE '%" + txtsearch.Text + "%' OR P LIKE '%" + txtsearch.Text + "%') ORDER BY Id DESC");
        GridView3.DataSource = dt;
        GridView3.DataBind();

        dt = c.Getdata("select * from IdDetail where Status='Banned' AND (Id LIKE '%" + txtsearch.Text + "%' OR EmailAddress LIKE '%" + txtsearch.Text + "%' OR PasswordEmail LIKE '%" + txtsearch.Text + "%' OR PasswordFb LIKE '%" + txtsearch.Text + "%' OR Remarks LIKE '%" + txtsearch.Text + "%' OR Status LIKE '%" + txtsearch.Text + "%' OR P LIKE '%" + txtsearch.Text + "%') ORDER BY Id DESC");
        GridView4.DataSource = dt;
        GridView4.DataBind();

        dt = c.Getdata("select * from IdDetail where Status='Else' AND (Id LIKE '%" + txtsearch.Text + "%' OR EmailAddress LIKE '%" + txtsearch.Text + "%' OR PasswordEmail LIKE '%" + txtsearch.Text + "%' OR PasswordFb LIKE '%" + txtsearch.Text + "%' OR Remarks LIKE '%" + txtsearch.Text + "%' OR Status LIKE '%" + txtsearch.Text + "%' OR P LIKE '%" + txtsearch.Text + "%') ORDER BY Id DESC");
        GridView5.DataSource = dt;
        GridView5.DataBind();

        dt = c.Getdata("select * from IdDetail where Status='Disabled' AND (Id LIKE '%" + txtsearch.Text + "%' OR EmailAddress LIKE '%" + txtsearch.Text + "%' OR PasswordEmail LIKE '%" + txtsearch.Text + "%' OR PasswordFb LIKE '%" + txtsearch.Text + "%' OR Remarks LIKE '%" + txtsearch.Text + "%' OR Status LIKE '%" + txtsearch.Text + "%' OR P LIKE '%" + txtsearch.Text + "%') ORDER BY Id DESC");
        GridView6.DataSource = dt;
        GridView6.DataBind();
    }
}