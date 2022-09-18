using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Smart_and_safe
{
    public partial class WebForm2 : System.Web.UI.Page
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


        }

        protected void Button_Click(object sender, EventArgs e)
        {
           
                string nida = "", nidb = "",thumb="",memo="",p1="",p2="";
                if (Session["role"] == null)
                {
                    Response.Write("<script>alert('Please signup or Login first to post an ad.');</script>");

                }
                else
                {


                    if (FileUpload2.HasFiles)
                    {
                   
                        int i = 0;
                        foreach (HttpPostedFile file in FileUpload2.PostedFiles)
                        {
                            string filename = file.FileName;
                            string filepath = "image/" + file.FileName;
                            file.SaveAs(System.IO.Path.Combine(Server.MapPath("~/image/"), file.FileName));
                            if (i == 0) { nida = filepath; }
                            else if (i == 1)
                            {
                                nidb = filepath;
                            }


                            i++;


                        }
                    }
                if (FileUpload1.HasFiles)
                {

                    int i = 0;
                    foreach (HttpPostedFile file in FileUpload1.PostedFiles)
                    {
                        string filename = file.FileName;
                        string filepath = "image/" + file.FileName;
                        file.SaveAs(System.IO.Path.Combine(Server.MapPath("~/image/"), file.FileName));
                        if (i == 0) { p1 = filepath; }
                        else if (i == 1)
                        {
                            p2 = filepath;
                        }


                        i++;


                    }
                }
                if (FileUpload.HasFile)
                {

                  
                       
                        string filename = FileUpload.PostedFile.FileName; 
                        string filepath = "image/"  + FileUpload.PostedFile.FileName;
                    FileUpload.PostedFile.SaveAs(System.IO.Path.Combine(Server.MapPath("~/image/") ,FileUpload.PostedFile.FileName));
                       
                          thumb = filepath;
                        


                        


                    }
                if (FileUpload3.HasFile)
                {



                    string filename = FileUpload3.PostedFile.FileName;
                    string filepath = "image/"  +FileUpload3.PostedFile.FileName;
                    FileUpload.PostedFile.SaveAs(System.IO.Path.Combine(Server.MapPath("~/image/"), FileUpload3.PostedFile.FileName));

                    memo = filepath;






                }


                try
                    { 

                        SqlCommand cmd = new SqlCommand("INSERT INTO sell_post(fname,lname,brand,model,imei1,imei2,buying_year,buying_price,asking_price,description,nid1,nid2,username,status,thumbnail,memo,pic1,pic2,contact_no) VALUES (@fname,@lname,@brand,@model,@imei1,@imei2,@buying_year,@buying_price,@asking_price,@description,@nid1,@nid2,@username,@status,@thumbnail,@memo,@pic1,@pic2,@contact_no)", con);

                        cmd.Parameters.AddWithValue("@fname", TextBox1.Text.Trim());
                        cmd.Parameters.AddWithValue("@lname", TextBox2.Text.Trim());
                        cmd.Parameters.AddWithValue("@brand", TextBox3.Text.Trim());
                        cmd.Parameters.AddWithValue("@model", TextBoxModel.Text.Trim());
                        cmd.Parameters.AddWithValue("@imei1", TextBox6.Text.Trim());
                        cmd.Parameters.AddWithValue("@imei2", TextBox7.Text.Trim());
                        cmd.Parameters.AddWithValue("@buying_year", TextBox4.Text.Trim());
                        cmd.Parameters.AddWithValue("@buying_price", TextBox5.Text.Trim());
                        cmd.Parameters.AddWithValue("@asking_price", TextBox8.Text.Trim());
                        cmd.Parameters.AddWithValue("@description", TextBox9.Text.Trim());
                        cmd.Parameters.AddWithValue("@username", Session["username"].ToString());
                        cmd.Parameters.AddWithValue("@status", "Pending");
                        cmd.Parameters.AddWithValue("@nid1", nida);
                        cmd.Parameters.AddWithValue("@nid2", nidb);
                        cmd.Parameters.AddWithValue("@thumbnail", thumb);
                        cmd.Parameters.AddWithValue("@memo", memo);
                        cmd.Parameters.AddWithValue("@pic1", p1);
                        cmd.Parameters.AddWithValue("@pic2", p2);
                        cmd.Parameters.AddWithValue("@contact_no", TextBox10.Text.Trim());





                    cmd.ExecuteNonQuery();

                        con.Close();

                        Response.Write("<script>alert('Your post will be reviewed by admin before publish');</script>");
                    }

                    catch (Exception ex) { Response.Write("<script>alert('" + ex.Message + "');</script>"); }



                }



            }

      
    }
}