using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_CLick(object sender , EventArgs e)
        {
            string searchItem = TextBox1.Text.Trim();

            Class1 myObj = new Class1();
           

            string result = SearchDictionary(searchItem);

            lblResult.Text = result;
        }


        private string SearchDictionary(string searchItem)
        {
            Class1 myObj = new Class1();
            Dictionary<string,string> dictionaryData=myObj.myDict;

            foreach (KeyValuePair<string,string> item in dictionaryData)
            {
                if(item.Key.Equals(searchItem,StringComparison.OrdinalIgnoreCase))
                {
                    return item.Value;
                }
            }
            return "no string result found";
        }

        protected void btnSubmit_CLick(object sender, EventArgs e)
        {
            string key = TextBox2.Text;
            string value = TextBox3.Text;

            

            Class1 myObj = new Class1();
            myObj.myDict.Add(key,value);
        }

    }
}