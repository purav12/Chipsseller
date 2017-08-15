using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Xml;

/// <summary>
/// Summary description for ErrorHandlerComponent
/// </summary>
public class ErrorHandlerComponent
{
    public void HandleException()
    {
        Exception e = HttpContext.Current.Server.GetLastError();

        if (e == null)
            return;

        e = e.GetBaseException();

        if (e != null)
            HandleException(e);
    }

    public void HandleException(Exception e)
    {
        FormatExceptionDescription(e);
    }

    protected virtual void FormatExceptionDescription(Exception e)
    {
        StringBuilder sb = new StringBuilder();
        HttpContext context = HttpContext.Current;
        if (e != null)
        {
            ErrorLog(context.Request.Url.ToString(), e.Message, e.StackTrace);
            if (context.Request.Url.ToString().ToLower().IndexOf("/admin/") > -1)
            {
                System.Web.HttpContext.Current.Response.Redirect("/admin/error.htm");
                //   context.Response.Redirect("~/Rewriter.aspx");
            }
            else
            {
                context.Response.Redirect("~/Notfound.aspx");
            }
        }
    }

    public static void ErrorLog(string PageName, string Error, string ErrorDetails)
    {
        HttpContext context = HttpContext.Current;
        FileInfo info = new FileInfo(HttpContext.Current.Server.MapPath(@"/ErrorLog.xml"));
        XmlDocument xmlDoc = new XmlDocument();
        if (!File.Exists(info.FullName))
        {

            XmlTextWriter textWritter = new XmlTextWriter(info.FullName, null);
            textWritter.WriteStartDocument();
            textWritter.WriteStartElement("Root");
            textWritter.WriteEndElement();

            textWritter.Close();
        }
        xmlDoc.Load(info.FullName);

        XmlElement subRoot = xmlDoc.CreateElement("ErrorLogInfo");

        //DateTime
        XmlElement appendedElementDateTime = xmlDoc.CreateElement("DateTime");
        TimeZoneInfo INDIAN_ZONE = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
        DateTime indianTime = TimeZoneInfo.ConvertTimeFromUtc(DateTime.UtcNow, INDIAN_ZONE);
        XmlText xmlTextDateTime = xmlDoc.CreateTextNode(DateTime.Now.ToString() + ", IST - " + indianTime);
        appendedElementDateTime.AppendChild(xmlTextDateTime);
        subRoot.AppendChild(appendedElementDateTime);
        xmlDoc.DocumentElement.AppendChild(subRoot);

        //Page
        XmlElement appendedElementPage = xmlDoc.CreateElement("Page");
        XmlText xmlTextPage = xmlDoc.CreateTextNode(PageName);
        appendedElementPage.AppendChild(xmlTextPage);
        subRoot.AppendChild(appendedElementPage);
        xmlDoc.DocumentElement.AppendChild(subRoot);

        //Method
        XmlElement appendedElementIPAddress = xmlDoc.CreateElement("IPAddress");
        XmlText xmlTextIPAddress = xmlDoc.CreateTextNode(context.Request.UserHostAddress.ToString());
        appendedElementIPAddress.AppendChild(xmlTextIPAddress);
        subRoot.AppendChild(appendedElementIPAddress);
        xmlDoc.DocumentElement.AppendChild(subRoot);

        //Error
        XmlElement appendedElementError = xmlDoc.CreateElement("Error");
        XmlText xmlTextError = xmlDoc.CreateTextNode(Error);
        appendedElementError.AppendChild(xmlTextError);
        subRoot.AppendChild(appendedElementError);
        xmlDoc.DocumentElement.AppendChild(subRoot);

        //StackTrace
        XmlElement appendedElementStackTrace = xmlDoc.CreateElement("StackTrace");
        XmlText xmlTextStackTrace = xmlDoc.CreateTextNode(ErrorDetails);
        appendedElementStackTrace.AppendChild(xmlTextStackTrace);
        subRoot.AppendChild(appendedElementStackTrace);
        xmlDoc.DocumentElement.AppendChild(subRoot);

        //Save Doc
        xmlDoc.Save(info.FullName);
    }
}