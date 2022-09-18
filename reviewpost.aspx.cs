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
    public partial class WebForm7 : System.Web.UI.Page
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            {
                if (!CheckBox2.Checked)
                {
                    SqlCommand cmd = new SqlCommand("SELECT * from sell_post where status='Approved'",con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    DataList1.DataSourceID = null;
                    DataList1.DataSource = dt;
                    DataList1.DataBind();
                        
                        
                        
                }

                else
                {

                    SqlCommand cmd = new SqlCommand("SELECT * from sell_post", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    DataList1.DataSourceID = null;
                    DataList1.DataSource = dt;
                    DataList1.DataBind();
                }


            }
           else if (CheckBox2.Checked)
            {
                if (!CheckBox1.Checked)
                {
                    SqlCommand cmd = new SqlCommand("SELECT * from sell_post where status='Pending'", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    DataList1.DataSourceID = null;
                    DataList1.DataSource = dt;
                    DataList1.DataBind();



                }


            }

            else if(CheckBox1.Checked && CheckBox2.Checked)
            {

                SqlCommand cmd = new SqlCommand("SELECT * from sell_post ", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                DataList1.DataSourceID = null;
                DataList1.DataSource = dt;
                DataList1.DataBind();

            }


        }

       
       protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)

        {
            if (e.CommandName=="viewdetail")
            {
                Response.Redirect("WebForm3.aspx?id="+e.CommandArgument.ToString());
            }

        }

        

        

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("WebForm3.aspx?id=" + e.CommandArgument.ToString());
        }

        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                e.Item.Attributes.Add("onmouseover","this.className='hover'");
                e.Item.Attributes.Add("onmouseout",
                       "this.className = this.oldClass;");
            }
        }
    }
}