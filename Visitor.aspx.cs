using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Data;
using System.IO;
using System.Web.Script.Serialization;

public partial class Visitor : System.Web.UI.Page
{
    User c = new User();
    DataTable dt, dt1;
    //public string StatusChart, StatusChartTitle, YaxeName;
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Web.HttpContext context = System.Web.HttpContext.Current;
        string ipAddress = context.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
        TextBox2.Text = ipAddress;
        ipAddress = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
        TextBox3.Text = Request.ServerVariables["REMOTE_ADDR"];
        TextBox4.Text = Request.UserHostAddress;

        if (!IsPostBack)
        {
            BindMasterData();
            trseen.Visible = false;
            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "MyFunction();", true);
        }
        //string json = hdnGeo.Value;
        //var dictionary = new JavaScriptSerializer().Deserialize<Dictionary<string, string>>(json);
        //string city = dictionary["city"];
        //string lat = dictionary["lat"];
        //string lon = dictionary["lon"];
        //string IP = dictionary["IP"];
        //string country = dictionary["country"];

        //c.cnopen();
        //c.UserName = "Purav Mehta";
        //c.Name = "Name Not Entered";
        //c.Message = "City - " + city + " Country - " + country + "  IP - " + IP + "  Lat - " + lat + "  Lon - " + lon + "";
        //c.Email = "";
        //c.Remarks = "Message From Visitor Page  Without Name";
        //c.Active = "No";
        //c.P = 0;
        //c.INSERTMessage();
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

        System.Web.UI.HtmlControls.HtmlGenericControl li = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("lidefault");
        System.Web.UI.HtmlControls.HtmlGenericControl li1 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("liContact");
        System.Web.UI.HtmlControls.HtmlGenericControl li2 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("lisignup");
        System.Web.UI.HtmlControls.HtmlGenericControl li3 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("liSignupfirst");
        System.Web.UI.HtmlControls.HtmlGenericControl li4 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("liContactform");
        System.Web.UI.HtmlControls.HtmlGenericControl li5 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("libank");
        System.Web.UI.HtmlControls.HtmlGenericControl li6 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("lilogin");
        System.Web.UI.HtmlControls.HtmlGenericControl li7 = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Page.Master.FindControl("litablenames");
        li.Attributes.Add("class", "");
        li1.Attributes.Add("class", "");
        li2.Attributes.Add("class", "");
        li3.Attributes.Add("class", "");
        li4.Attributes.Add("class", "");
        li5.Attributes.Add("class", "");
        li6.Attributes.Add("class", "");
        li7.Attributes.Add("class", "");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            trseen.Visible = true;
            string json = hdnGeo.Value;
            var dictionary = new JavaScriptSerializer().Deserialize<Dictionary<string, string>>(json);
            string city = dictionary["city"];
            string IP = dictionary["IP"];
            string country = dictionary["country"];
            string lat = dictionary["lat"];
            string lon = dictionary["lon"];

            txtpname.Text = txtname.Text;
            TextBox1.Text = city;
            TextBox2.Text = IP;
            TextBox3.Text = country;
            TextBox4.Text = lat;
            TextBox5.Text = lon;

            c.cnopen();
            c.UserName = "Purav Mehta";
            c.Name = txtname.Text;
            c.Message = "City - " + city + " Country - " + country + "  IP - " + IP + "  Lat - " + lat + "  Lon - " + lon + "";
            c.Email = "";
            c.Remarks = "Message From Visitor Page With Name";
            c.Active = "No";
            c.P = 0;
            c.INSERTMessage();
        }
        catch
        {

        }
    }


}