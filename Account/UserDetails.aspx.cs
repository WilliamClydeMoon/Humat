using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;
using System.Web.Configuration;
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
    protected void UserDetailsSubmit_Click(object sender, EventArgs e)
    {

        SqlConnection dbConnection = new SqlConnection(WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString);
        SqlCommand cmd = new SqlCommand("Insert INTO Humat_Membership_Details(UserId, Address, City, State, PostalCode, First, Last,Phone, Country, Surname)" +
        "VALUES (@userId,@address,@city,@state,@postalCode,@first,@last,@phone,@country,@surname)", dbConnection);
        //cmd.CommandType = CommandType.Text;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "Humat_updMembership_Details";

        //specify the data to be inserted into the table
        cmd.Parameters.AddWithValue("@Id"       , Membership.GetUser().ProviderUserKey);
        cmd.Parameters.AddWithValue("@Addr"     , txbStreetAddress.Text);
        cmd.Parameters.AddWithValue("@Cty"        , txbCity.Text);
        cmd.Parameters.AddWithValue("@St"       , txbState.Text);
        cmd.Parameters.AddWithValue("@Zip"  , txbZip.Text);
        cmd.Parameters.AddWithValue("@Fname"       , txbFirstName.Text);
        cmd.Parameters.AddWithValue("@Lname"        , txbLastName.Text);
        cmd.Parameters.AddWithValue("@PhoneNum"       , txbPhone.Text);
        cmd.Parameters.AddWithValue("@Cntry"     , txbCountry.Text);
        cmd.Parameters.AddWithValue("@Sname"     , txbSurname.Text);

        using (dbConnection)
        {
            dbConnection.Open();
            cmd.ExecuteReader();
            //cmd.ExecuteNonQuery();
            dbConnection.Close();
        }
    }
}