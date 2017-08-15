using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Site : System.Web.UI.MasterPage
{
    User c = new User();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnQuieckmsg_Click(object sender, EventArgs e)
    {
        c.cnopen();
        c.UserName = "Purav Mehta";
        c.Name = txtName.Text;
        c.Message = txtMessage.Text;
        c.Email = txtMail.Text;
        c.Remarks = "Message By '" + txtName.Text + "' From Index Page";
        c.Active = "No";
        c.P = 0;
        c.INSERTMessage();
    }
}
