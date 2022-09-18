using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Smart_and_safe
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["auth"] != null)
            {
               // TextBox1.Text = Request.Cookies["auth"].Value;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Cookies["auth"].Value = TextBox1.Text.Trim();
           // Response.Cookies["auth"].Expires = DateTime.Now.AddDays(2);
        }
    }
}