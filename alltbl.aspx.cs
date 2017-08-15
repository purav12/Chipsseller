using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class alltbl : System.Web.UI.Page
{

    User c = new User();
    DataTable dt, dt1, dt2, dt3;
    DataSet dstemp = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
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
        li4.Attributes.Add("class", "active");
        li5.Attributes.Add("class", "");
        li6.Attributes.Add("class", "");
        li7.Attributes.Add("class", "");
        li8.Attributes.Add("class", "");
        li9.Attributes.Add("class", "");
        li10.Attributes.Add("class", "");
        li11.Attributes.Add("class", "");
        li12.Attributes.Add("class", "");
    }


    //Contact Us Data 
    protected void grdcontact_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            Width.Visible = true;
            Int16 num = Convert.ToInt16(e.CommandArgument);
            TextBox1.Text = grdcontact.Rows[num].Cells[1].Text;
            TextBox2.Text = grdcontact.Rows[num].Cells[2].Text;
            TextBox3.Text = grdcontact.Rows[num].Cells[3].Text;
            TextBox4.Text = grdcontact.Rows[num].Cells[4].Text;
            TextBox5.Text = grdcontact.Rows[num].Cells[5].Text;
            TextBox6.Text = grdcontact.Rows[num].Cells[6].Text;
            TextBox7.Text = grdcontact.Rows[num].Cells[7].Text;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        c.cnopen();
        c.Id = Convert.ToInt32(TextBox1.Text);
        c.Name = TextBox2.Text;
        c.Subject = TextBox3.Text;
        c.Details = TextBox4.Text;
        c.P = Convert.ToInt32(TextBox5.Text);
        c.PostedDate = Convert.ToDateTime(TextBox6.Text);
        c.Active = TextBox7.Text;
        c.INSERT_Comment();
        c.cnclose();
        Response.Redirect("alltbl.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        c.cnopen();
        c.Id = Convert.ToInt32(TextBox1.Text);
        c.Name = TextBox2.Text;
        c.Subject = TextBox3.Text;
        c.Details = TextBox4.Text;
        c.P = Convert.ToInt32(TextBox5.Text);
        c.PostedDate = Convert.ToDateTime(TextBox6.Text);
        c.Active = TextBox7.Text;
        c.Update_Comment();
        c.cnclose();
        Response.Redirect("alltbl.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        c.cnopen();
        c.Id = Convert.ToInt32(TextBox1.Text);
        c.Name = TextBox2.Text;
        c.Subject = TextBox3.Text;
        c.Details = TextBox4.Text;
        c.P = Convert.ToInt32(TextBox5.Text);
        c.PostedDate = Convert.ToDateTime(TextBox6.Text);
        c.Active = TextBox7.Text;
        c.Delete_Comment();
        c.cnclose();
        Response.Redirect("alltbl.aspx");
    }

    //Message Us Data 
    protected void grdmessage_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            Message.Visible = true;
            Int16 num = Convert.ToInt16(e.CommandArgument);
            TextBox8.Text = grdmessage.Rows[num].Cells[1].Text;
            TextBox9.Text = grdmessage.Rows[num].Cells[2].Text;
            TextBox10.Text = grdmessage.Rows[num].Cells[3].Text;
            TextBox11.Text = grdmessage.Rows[num].Cells[4].Text.Replace("'", " ");
            TextBox12.Text = grdmessage.Rows[num].Cells[5].Text;
            TextBox13.Text = grdmessage.Rows[num].Cells[6].Text;
            TextBox14.Text = grdmessage.Rows[num].Cells[7].Text.Replace("&#39;", " ");
            TextBox15.Text = grdmessage.Rows[num].Cells[8].Text;
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        c.cnopen();
        c.Id = Convert.ToInt32(TextBox8.Text);
        c.Name = TextBox9.Text;
        c.UserName = TextBox10.Text;
        c.Message = TextBox11.Text;
        c.Email = TextBox12.Text;
        c.Active = TextBox13.Text;
        c.Remarks = TextBox14.Text;
        c.P = Convert.ToInt32(TextBox15.Text);
        c.INSERTMessage();
        c.cnclose();
        Response.Redirect("alltbl.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        c.cnopen();
        c.Id = Convert.ToInt32(TextBox8.Text);
        c.Name = TextBox9.Text;
        c.UserName = TextBox10.Text;
        c.Message = TextBox11.Text;
        c.Email = TextBox12.Text;
        c.Active = TextBox13.Text;
        c.Remarks = TextBox14.Text;
        c.P = Convert.ToInt32(TextBox15.Text);
        c.UPDATEMessage();
        c.cnclose();
        Response.Redirect("alltbl.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        c.cnopen();
        c.Id = Convert.ToInt32(TextBox8.Text);
        c.Name = TextBox9.Text;
        c.UserName = TextBox10.Text;
        c.Message = TextBox11.Text;
        c.Email = TextBox12.Text;
        c.Active = TextBox13.Text;
        c.Remarks = TextBox14.Text;
        c.P = Convert.ToInt32(TextBox15.Text);
        c.DELETEMESSAGE();
        c.cnclose();
        Response.Redirect("alltbl.aspx");
    }


    protected void grduser_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            User.Visible = true;
            Int16 num = Convert.ToInt16(e.CommandArgument);
            TextBox16.Text = grduser.Rows[num].Cells[1].Text;
            TextBox17.Text = grduser.Rows[num].Cells[2].Text;
            TextBox18.Text = grduser.Rows[num].Cells[3].Text;
            TextBox19.Text = grduser.Rows[num].Cells[4].Text;
            TextBox20.Text = grduser.Rows[num].Cells[5].Text;
            TextBox21.Text = grduser.Rows[num].Cells[6].Text;
            TextBox22.Text = grduser.Rows[num].Cells[7].Text;
            TextBox23.Text = grduser.Rows[num].Cells[8].Text;
            TextBox24.Text = grduser.Rows[num].Cells[9].Text;
            TextBox25.Text = grduser.Rows[num].Cells[10].Text;
            TextBox26.Text = grduser.Rows[num].Cells[11].Text;
            TextBox27.Text = grduser.Rows[num].Cells[12 ].Text;
        }
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        c.cnopen();
        c.Id = Convert.ToInt32(TextBox16.Text);
        c.UserName = TextBox17.Text;
        c.Password = TextBox18.Text;
        c.Type = TextBox19.Text;
        c.CreateDate = Convert.ToDateTime(TextBox20.Text);
        c.Phone_Number = TextBox21.Text;
        c.City = TextBox22.Text;
        c.EmailAdress = TextBox23.Text;
        c.P = Convert.ToInt32(TextBox24.Text);
        c.Image_Url = TextBox25.Text;
        c.Remarks = TextBox26.Text;
        c.Active = TextBox27.Text;
        c.INSERT();
        c.cnclose();
        Response.Redirect("alltbl.aspx");
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        c.cnopen();
        c.Id = Convert.ToInt32(TextBox16.Text);
        c.UserName = TextBox17.Text;
        c.Password = TextBox18.Text;
        c.Type = TextBox19.Text;
        c.CreateDate = Convert.ToDateTime(TextBox20.Text);
        c.Phone_Number = TextBox21.Text;
        c.City = TextBox22.Text;
        c.EmailAdress = TextBox23.Text;
        c.P = Convert.ToInt32(TextBox24.Text);
        c.Image_Url = TextBox25.Text;
        c.Remarks = TextBox26.Text;
        c.Active = TextBox27.Text;
        c.UPDATE();
        c.cnclose();
        Response.Redirect("alltbl.aspx");
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        c.cnopen();
        c.Id = Convert.ToInt32(TextBox16.Text);
        c.UserName = TextBox17.Text;
        c.Password = TextBox18.Text;
        c.Type = TextBox19.Text;
        c.CreateDate = Convert.ToDateTime(TextBox20.Text);
        c.Phone_Number = TextBox21.Text;
        c.City = TextBox22.Text;
        c.EmailAdress = TextBox23.Text;
        c.P = Convert.ToInt32(TextBox24.Text);
        c.Image_Url = TextBox25.Text;
        c.Remarks = TextBox26.Text;
        c.Active = TextBox27.Text;
        c.Delete();
        c.cnclose();
        Response.Redirect("alltbl.aspx");
    }


    protected void Button11_Click(object sender, EventArgs e)
    {
        string str = "";
        string strname = "";
        DataSet dsdelete = new DataSet();
        foreach (GridViewRow gvrow in grdcontact.Rows)
        {
            CheckBox chk = (CheckBox)gvrow.FindControl("chkSelect");
            if (chk != null & chk.Checked)
            {
                dsdelete = c.GetDs("delete from ContactUs where Id='" + gvrow.Cells[1].Text + "'");
            }
        }
        Response.Redirect("alltbl.aspx");
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        string str = "";
        string strname = "";
        DataSet dsdelete = new DataSet();
        foreach (GridViewRow gvrow in grdmessage.Rows)
        {
            CheckBox chk = (CheckBox)gvrow.FindControl("chkSelect");
            if (chk != null & chk.Checked)
            {
                dsdelete = c.GetDs("delete from Message where Id='" + gvrow.Cells[1].Text + "'");
            }
        }
        Response.Redirect("alltbl.aspx");
    }

    protected void btnactivemsg_Click(object sender, EventArgs e)
    {
        string str = "";
        string strname = "";
        DataSet dsdelete = new DataSet();
        foreach (GridViewRow gvrow in grdmessage.Rows)
        {
            CheckBox chk = (CheckBox)gvrow.FindControl("chkSelect");
            if (chk != null & chk.Checked)
            {
                dsdelete = c.GetDs("update Message set Active='Yes' where Id='" + gvrow.Cells[1].Text + "'");
            }
        }
        Response.Redirect("alltbl.aspx");
    }
    protected void btnactive_Click(object sender, EventArgs e)
    {
        string str = "";
        string strname = "";
        DataSet dsdelete = new DataSet();
        foreach (GridViewRow gvrow in grdcontact.Rows)
        {
            CheckBox chk = (CheckBox)gvrow.FindControl("chkSelect");
            if (chk != null & chk.Checked)
            {
                dsdelete = c.GetDs("update ContactUs set Active='Yes'  where Id='" + gvrow.Cells[1].Text + "'");
            }
        }
        Response.Redirect("alltbl.aspx");
    }


    protected void btnHide_Click(object sender, EventArgs e)
    {
        string str = "";
        string strname = "";
        DataSet dsdelete = new DataSet();
        foreach (GridViewRow gvrow in grdcontact.Rows)
        {
            CheckBox chk = (CheckBox)gvrow.FindControl("chkSelect");
            if (chk != null & chk.Checked)
            {
                dsdelete = c.GetDs("update ContactUs set P='786'  where Id='" + gvrow.Cells[1].Text + "'");
            }
        }
        Response.Redirect("alltbl.aspx");
    }
    



    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindData();
    }

    public void BindData()
    {
        Width.Visible = false;
        Message.Visible = false;
        User.Visible = false;
        if (Session["admin"] != null)
        {

            dt = c.Getdata("select * from ContactUs where Active='" + DropDownList2.SelectedValue + "'  order by PostedDate Desc ");
            grdcontact.DataSource = dt;
            grdcontact.DataBind();


            dt1 = c.Getdata("select * from Message where Active='" + DropDownList1.SelectedValue + "' order by Id Desc ");
            grdmessage.DataSource = dt1;
            grdmessage.DataBind();

            dt2 = c.Getdata("select * from [User] where Active='" + DropDownList3.SelectedValue + "' order by Id Desc");
            grduser.DataSource = dt2;
            grduser.DataBind();

            dt3 = c.Getdata("select * from Limit where Active='No' ");
            grdlimit.DataSource = dt3;
            grdlimit.DataBind();

            BindMasterData();
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void grdcontact_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Label lblstatusmsg = ((Label)e.Row.FindControl("lblstatusmsg"));
            HiddenField hdnP = ((HiddenField)e.Row.FindControl("hdnP"));
            
            Image Image1 = ((Image)e.Row.FindControl("Image1"));
            
            if (lblstatusmsg.Text.ToString().ToLower() == "set")
            {
                Image1.ImageUrl = "./Images/button_ok.png";
            }
            else
            {
                Image1.ImageUrl = "./Images/button-cross_red.png";
            }
            if (hdnP.Value.ToString() == "786")
            {
                Image1.ImageUrl = "./Images/Lock.png";
            }
        }
    }
    protected void grdmessage_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Label lblstatusmsg = ((Label)e.Row.FindControl("lblstatusmsg"));
            Image Image1 = ((Image)e.Row.FindControl("Image1"));
            if (lblstatusmsg.Text.ToString().ToLower() == "set")
            {
                Image1.ImageUrl = "./Images/button_ok.png";
            }
            else
            {
                Image1.ImageUrl = "./Images/button-cross_red.png";
            }
        }
    }
    protected void grduser_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Label lblstatusmsg = ((Label)e.Row.FindControl("lblstatusmsg"));
            Image Image1 = ((Image)e.Row.FindControl("Image1"));
            if (lblstatusmsg.Text.ToString().ToLower() == "set")
            {
                Image1.ImageUrl = "./Images/button_ok.png";
            }
            else
            {
                Image1.ImageUrl = "./Images/button-cross_red.png";
            }
        }
    }

    protected void Btndeleteuser_Click(object sender, EventArgs e)
    {
        string str = "";
        string strname = "";
        DataSet dsdelete = new DataSet();
        foreach (GridViewRow gvrow in grduser.Rows)
        {
            CheckBox chk = (CheckBox)gvrow.FindControl("chkSelect");
            if (chk != null & chk.Checked)
            {
                dsdelete = c.GetDs("delete from [User] where Id='" + gvrow.Cells[1].Text + "'");
            }
        }
        Response.Redirect("alltbl.aspx");
    }

    protected void btnactiveUser_Click(object sender, EventArgs e)
    {
        string str = "";
        string strname = "";
        DataSet dsdelete = new DataSet();
        foreach (GridViewRow gvrow in grduser.Rows)
        {
            CheckBox chk = (CheckBox)gvrow.FindControl("chkSelect");
            if (chk != null & chk.Checked)
            {
                dsdelete = c.GetDs("update [User] set Active='Yes' where Id='" + gvrow.Cells[1].Text + "'");
            }
        }
        Response.Redirect("alltbl.aspx");
    }

    protected void Btnseenall_Click(object sender, EventArgs e)
    {
        dstemp = c.GetDs("update ContactUs set Checked='Set' ");
    }

    protected void Btnseenallmsg_Click(object sender, EventArgs e)
    {
        dstemp = c.GetDs("update Message set Checked='Set' ");
    }

    protected void Btnseenalluser_Click(object sender, EventArgs e)
    {
        dstemp = c.GetDs("update [User] set Checked='Set' ");
    }

    protected void Btnseenall1212_Click(object sender, EventArgs e)
    {
        dstemp = c.GetDs("update ContactUs set Checked='Set' ");
        dstemp = c.GetDs("update Message set Checked='Set' ");
        dstemp = c.GetDs("update [User] set Checked='Set' ");
    }
}