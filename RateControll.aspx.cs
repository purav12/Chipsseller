using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class RateControll : System.Web.UI.Page
{
    User c = new User();
    DataTable dt, dt1;
    protected void Page_Load(object sender, EventArgs e)
    {

        BindMasterData();

        Width.Visible = false;
        Hight.Visible = false;
        if (Session["admin"] != null)
        {
            dt = c.Getdata("select * from Rate");
            grdRate.DataSource = dt;
            grdRate.DataBind();

            dt1 = c.Getdata("select * from RateController");
            grdRateControll.DataSource = dt1;
            grdRateControll.DataBind();
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



    protected void grdRate_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            Width.Visible = true;
            Int16 num = Convert.ToInt16(e.CommandArgument);
            TextBox1.Text = grdRate.Rows[num].Cells[0].Text;
            TextBox2.Text = grdRate.Rows[num].Cells[1].Text;
            TextBox3.Text = grdRate.Rows[num].Cells[2].Text;
            TextBox4.Text = grdRate.Rows[num].Cells[3].Text;
            TextBox5.Text = grdRate.Rows[num].Cells[4].Text;
            TextBox6.Text = grdRate.Rows[num].Cells[5].Text;
        }
    }

    protected void grdRateControll_RowCommand1(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            Hight.Visible = true;
            Int16 num = Convert.ToInt16(e.CommandArgument);
            string Rates = grdRateControll.Rows[num].Cells[2].Text;
            string[] Main = Rates.Split(',');


            TextBox7.Text = grdRateControll.Rows[num].Cells[0].Text;
            TextBox8.Text = grdRateControll.Rows[num].Cells[1].Text;

            TextBox9.Text = Main[0];
            TextBox10.Text = Main[1];
            TextBox11.Text = Main[2];
            TextBox12.Text = Main[3];
            TextBox13.Text = Main[4];
            TextBox14.Text = Main[5];
            TextBox15.Text = Main[6];
            TextBox16.Text = grdRateControll.Rows[num].Cells[3].Text;
            TextBox17.Text = grdRateControll.Rows[num].Cells[4].Text;
        }
    }

    #region Rate Insert Update Delete
  
    protected void Button1_Click(object sender, EventArgs e)
    {
        c.cnopen();
        c.Rate_Id = Convert.ToInt32(TextBox1.Text);
        c.Customer_Name = TextBox2.Text;
        c.TableNumber = Convert.ToInt32(TextBox3.Text);
        c.SpecialPin = TextBox4.Text;
        c.RealName = TextBox5.Text;
        c.Remarks = TextBox6.Text;
        c.INSERTRate();
        c.cnclose();
        Response.Redirect("RateControll.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        c.cnopen();
        c.Rate_Id = Convert.ToInt32(TextBox1.Text);
        c.Customer_Name = TextBox2.Text;
        c.TableNumber = Convert.ToInt32(TextBox3.Text);
        c.SpecialPin = TextBox4.Text;
        c.RealName = TextBox5.Text;
        c.Remarks = TextBox6.Text;
        c.UPDATERate();
        c.cnclose();
        Response.Redirect("RateControll.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        c.cnopen();
        c.Rate_Id = Convert.ToInt32(TextBox1.Text);
        c.Customer_Name = TextBox2.Text;
        c.TableNumber = Convert.ToInt32(TextBox3.Text);
        c.SpecialPin = TextBox4.Text;
        c.RealName = TextBox5.Text;
        c.Remarks = TextBox6.Text;
        c.DELETERate();
        c.cnclose();
        Response.Redirect("RateControll.aspx");
    }

    #endregion


    #region Rate Insert Update Delete
    protected void Insert_Click(object sender, EventArgs e)
    {
        string Joined = "" + TextBox9.Text + "," + TextBox10.Text + "," + TextBox11.Text + "," + TextBox12.Text + "," + TextBox13.Text + "," + TextBox14.Text + "," + TextBox15.Text + "";
        c.cnopen();
        c.Id = Convert.ToInt32(TextBox7.Text);
        c.TableId = Convert.ToInt32(TextBox8.Text);
        c.Rates = Joined;
        c.TagLine = TextBox16.Text;
        c.Remarks = TextBox17.Text;
        c.INSERTRateController();
        c.cnclose();
        Response.Redirect("RateControll.aspx");
    }
    protected void Update_Click(object sender, EventArgs e)
    {
        string Joined = "" + TextBox9.Text + "," + TextBox10.Text + "," + TextBox11.Text + "," + TextBox12.Text + "," + TextBox13.Text + "," + TextBox14.Text + "," + TextBox15.Text + "";
        c.cnopen();
        c.Id = Convert.ToInt32(TextBox7.Text);
        c.TableId = Convert.ToInt32(TextBox8.Text);
        c.Rates = Joined;
        c.TagLine = TextBox16.Text;
        c.Remarks = TextBox17.Text;
        c.UPDATERateController();
        c.cnclose();
        Response.Redirect("RateControll.aspx");
    }
    protected void Delete_Click(object sender, EventArgs e)
    {
        string Joined = "" + TextBox9.Text + "," + TextBox10.Text + "," + TextBox11.Text + "," + TextBox12.Text + "," + TextBox13.Text + "," + TextBox14.Text + "," + TextBox15.Text + "";
        c.cnopen();
        c.Id = Convert.ToInt32(TextBox7.Text);
        c.TableId = Convert.ToInt32(TextBox8.Text);
        c.Rates = Joined;
        c.TagLine = TextBox16.Text;
        c.Remarks = TextBox17.Text;
        c.DELETERateController();
        c.cnclose();
        Response.Redirect("RateControll.aspx");
    }
    #endregion

}