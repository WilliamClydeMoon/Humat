using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

public partial class Account_RegisterConfirmation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        string confirmationToken = Request.QueryString["token"].ToString();

        if (string.IsNullOrEmpty(confirmationToken) ||
            !Regex.IsMatch(confirmationToken, "[0-9a-f]{8}-([0-9a-f]{4}-){3}[0-9a-f]{12}"))
            InformationLabel.Text = "An invalid ID value was passed in through the querystring.";
        else
        {
            Guid userId = new Guid(confirmationToken);
            MembershipUser member = Membership.GetUser(userId);

            // examlpe of pushing the user to a list
            //MembershipUserCollection users = Membership.GetAllUsers();
            //MembershipUser member = users.Cast<MembershipUser>().ToList().Find(user => user.ProviderUserKey.ToString() == confirmationToken);

            if (member == null)
                InformationLabel.Text = "The user account could not be found in the membership database.";
            else
            {
                member.IsApproved = true;
                Membership.UpdateUser(member);
                InformationLabel.Text = "Your account has been verified and you can now log into the site.";
            }
        }
    }
}