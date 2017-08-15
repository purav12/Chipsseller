using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;
using System.Xml;

public partial class iptest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GetDataItem();
    }
    public void GetDataItem()
    {

        string xmlResult = null;
        string ipsend = "117.248.100.142";
        string url = "http://ip-api.com/xml/" + ipsend + "";
        // url = String.Format("http://iplocationtools.com/ip_query2.php?ip={0}", ipsend);
        try
        {
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);

            request.Method = "PUT";
            request.ContentType = "application/xml";
            //request.ContentLength = 50;
            //Stream newStream = request.GetRequestStream();
            //// Send the data.
            //newStream.Write(arr, 0, arr.Length);
            //newStream.Close();

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
                //Label1.Text = "IP Address ofd your System " + doc.GetElementsByTagName("IP").Item(0).InnerText;
                lblCountry.Text = doc.GetElementsByTagName("country").Item(0).InnerText;
                lblCity.Text = doc.GetElementsByTagName("city").Item(0).InnerText;
            }
        }
        catch
        {
            lblCountry.Text = "Proxy / Danger";
            lblCity.Text = "Proxy / Danger";
        }
    }

}