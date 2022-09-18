using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Web.Handlers;

namespace Smart_and_safe
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            // Session.Timeout = 2;
            if (!IsPostBack)
            {
                try
                {

                    if (Session["role"] == null)
                    {
                       
                        login_link.Visible = true;
                        signup_link.Visible = true;

                        if (Request.Cookies["id"] != null)
                        {
                            TextBox5.Text = Request.Cookies["id"].Value;
                        }

                        if (Request.Cookies["apassword"] != null)
                        {
                            string pass = Request.Cookies["apassword"].Value.ToString();
                            TextBox8.Attributes.Add("value", pass);
                        }


                        if (Request.Cookies["id"] != null && Request.Cookies["apassword"] != null)
                        {
                            remember1.Checked = true;
                        }

                        if (Request.Cookies["username"] != null)
                        {
                            TextBox1.Text = Request.Cookies["username"].Value;

                        }


                        if (Request.Cookies["password"] != null)
                        {
                            string upass = Request.Cookies["password"].Value.ToString();
                            TextBox2.Attributes.Add("value", upass);
                        }


                        if (Request.Cookies["username"] != null && Request.Cookies["password"] != null)
                        {
                            remember.Checked = true;
                        }




                    }

                    else if (Session["role"].Equals("user"))
                    {

                        LinkButton7.Visible = true;
                        LinkButton7.Text = "Hello " + Session["username"].ToString();
                        LinkButton3.Visible = true;
                        LinkButton8.Visible = true;
                        LinkButton6.Visible = true;
                        admin_login.Visible = false;

                    }
                    else if (Session["role"].Equals("admin"))
                    {
                        LinkButton2.Visible = true;
                        LinkButton7.Visible = true;
                        LinkButton7.Text = "Hello Admin";
                        imei_link.Visible = true;
                        LinkButton3.Visible = true;
                        LinkButton1.Visible = false;
                        LinkButton4.Visible = false;
                        LinkButton5.Visible = false;
                        report_link.Visible = false;
                        admin_login.Visible = false;


                    }

                }

                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message.ToString() + "');</script>");
                }
            }
        }






        protected void Button3_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * from admin_login where id='" + TextBox5.Text.Trim() + "' AND password='" + TextBox8.Text.Trim() + "';", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Response.Write("<script>alert('Login Successful');</script>");

                    Session["fullname"] = dr.GetValue(1).ToString();
                    Session["role"] = "admin";
                   
                    if (remember1.Checked)
                    {
                        Response.Cookies["apassword"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["id"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["id"].Value = TextBox5.Text.Trim();
                        Response.Cookies["apassword"].Value = TextBox8.Text.Trim();
                        Response.Cookies["apassword"].Expires = DateTime.Now.AddDays(1);
                        Response.Cookies["id"].Expires = DateTime.Now.AddDays(1);



                    }

                    else
                    {
                        Response.Cookies["apassword"].Value = "";
                        Response.Cookies["apassword"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["id"].Value = "";
                        Response.Cookies["id"].Expires = DateTime.Now.AddDays(-1);
                    }

                    Response.Redirect("WebForm1.aspx");
                }
            }
            else
            {

                Response.Write("<script>alert('Invalid Admin');</script>");
            }


        }

    
            

        protected void Button1_Click(object sender, EventArgs e)
        {  
            if(con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * from user_login where username='" + TextBox1.Text.Trim() + "' AND password='" + TextBox2.Text.Trim() + "';", con);
            //Data Reading from the query result table
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows) 
            {
                while (dr.Read())
                {
                    Response.Write("<script>alert('Login Successful');</script>");
                    Session["username"] = dr.GetValue(0).ToString();
                    Session["fullname"] = dr.GetValue(1).ToString();
                    Session["role"] = "user";

                    if (remember.Checked==true)
                    {
                        Response.Cookies["password"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["username"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["username"].Value = TextBox1.Text.Trim();
                        Response.Cookies["password"].Value = TextBox2.Text.Trim();
                        Response.Cookies["password"].Expires = DateTime.Now.AddDays(1);
                        Response.Cookies["username"].Expires = DateTime.Now.AddDays(1);


                    }

                    else
                    {
                        Response.Cookies["password"].Value = "";
                       Response.Cookies["password"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["username"].Value ="" ;
                        Response.Cookies["username"].Expires = DateTime.Now.AddDays(-1);
                    }

                }

                Response.Redirect("WebForm1.aspx");
            
            }

            else
            {

                Response.Write("<script>alert('Invalid User');</script>");
            }
           
           
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("reviewpost.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["role"] = null;
            Response.Redirect("WebForm1.aspx");
        }

        protected void Buttonreport_Click(object sender, EventArgs e)
        {
            try
            {


                SqlCommand cmd1 = new SqlCommand("INSERT INTO Imei(imei1,imei2,gd_no) VALUES (@imei1,@imei2,@gd)", con);
                cmd1.Parameters.AddWithValue("@imei1",imei1.Text.Trim());
                cmd1.Parameters.AddWithValue("@imei2", imei2.Text.Trim());
                cmd1.Parameters.AddWithValue("@gd",gd.Text.Trim());

                con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Successfully Reported');</script>");

            }

            catch (Exception ex) { Response.Write("<script>alert('" + ex.Message + "');</script>"); }

        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm10.aspx");
        }
    }
    }
