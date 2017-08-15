using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Net;

public partial class Download : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = new DataTable();
            dt.Columns.Add(new DataColumn("Text", typeof(string)));
            dt.Columns.Add(new DataColumn("Size", typeof(string)));
            dt.Columns.Add(new DataColumn("Value", typeof(string)));
            
            string[] filePaths = Directory.GetFiles(Server.MapPath("~/Downloads/"));
            List<ListItem> files = new List<ListItem>();
            foreach (string filePath in filePaths)
            {
                FileInfo Fp = new FileInfo(filePath);
                dt.Rows.Add(Fp.Name, Fp.Length + " Bytes",Fp.DirectoryName+"\\"+Fp.Name);
                files.Add(new ListItem(Path.GetFileName(filePath), filePath));
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }

    protected void UploadFile(object sender, EventArgs e)
    {
        try
        {
            string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Downloads/") + fileName);            
        }
        catch
        {
            lblmsg.Text = "Something Went Wrong";
            lblmsg.Visible = true;
            return;
        }

        try
        {
            Response.Redirect(Request.Url.AbsoluteUri);
            lblmsg.Text = "File Uploaded SUccesfully";
            lblmsg.Visible = true;
        }
        catch
        {
            lblmsg.Text = "File Uploaded SUccesfully";
            lblmsg.Visible = true;
        }
        
    }

    protected void DownloadFile(object sender, EventArgs e)
    {
        string filePath = (sender as LinkButton).CommandArgument;
        //Response.ContentType = ContentType;
        //Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
        //Response.WriteFile(filePath);
        //Response.End();

        try
        {
            //string strURL = txtFileName.Text;
            WebClient req = new WebClient();
            HttpResponse response = HttpContext.Current.Response;
            response.Clear();
            response.ClearContent();
            response.ClearHeaders();
            response.Buffer = true;
            //response.AddHeader("Content-Disposition", "attachment;filename=\"" + Server.MapPath(strURL) + "\"");
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
            byte[] data = req.DownloadData(Server.MapPath("~/Downloads/") + Path.GetFileName(filePath));
            response.BinaryWrite(data);
            response.End();
        }
        catch (Exception ex)
        {
        }
    }

    protected void DeleteFile(object sender, EventArgs e)
    {
        if (Session["admin"] != null )
        {
            string filePath = (sender as LinkButton).CommandArgument;
            File.Delete(filePath);
            Response.Redirect(Request.Url.AbsoluteUri);
        }
        else
        {
            lblmsg.Text = "No Permission To Delete File";
            lblmsg.Visible = true;
        }
    }

}