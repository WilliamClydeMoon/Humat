using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Security;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_UserDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.IsAuthenticated)
        {
            AnonymousMessagePanel.Visible = false;
            UserDetailsEdit.Visible = true;

            var member = Membership.GetUser();
            string key = member.ProviderUserKey.ToString();

        }
        else
        {

            AnonymousMessagePanel.Visible = true;
            UserDetailsEdit.Visible = false;
        }
    }
}