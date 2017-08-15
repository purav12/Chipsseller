<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup

    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs
        ErrorHandlerComponent handler = new ErrorHandlerComponent();
        handler.HandleException();
    }

    void Application_BeginRequest(object sender, EventArgs e)
    {
        HttpContext context = HttpContext.Current;
        if (Request.RawUrl.ToString().ToLower().EndsWith(".aspx"))
        {
        }
        else
        {
            if (Request.RawUrl.ToString().ToLower().EndsWith("/download"))
            {
                context.RewritePath("Download.aspx", false);
            }
            if (Request.RawUrl.ToString().ToLower().EndsWith("/tool"))
            {
                context.RewritePath("Tool.aspx", false);
            }
            if (Request.RawUrl.ToString().ToLower().EndsWith("/default"))
            {
                context.RewritePath("Default.aspx", false);
            }
            if (Request.RawUrl.ToString().ToLower().EndsWith("/contact"))
            {
                context.RewritePath("Contact.aspx", false);
            }
            if (Request.RawUrl.ToString().ToLower().EndsWith("/signup"))
            {
                context.RewritePath("SignUp.aspx", false);
            }
            if (Request.RawUrl.ToString().ToLower().EndsWith("/contactform"))
            {
                context.RewritePath("ContactForm.aspx", false);
            }
            if (Request.RawUrl.ToString().ToLower().EndsWith("/bank"))
            {
                context.RewritePath("Bank.aspx", false);
            }
            if (Request.RawUrl.ToString().ToLower().EndsWith("/bankbalance"))
            {
                context.RewritePath("BankBalance.aspx", false);
            }
            if (Request.RawUrl.ToString().ToLower().EndsWith("/id"))
            {
                context.RewritePath("Id.aspx", false);
            }
            if (Request.RawUrl.ToString().ToLower().EndsWith("/signupfirst"))
            {
                context.RewritePath("SignUpFirst.aspx", false);
            }
            if (Request.RawUrl.ToString().ToLower().EndsWith("/share"))
            {
                context.RewritePath("Share.aspx", false);
            }
            if (Request.RawUrl.ToString().ToLower().EndsWith("/login"))
            {
                context.RewritePath("Login.aspx", false);
            }
            if (Request.RawUrl.ToString().ToLower().EndsWith("/table"))
            {
                context.RewritePath("TableNames.aspx", false);
            }
            if (Request.RawUrl.ToString().ToLower().EndsWith("/casino"))
            {
                context.RewritePath("TableNames.aspx", false);
            }
            if (Request.RawUrl.ToString().ToLower().EndsWith("/zp"))
            {
                context.RewritePath("Paypal.aspx", false);
            }
            if (Request.RawUrl.ToString().ToLower().EndsWith("/tp"))
            {
                context.RewritePath("Paypal.aspx", false);
            }
            if (Request.RawUrl.ToString().ToLower().EndsWith("/pm"))
            {
                context.RewritePath("PM.aspx", false);
            }
            if (Request.RawUrl.ToString().ToLower().EndsWith("/pn"))
            {
                context.RewritePath("PN.aspx", false);
            }
            if (Request.RawUrl.ToString().ToLower().EndsWith("/hisab"))
            {
                context.RewritePath("HisabNew.aspx", false);
            }
        }
        //if (Request.RawUrl.ToString().ToLower().EndsWith("/adminusertp"))
        //{
        //    context.RewritePath("AdminUserTp.aspx", false);
        //}
        //if (Request.RawUrl.ToString().ToLower().EndsWith("/alltbl"))
        //{
        //    context.RewritePath("alltbl.aspx", false);
        //}
       
        //if (Request.RawUrl.ToString().ToLower().EndsWith("/bankuser"))
        //{
        //    context.RewritePath("BankUser.aspx", false);
        //}
        //if (Request.RawUrl.ToString().ToLower().EndsWith("/commingsoon"))
        //{
        //    context.RewritePath("CommingSoon.aspx", false);
        //}
       
       
      
        //if (Request.RawUrl.ToString().ToLower().EndsWith("/contactuser"))
        //{
        //    context.RewritePath("ContactUser.aspx", false);
        //}

        //if (Request.RawUrl.ToString().ToLower().EndsWith("/contactuser"))
        //{
        //    context.RewritePath("ContactUser.aspx", false);
        //}
        //if (Request.RawUrl.ToString().ToLower().EndsWith("/contactuser"))
        //{
        //    context.RewritePath("ContactUser.aspx", false);
        //}
        //if (Request.RawUrl.ToString().ToLower().EndsWith("/contactuser"))
        //{
        //    context.RewritePath("ContactUser.aspx", false);
        //}
        //if (Request.RawUrl.ToString().ToLower().EndsWith("/contactuser"))
        //{
        //    context.RewritePath("ContactUser.aspx", false);
        //}
        //if (Request.RawUrl.ToString().ToLower().EndsWith("/contactuser"))
        //{
        //    context.RewritePath("ContactUser.aspx", false);
        //}
        //if (Request.RawUrl.ToString().ToLower().EndsWith("/contactuser"))
        //{
        //    context.RewritePath("ContactUser.aspx", false);
        //}
        //if (Request.RawUrl.ToString().ToLower().EndsWith("/contactuser"))
        //{
        //    context.RewritePath("ContactUser.aspx", false);
        //}
        //if (Request.RawUrl.ToString().ToLower().EndsWith("/contactuser"))
        //{
        //    context.RewritePath("ContactUser.aspx", false);
        //}
        //if (Request.RawUrl.ToString().ToLower().EndsWith("/contactuser"))
        //{
        //    context.RewritePath("ContactUser.aspx", false);
        //}
        //if (Request.RawUrl.ToString().ToLower().EndsWith("/contactuser"))
        //{
        //    context.RewritePath("ContactUser.aspx", false);
        //}
        //if (Request.RawUrl.ToString().ToLower().EndsWith("/contactuser"))
        //{
        //    context.RewritePath("ContactUser.aspx", false);
        //}
        //if (Request.RawUrl.ToString().ToLower().EndsWith("/contactuser"))
        //{
        //    context.RewritePath("ContactUser.aspx", false);
        //}
    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>
