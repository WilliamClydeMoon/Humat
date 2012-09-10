using System;
using System.Data.SqlClient;
using System.Data;
using System.Collections.Generic;
using System.Web.Configuration;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for SQLConnectionsHelper
/// </summary>
public class SQLConnectionsHelper
{
	public SQLConnectionsHelper()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    //public SqlConnection dbConnection(string type )
    //{
    //    SqlConnection conn;
    //    switch (type)
    //    {
    //        case "MEMBERSHIP":
    //            using (conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString))
    //            break;
    //    }

    //    return conn;

    //}

}