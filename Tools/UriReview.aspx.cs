using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Tools_UriReview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    private void DisplayRequestObjectProperties()
    {
        //http://www.cambiaresearch.com/articles/53/how-do-i-get-paths-and-url-fragments-from-the-httprequest-object
        //http://www.cambiaresearch.com/articles/46/parsing-urls-with-regular-expressions-and-the-regex-object
        lblOutput.Text = "<table cellpadding=2 border=1>";

        lblOutput.Text += "<tr><td colspan=2 align=center>";
        lblOutput.Text += "Some HttpRequest path and ULR properties:";
        lblOutput.Text += "</td></tr>";

        // application path
        lblOutput.Text += "<tr><td>";
        lblOutput.Text += "Request.ApplicationPath:";
        lblOutput.Text += "</td><td>";
        lblOutput.Text += "<b>" + Request.ApplicationPath + "</b>";
        lblOutput.Text += "</td></tr>";

        // current execution file path
        lblOutput.Text += "<tr><td>";
        lblOutput.Text += "Request.CurrentExecutionFilePath:";
        lblOutput.Text += "</td><td>";
        lblOutput.Text += "<b>" + Request.CurrentExecutionFilePath + "</b>";
        lblOutput.Text += "</td></tr>";

        // file path
        lblOutput.Text += "<tr><td>";
        lblOutput.Text += "Request.FilePath:";
        lblOutput.Text += "</td><td>";
        lblOutput.Text += "<b>" + Request.FilePath + "</b>";
        lblOutput.Text += "</td></tr>";

        // path
        lblOutput.Text += "<tr><td>";
        lblOutput.Text += "Request.Path:";
        lblOutput.Text += "</td><td>";
        lblOutput.Text += "<b>" + Request.Path + "</b>";
        lblOutput.Text += "</td></tr>";

        // path info
        lblOutput.Text += "<tr><td>";
        lblOutput.Text += "Request.PathInfo:";
        lblOutput.Text += "</td><td>";
        lblOutput.Text += "<b>" + Request.PathInfo + "</b>";
        lblOutput.Text += "</td></tr>";

        // physical application path
        lblOutput.Text += "<tr><td>";
        lblOutput.Text += "Request.PhysicalApplicationPath:";
        lblOutput.Text += "</td><td>";
        lblOutput.Text += "<b>" + Request.PhysicalApplicationPath + "</b>";
        lblOutput.Text += "</td></tr>";

        // raw url
        lblOutput.Text += "<tr><td>";
        lblOutput.Text += "Request.RawUrl:";
        lblOutput.Text += "</td><td>";
        lblOutput.Text += "<b>" + Request.RawUrl + "</b>";
        lblOutput.Text += "</td></tr>";

        // absolute path
        lblOutput.Text += "<tr><td>";
        lblOutput.Text += "Request.Url.AbsolutePath:";
        lblOutput.Text += "</td><td>";
        lblOutput.Text += "<b>" + Request.Url.AbsolutePath + "</b>";
        lblOutput.Text += "</td></tr>";

        // absolute uri
        lblOutput.Text += "<tr><td>";
        lblOutput.Text += "Request.Url.AbsoluteUri:";
        lblOutput.Text += "</td><td>";
        lblOutput.Text += "<b>" + Request.Url.AbsoluteUri + "</b>";
        lblOutput.Text += "</td></tr>";

        // fragment
        lblOutput.Text += "<tr><td>";
        lblOutput.Text += "Request.Url.Fragment:";
        lblOutput.Text += "</td><td>";
        lblOutput.Text += "<b>" + Request.Url.Fragment + "</b>";
        lblOutput.Text += "</td></tr>";

        // host
        lblOutput.Text += "<tr><td>";
        lblOutput.Text += "Request.Url.Host:";
        lblOutput.Text += "</td><td>";
        lblOutput.Text += "<b>" + Request.Url.Host + "</b>";
        lblOutput.Text += "</td></tr>";

        // authority
        lblOutput.Text += "<tr><td>";
        lblOutput.Text += "Request.Url.Authority:";
        lblOutput.Text += "</td><td>";
        lblOutput.Text += "<b>" + Request.Url.Authority + "</b>";
        lblOutput.Text += "</td></tr>";

        // local path
        lblOutput.Text += "<tr><td>";
        lblOutput.Text += "Request.Url.LocalPath:";
        lblOutput.Text += "</td><td>";
        lblOutput.Text += "<b>" + Request.Url.LocalPath + "</b>";
        lblOutput.Text += "</td></tr>";

        // path and query
        lblOutput.Text += "<tr><td>";
        lblOutput.Text += "Request.Url.PathAndQuery:";
        lblOutput.Text += "</td><td>";
        lblOutput.Text += "<b>" + Request.Url.PathAndQuery + "</b>";
        lblOutput.Text += "</td></tr>";

        // port
        lblOutput.Text += "<tr><td>";
        lblOutput.Text += "Request.Url.Port:";
        lblOutput.Text += "</td><td>";
        lblOutput.Text += "<b>" + Request.Url.Port + "</b>";
        lblOutput.Text += "</td></tr>";

        // query
        lblOutput.Text += "<tr><td>";
        lblOutput.Text += "Request.Url.Query:";
        lblOutput.Text += "</td><td>";
        lblOutput.Text += "<b>" + Request.Url.Query + "</b>";
        lblOutput.Text += "</td></tr>";

        // scheme
        lblOutput.Text += "<tr><td>";
        lblOutput.Text += "Request.Url.Scheme:";
        lblOutput.Text += "</td><td>";
        lblOutput.Text += "<b>" + Request.Url.Scheme + "</b>";
        lblOutput.Text += "</td></tr>";

        // segments
        lblOutput.Text += "<tr><td>";
        lblOutput.Text += "Request.Url.Segments:";
        lblOutput.Text += "</td><td>";
        string[] segments = Request.Url.Segments;
        foreach (string s in segments)
            lblOutput.Text += "<b>" + s + "</b><br>";
        lblOutput.Text += "</td></tr>";

        lblOutput.Text += "</table>";
    }

}