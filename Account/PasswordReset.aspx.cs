using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Web.Profile;
//using CSSFriendly;

public partial class Account_PasswordReset : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            Literal personname =
              ((Literal)PWRecovery.QuestionTemplateContainer.FindControl("personname"));
            //personname.Text = Request.Cookies["usernameCookie"].Value;
        }
    }
    protected void validateUserEmail(object sender, LoginCancelEventArgs e)
    {
        TextBox EmailAddressTB =
            ((TextBox)PWRecovery.UserNameTemplateContainer.FindControl("EmailAddressTB"));

        Literal ErrorLiteral =
          ((Literal)PWRecovery.UserNameTemplateContainer.FindControl("ErrorLiteral"));

        MembershipUser mu = Membership.GetUser(PWRecovery.UserName);

        if (mu != null) // The username exists
        {
            if (mu.Email.Equals(EmailAddressTB.Text)) // Their email matches
            {
                //ProfileCommon newProfile = Profile.GetProfile(PWRecovery.UserName);
                HttpCookie appCookie = new HttpCookie("usernameCookie");
                //appCookie.Value = newProfile.FullName;
                appCookie.Expires = DateTime.Now.AddMinutes(3);
                Response.Cookies.Add(appCookie);
                ErrorLiteral.Text = "An email has been sent to your email account with a new password.";
            }
            else
            {
                e.Cancel = true;
                ErrorLiteral.Text = "Your username and password do not match";
            }
        }
        else
        {
            e.Cancel = true;
            ErrorLiteral.Text = "No such user found.";
        }

    }
}