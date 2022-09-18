using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Smart_and_safe
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
        }
        protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)

        {
            if (e.CommandName == "viewdetail")
            {
                Response.Redirect("WebForm3.aspx?id=" + e.CommandArgument.ToString());
            }

        }





        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("WebForm3.aspx?id=" + e.CommandArgument.ToString());
        }

        protected void Button2_Click(object sender, EventArgs e)
        { string status = "Approved";
            SqlCommand cmd = new SqlCommand("SELECT * from sell_post Where ((brand like '%"+TextBox1.Text.Trim()+ "%') or (model like  '%"+ TextBox1.Text.Trim() + "%')) and  status='"+status+"' ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DataList1.DataSourceID = null;
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
    }
}