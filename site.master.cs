using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class site : System.Web.UI.MasterPage
{
    //protected global::System.Web.UI.WebControls.LoginView MenuLoginView;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (HttpContext.Current.User.Identity.IsAuthenticated)
        {
            if (Session["UserName"] == null)
            {
                Session["UserName"] = HttpContext.Current.User.Identity.Name;
            }
        }
    }
}
