using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class Media : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SendEmail_Click( object sender, EventArgs e)
    {
        String ToAddress = "williamclydemoon@yahoo.com";
        MailMessage mm = new MailMessage ( UsersEmail.Text, ToAddress );

        mm.Subject = Subject.Text;
        mm.Body = Body.Text;
        mm.IsBodyHtml = false;

        SmtpClient smtp = new SmtpClient ();
        smtp.Send(mm);
    }
}