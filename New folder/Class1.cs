using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace WebApplication2
{
    public class Class1
    {
        public Dictionary<string, string> myDict = new Dictionary<string, string>();

        public Class1()
        {
            myDict.Add("item","thing");
            myDict.Add("mob","wet cloth");
            myDict.Add("lucrative", "profit");
        }

        public void AddItem(string key,string value)
        {
            myDict.Add(key,value);
        }
    }
}