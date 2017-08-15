using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class DBManager : System.Web.UI.Page
{
    User c = new User();
    GridView maingrid = new GridView();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["admin"] != null)
            {
                BindMasterData();
                BindList();
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
          
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

    private void BindList()
    {
        DataSet ds = new DataSet();
        ds = c.GetDs("USE Chipsseller SELECT Name FROM sys.tables");
        chktablenames.DataSource = ds;
        chktablenames.DataTextField = "Name";
        chktablenames.DataValueField = "Name";
        chktablenames.DataBind();
    }


    protected void chktablenames_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        string msg = "";
        string Description = "";
        for (int i = 0; i < chktablenames.Items.Count; i++)
        {
            if (chktablenames.Items[i].Selected)
            {
                msg += chktablenames.Items[i].Value;
            }
        }

        ds = c.GetDs("SELECT COLUMN_NAME 'All_Columns' FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='" + msg + "' ");
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            Description += ds.Tables[0].Rows[i]["All_Columns"].ToString() + "  ";
        }
        txtColumnname.Text = Description;
    }
    protected void btnshow_Click(object sender, EventArgs e)
    {
	try{
        DataSet Ds = new DataSet();
        DataTable dt = new DataTable();
        Ds = c.GetDs(txtQuery.Text);
        dt = Ds.Tables[0];
        grdtempgrid.DataSource = dt;
        grdtempgrid.DataBind();
		}
		catch
		{
		 Response.Redirect("DBManager.aspx");
		}
    }
    protected void btnExport_Click(object sender, EventArgs e)
    {
        DataSet Ds = new DataSet();
        DataTable dt = new DataTable();
        Ds = c.GetDs(txtQuery.Text);
        Export(Ds);
    }

    public override void VerifyRenderingInServerForm(Control control)
    {
        //
    }

    public void Export(DataSet Ds)
    {
        DataTable dt = new DataTable();
        dt = Ds.Tables[0];
        grdtempgrid.DataSource = dt;
        grdtempgrid.DataBind();
        Response.Clear();
        Response.Buffer = true;
        if (txtname.Text != "")
        {
            Response.AddHeader("content-disposition", "attachment;filename=" + txtname.Text + ".doc");
        }
        else
        Response.AddHeader("content-disposition", "attachment;filename=GridViewExport.doc");
        Response.Charset = "";
        Response.ContentType = "application/vnd.ms-word ";
        StringWriter sw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(sw);
        grdtempgrid.AllowPaging = false;
        grdtempgrid.RenderControl(hw);
        string temp = sw.ToString();
        Response.Output.Write(temp);
        Response.Flush();
        Response.End();
        //try
        //{

        //    for (int i = 0; i < Ds.Tables[0].Columns.Count; i++)
        //    {
        //        wr.Write(Ds.Tables[0].Columns[i].ToString().ToUpper() + "\t");
        //    }

        //    wr.WriteLine();

        //    //write rows to excel file
        //    for (int i = 0; i < (Ds.Tables[0].Rows.Count); i++)
        //    {
        //        for (int j = 0; j < Ds.Tables[0].Columns.Count; j++)
        //        {
        //            if (Ds.Tables[0].Rows[i][j] != null)
        //            {
        //                wr.Write(Convert.ToString(Ds.Tables[0].Rows[i][j]) + "\t");
        //            }
        //            else
        //            {
        //                wr.Write("\t");
        //            }
        //        }
        //        //go to next line
        //        wr.WriteLine();
        //    }
        //    //close file
        //    wr.Close();
        //}
        //catch (Exception ex)
        //{
        //    throw ex;
        //}
    }



}