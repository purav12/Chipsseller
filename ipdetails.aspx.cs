using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Xml.Linq;
using System.Net;
using System.Xml;

public partial class ipdetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        String url = String.Empty;
        string xmlResult = null; 
        string ipsend = "117.248.100.142";
        url = "http://ip-api.com/xml/" + ipsend + "";
        try
        {
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
            string proxyUrl = "198.147.23.19";
            int proxyPort = 80;
            WebProxy myProxy = new WebProxy(proxyUrl, proxyPort);
            request.Proxy = myProxy;
            request.Method = "GET";
            NetworkCredential nc = new NetworkCredential();
            nc.Password = "purav12";
            nc.UserName = "LUCK.,9904161146";
            request.Credentials = nc;
            HttpWebResponse response = (HttpWebResponse)request.GetResponse();
            StreamReader resStream = new StreamReader(response.GetResponseStream());
            XmlDocument doc = new XmlDocument();
            xmlResult = resStream.ReadToEnd();
            doc.LoadXml(xmlResult);
            if (doc.GetElementsByTagName("status").Item(0).InnerText.ToString() != "success")
            {
                lblCountry.Text = "N / A";
                lblCity.Text = "N / A";

            }
            else
            {
                lblCountry.Text = doc.GetElementsByTagName("country").Item(0).InnerText;
                lblCity.Text = doc.GetElementsByTagName("city").Item(0).InnerText;
            }
        }
        catch(Exception ex)
        {
            lblCountry.Text = "Proxy / Danger";
            lblCity.Text = ex.ToString();
        }
    }

}

//request.UserAgent = ".NET Framework Test Client";
//request.AllowAutoRedirect = true;
//request.Timeout = 1000 * 30;
//request.UserAgent = "Mozilla/4.0 (compatible; MSIE 5.01; Windows NT 5.0)";
//request.PreAuthenticate = true;
//request.Proxy = new System.Net.WebProxy("198.147.23.19:80", true); // comment out if you're not going thru a proxy 1
//string MyProxyHostString = "192.168.1.200";
//int MyProxyPort = 8080;
//request.Proxy = new WebProxy(MyProxyHostString, MyProxyPort);  // 2
//WebProxy proxyObject = new WebProxy("http://64.202.165.130:3128");
//proxyObject.Credentials = new NetworkCredential("purav12", "LUCK.,9904161146"); // might not need 
//HttpWebRequest.DefaultWebProxy = proxyObject;
//request.Credentials = CredentialCache.DefaultCredentials;

//Kushalam
//StreamReader str = File.OpenText(strfilename);
//string xml = str.ReadToEnd();
//byte[] arr = System.Text.Encoding.ASCII.GetBytes(xml);
//request.Method = "PUT";
//request.ContentType = "application/xml";
//request.ContentLength = arr.Length;
//Kushalam
//request.Timeout = 5000;
//request.Credentials = CredentialCache.DefaultCredentials;