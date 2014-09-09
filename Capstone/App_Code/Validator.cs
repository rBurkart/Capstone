using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Validator
/// </summary>
public class Validator
{
    public static bool GotPoop(string temp) //this static bool checks for bad words that could be input
    {
        bool result = false;

        if (temp.Contains("Poop"))
        {
            result = true;
        }
        else if (temp.Contains("poop"))
        {
            result = true;
        }

        return result;
    }

    public static bool IsItFilledIn(string temp)//this bool checks to see if user filled in the input field
    {
        bool result = false;

        if (temp.Length > 0)
        {
            result = true;
        }

        return result;
    }

    public static bool IsItFilledIn(string temp, int length)//this bool checks to see if the box is filled in and is a certain length
    {
        bool result = false;

        if (temp.Length == length)
        {
            result = true;
        }

        return result;
    }
}