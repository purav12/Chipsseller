using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Customers : System.Web.UI.Page
{
    User c = new User();
    DataTable dt, dt1, dt2;
    string count;
    protected void Page_Load(object sender, EventArgs e)
    {
        Width.Visible = false;
        Commondoit.Visible = false;
        divulta.Visible = true;
        if (drpcitylist.SelectedValue == "Other")
        {
            Commondoit.Visible = true;
            divulta.Visible = false;
        }

        dt = c.Getdata("select * from Customer Where Refrence='Yes' Order By P DESC ");
        grdDaily.DataSource = dt;
        grdDaily.DataBind();

        dt = c.Getdata("select * from Customer Where Refrence='No' ORDER BY P DESC");
        grdDaily1.DataSource = dt;
        grdDaily1.DataBind();



        dt2 = c.Getdata("SELECT COUNT(*) AS Count FROM Customer");
        count = dt2.Rows[0]["Count"].ToString();
        lblcount.Text = count;

        BindMasterData();

        if (Session["admin"] != null)
        {

        }
        else
        {
            Response.Redirect("default.aspx");
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
        li1.Attributes.Add("class", "active");
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



    protected void btnAdd_Click(object sender, EventArgs e)
    {
        c.cnopen();
        c.Name = txtNamecus.Text;
        c.Mobile_Number = txtNumber.Text;
        c.Refrence = drpactivestatus.SelectedValue;
        if (drpcitylist.SelectedValue == "Other")
        {
            c.Remarks = txtcountry.Text;
        }
        else
        {
            c.Remarks = drpcitylist.SelectedValue;
        }
        c.P = Convert.ToInt32(txtP.Text);
        c.INSERTCustomer();
        Response.Redirect("Customers.aspx");
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        dt = c.Getdata("select * from Customer where (Refrence='Yes') and Name LIKE '%" + txtsearch.Text + "%' OR Mobile_Number LIKE '%" + txtsearch.Text + "%'   ORDER BY P DESC");
        grdDaily.DataSource = dt;
        grdDaily.DataBind();

        dt = c.Getdata("select * from Customer where (Refrence='No') and Name LIKE '%" + txtsearch.Text + "%' OR Mobile_Number LIKE '%" + txtsearch.Text + "%'   ORDER BY P DESC");
        grdDaily1.DataSource = dt;
        grdDaily1.DataBind();

    }
    protected void grdDaily1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            Width.Visible = true;
            Int16 num = Convert.ToInt16(e.CommandArgument);
            TextBox1.Text = grdDaily1.Rows[num].Cells[0].Text;
            TextBox2.Text = grdDaily1.Rows[num].Cells[1].Text;
            TextBox3.Text = grdDaily1.Rows[num].Cells[2].Text;
            TextBox4.Text = grdDaily1.Rows[num].Cells[3].Text;
            TextBox5.Text = grdDaily1.Rows[num].Cells[4].Text;
            TextBox6.Text = grdDaily1.Rows[num].Cells[5].Text;
            TextBox7.Text = grdDaily1.Rows[num].Cells[6].Text;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        c.cnopen();
        c.Id = Convert.ToInt32(TextBox1.Text);
        c.Name = TextBox2.Text;
        c.Mobile_Number = TextBox3.Text;
        c.Refrence = TextBox4.Text;
        c.Details = TextBox5.Text;
        c.P = Convert.ToInt32(TextBox6.Text);
        c.Remarks = TextBox7.Text;
        c.INSERTCustomer();
        c.cnclose();
        Response.Redirect("Customers.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        c.cnopen();
        c.Id = Convert.ToInt32(TextBox1.Text);
        c.Name = TextBox2.Text;
        c.Mobile_Number = TextBox3.Text;
        c.Refrence = TextBox4.Text;
        c.Details = TextBox5.Text;
        c.P = Convert.ToInt32(TextBox6.Text);
        c.Remarks = TextBox7.Text;
        c.UPDATECustomer();
        c.cnclose();
        Response.Redirect("Customers.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        c.cnopen();
        c.Id = Convert.ToInt32(TextBox1.Text);
        c.DELETECustomer();
        c.cnclose();
        Response.Redirect("Customers.aspx");
    }

    protected void gvDetails_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Literal ltrstatus = (Literal)e.Row.FindControl("ltrstatus");
            HiddenField hdnStatusid = (HiddenField)e.Row.FindControl("hdnStatusid");
            string CommentTempZP = "";
            string CommentTempTP = "";
            dt = c.Getdata("select Name from Customer where Id='" + hdnStatusid.Value + "' ");
            string Name = dt.Rows[0]["Name"].ToString();//Customer Name

            #region ZPComment
            dt = c.Getdata("select top 1 Comment from DailyDetails where Customer_Name='" + Name + "' order by Id desc ");
            if (dt.Rows.Count != 0)
            {
                string Comment = dt.Rows[0]["Comment"].ToString();
                if (Comment != "")
                {
                    CommentTempZP += Comment;
                }
                else
                {
                    CommentTempZP += "Clear";
                }
            }
            else
            {
                CommentTempZP += "Clear";
            }
            CommentTempZP = "ZP: " + CommentTempZP;
            #endregion
            #region TPComment
            dt = c.Getdata("select top 1 Comment from DailyDetailsTP where Customer_Name='" + Name + "' order by Id desc ");
            if (dt.Rows.Count != 0)
            {
                string Comment = dt.Rows[0]["Comment"].ToString();
                if (Comment != "")
                {
                    CommentTempTP += Comment;
                }
                else
                {
                    CommentTempTP += "Clear";
                }
            }
            else
            {
                CommentTempTP += "Clear";
            }
            CommentTempTP = "TP: " + CommentTempTP;
            #endregion

            ltrstatus.Text = CommentTempZP +" "+ CommentTempTP;
            if (ltrstatus.Text.ToLower() == "zp: clear tp: clear")
            {
                ltrstatus.Text = "Clear";
            }



        }

    }



    protected void grdDaily_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            Width.Visible = true;
            Int16 num = Convert.ToInt16(e.CommandArgument);
            TextBox1.Text = grdDaily.Rows[num].Cells[0].Text;
            TextBox2.Text = grdDaily.Rows[num].Cells[1].Text;
            TextBox3.Text = grdDaily.Rows[num].Cells[2].Text;
            TextBox4.Text = grdDaily.Rows[num].Cells[3].Text;
            TextBox5.Text = grdDaily.Rows[num].Cells[4].Text;
            TextBox6.Text = grdDaily.Rows[num].Cells[5].Text;
            TextBox7.Text = grdDaily.Rows[num].Cells[6].Text;
        }
    }
}