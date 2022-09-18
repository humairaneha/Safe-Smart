using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;


namespace Smart_and_safe
{
    public partial class WebForm3 : System.Web.UI.Page
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



        protected void Buttom1_Click(object sender, EventArgs e)
        {
            string pid = Request.QueryString["id"];
            SqlCommand cmd = new SqlCommand("UPDATE sell_post SET status=@status WHERE id='" + pid + "'", con);
            cmd.Parameters.AddWithValue("@status", "Approved");
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Post approved successfully')</script>");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string pid = Request.QueryString["id"];
            SqlCommand cmd = new SqlCommand("UPDATE sell_post SET status=@status WHERE id='" + pid + "'", con);
            cmd.Parameters.AddWithValue("@status", "Rejected");
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Post Rejected successfully')</script>");
        }

        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item)
            {
                TextBox TextBox1 = (TextBox)e.Item.FindControl("TextBox1"); //fname
                TextBox TextBox2 = (TextBox)e.Item.FindControl("TextBox2"); //lname
                TextBox TextBox10 = (TextBox)e.Item.FindControl("TextBox10"); //contact
                TextBox TextBox3 = (TextBox)e.Item.FindControl("TextBox3"); //brand
                TextBox TextBoxModel = (TextBox)e.Item.FindControl("TextBoxModel"); //model
                TextBox TextBox6 = (TextBox)e.Item.FindControl("TextBox6"); //imei1
                TextBox TextBox7 = (TextBox)e.Item.FindControl("TextBox7");//imei2
                TextBox TextBox4 = (TextBox)e.Item.FindControl("TextBox4"); //b_year
                TextBox TextBox5 = (TextBox)e.Item.FindControl("TextBox5"); //b-price
                TextBox TextBox8 = (TextBox)e.Item.FindControl("TextBox8"); //a-price
                TextBox TextBox9 = (TextBox)e.Item.FindControl("TextBox9"); //des
                FileUpload FileUpload2 = (FileUpload)e.Item.FindControl("FileUpload2");//nid
                FileUpload FileUpload = (FileUpload)e.Item.FindControl("FileUpload");//thumb
                FileUpload FileUpload3 = (FileUpload)e.Item.FindControl("FileUpload3");//memo
                FileUpload FileUpload1 = (FileUpload)e.Item.FindControl("FileUpload2");//pic




            }



        }





        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        { if(e.Item.ItemType==ListItemType.Item)
            { TextBox TextBox1 = (TextBox)e.Item.FindControl("TextBox1"); //fname
            TextBox TextBox2 = (TextBox)e.Item.FindControl("TextBox2"); //lname
            TextBox TextBox10 = (TextBox)e.Item.FindControl("TextBox10"); //contact
            TextBox TextBox3 = (TextBox)e.Item.FindControl("TextBox3"); //brand
            TextBox TextBoxModel = (TextBox)e.Item.FindControl("TextBoxModel"); //model
            TextBox TextBox6 = (TextBox)e.Item.FindControl("TextBox6"); //imei1
            TextBox TextBox7 = (TextBox)e.Item.FindControl("TextBox7");//imei2
            TextBox TextBox4 = (TextBox)e.Item.FindControl("TextBox4"); //b_year
            TextBox TextBox5 = (TextBox)e.Item.FindControl("TextBox5"); //b-price
            TextBox TextBox8 = (TextBox)e.Item.FindControl("TextBox8"); //a-price
            TextBox TextBox9 = (TextBox)e.Item.FindControl("TextBox9"); //des
            FileUpload FileUpload2 = (FileUpload)e.Item.FindControl("FileUpload2");//nid
            FileUpload FileUpload = (FileUpload)e.Item.FindControl("FileUpload");//thumb
            FileUpload FileUpload3 = (FileUpload)e.Item.FindControl("FileUpload3");//memo
            FileUpload FileUpload1 = (FileUpload)e.Item.FindControl("FileUpload2");//pic
                Image Image1 = (Image)e.Item.FindControl("Image1");


            Console.Write(TextBox1.Text.Trim());}



            if (e.CommandName == "update")
            {
                try
                {
                    string pid = Request.QueryString["id"];
                    SqlCommand cmd1 = new SqlCommand("SELECT * from sell_post where id='" + pid + "'", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd1);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                   // string nid1 = dt.Rows[0].Field<String>("nid1").Trim();
                   // string nid2 = dt.Rows[0].Field<String>("nid2").Trim();
                    //string pic1 = dt.Rows[0].Field<String>("pic1").Trim();
                    //string pic2 = dt.Rows[0].Field<String>("pic2").Trim();
                    //string memo = dt.Rows[0].Field<String>("memo").Trim();
                    //string thumb = dt.Rows[0].Field<String>("thumbnail").Trim();


                    SqlCommand cmd = new SqlCommand("UPDATE sell_post SET fname=@fname,lname=@lname,contact_no=@cno ,buying_price=@b_price,asking_price=@a_price,imei1=@imei1,imei2=@imei2,buying_year=@byear,username=@username,status=@status,brand=@brand,model=@model  WHERE id='" + pid + "'", con);
                    string fname = ((TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("TextBox1")).Text.Trim();
                    string lname = ((TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("TextBox2")).Text.Trim();
                    string cno = ((TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("TextBox10")).Text.Trim();
                    string byear = ((TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("TextBox4")).Text.Trim();
                    string brand = ((TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("TextBox3")).Text.Trim();
                    string model = ((TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("TextBoxModel")).Text.Trim();
                    string b_price = ((TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("TextBox5")).Text.Trim();
                    string a_price = ((TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("TextBox8")).Text.Trim();
                    string imei1 = ((TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("TextBox6")).Text.Trim();
                    string imei2 = ((TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("TextBox7")).Text.Trim();

                    cmd.Parameters.AddWithValue("@status", "pending");
                   cmd.Parameters.AddWithValue("@fname", fname);
                   cmd.Parameters.AddWithValue("@lname", lname);
                   cmd.Parameters.AddWithValue("@cno", cno);
                   cmd.Parameters.AddWithValue("@byear", byear);
                    cmd.Parameters.AddWithValue("@b_price", b_price);
                    cmd.Parameters.AddWithValue("@a_price", a_price);
                  
                    cmd.Parameters.AddWithValue("@username", Session["username"].ToString());
                   cmd.Parameters.AddWithValue("@imei1", imei1);
                    cmd.Parameters.AddWithValue("@imei2", imei2);
                  
                    cmd.Parameters.AddWithValue("@brand", brand);
                   cmd.Parameters.AddWithValue("@model", model);

                   

                    cmd.ExecuteNonQuery();
                    con.Close();

                    Response.Write("<script>alert('Succesfully Updated')</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "')</script>");
                }




            }

            if (e.CommandName == "check")
            {
                {
                    if (con.State == ConnectionState.Open)
                    {
                        con.Close();


                    }



                    con.Open();

                 }
                string[] arg = new string[2];
                arg = e.CommandArgument.ToString().Split(';');
                string im1 = arg[0];
                string im2 = arg[1];
                SqlCommand cmd = new SqlCommand("SELECT * from Imei where imei1='" + im1 + "' and imei2='" + im2 + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    ((Image)DataList1.Items[e.Item.ItemIndex].FindControl("Image1")).Visible = true;
                    Response.Write("<script>alert('Match Found!')</script>");
                }
                else
                {
                    Response.Write("<script>alert('No match found')</script>");
                }
            }

            if (e.CommandName == "delete")
            {
                string pid = Request.QueryString["id"];
                SqlCommand cmd = new SqlCommand("DELETE FROM sell_post WHERE id='" + pid + "'", con);
                
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Post Deleted!')</script>");
            }

        }
    }
}
