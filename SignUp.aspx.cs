using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class SignUp : System.Web.UI.Page
{
    User c = new User();
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        usavisible.Visible = false;
        usainvisible.Visible = true;

        if (drpcountry.SelectedValue != "India")
        {
            usavisible.Visible = true;
            usainvisible.Visible = false;
        }
        lblalert.Visible = false;
        BindMasterData();
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
        li2.Attributes.Add("class", "active");
        li3.Attributes.Add("class", "");
        li4.Attributes.Add("class", "");
        li5.Attributes.Add("class", "");
        li6.Attributes.Add("class", "");
        li7.Attributes.Add("class", "");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        dt = c.Getdata("select UserName,EmailAdress from [User] where UserName='" + txtName.Text + "' or EmailAdress ='" + txtmailid.Text + "'");
        if (dt.Rows.Count != 0)
        {
            lblalert.Visible = true;
        }
        else
        {
            if (drpcitylist.SelectedValue == "-Select-" && drpcountry.SelectedValue == "India")
            {
                lblcity.Visible = true;
            }
            else
            {
                dt = new DataTable();
                c.cnopen();
                c.UserName = txtName.Text;
                c.Password = txtConfirmPassword.Text;
                c.EmailAdress = txtmailid.Text;
                c.Phone_Number = txtphonenumber.Text;
                if (drpcountry.SelectedValue != "India")
                {
                    c.City = txtusa.Text;
                }
                else
                {
                    c.City = drpcitylist.SelectedValue;
                }
                c.Type = "USER";
                c.Image_Url = "Images/ProfilePics/183e9056d7908d7db3e167b6a23fdcd3.jpg";
                c.CreateDate = DateTime.Now;
                c.Remarks = drpcountry.SelectedValue;
                c.Active = "No";
                c.P = 0;
                c.INSERT();

                c.UserName = txtName.Text;
                c.Name = "Purav Mehta";
                c.Message = "WellCome Thanks For Sign Up ";
                c.Active = "No";
                c.Remarks = "Yes";
                c.INSERTMessage();

                c.cnclose();
                Session["user"] = txtName.Text;
                Response.Redirect("Profile.aspx");
            }

        }
    }
}