using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Net.Mail;
//using CSSFriendly;

public partial class Account_Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        RegisterUser.ContinueDestinationPageUrl = Request.QueryString["ReturnUrl"];
    }


    protected void RegisterUser_SendMail(object sender, MailMessageEventArgs e)
    {

        FormsAuthentication.SetAuthCookie(RegisterUser.UserName, false /* createPersistentCookie */);
        string continueUrl = RegisterUser.ContinueDestinationPageUrl;
        if (String.IsNullOrEmpty(continueUrl))
        { continueUrl = "~/"; }

        MembershipUser member = Membership.GetUser(RegisterUser.UserName);
        member.IsApproved = false;
        Membership.UpdateUser(member);

        //string absolutepath = Request.Url.AbsolutePath;
        //string absoluteuri = Request.Url.AbsoluteUri;
        //string LeftPart = Request.Url.GetLeftPart(UriPartial.Authority);
        //string resolve = Page.ResolveUrl("~/Account/RegisterConfirmation.aspx");
        //HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]
        //Page.Request.UrlReferrer.ToString();

        String VerifyUrl = 
            Request.Url.GetLeftPart(UriPartial.Authority) +
            Page.ResolveUrl("~/Account/RegisterConfirmation.aspx?Token=" +  
            member.ProviderUserKey.ToString());

        
        e.Message.Body = e.Message.Body.Replace("<%VerifyUrl%>", VerifyUrl);

        

    }
}