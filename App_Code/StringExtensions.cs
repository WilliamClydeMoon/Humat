using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for StringExtensions
/// </summary>
public static class StringExtensions
{
    /*__________________________________________________________________________________________*/
    public static bool IsNullOrEmpty(this string input)
    {
        return string.IsNullOrEmpty(input) || input.Trim() == string.Empty;
    }
}