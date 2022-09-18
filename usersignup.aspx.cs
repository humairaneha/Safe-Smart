using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Smart_and_safe
{
    public partial class WebForm6 : System.Web.UI.Page
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
            if (checkUserExistence())
            {

                Response.Write("<script>alert('User Already Exist ,Try different Username');</script>");
            }
            else
            {
                signUpNewUser();
            }
        }


        bool checkUserExistence()
        {

            SqlCommand cmd = new SqlCommand("SELECT * from user_login where username='" + TextBox9.Text.Trim() + "' ;", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count >= 1)
            {
                return true;

            }
            else

            { return false; }
        }

        void signUpNewUser()
        {
            try
            {


                SqlCommand cmd = new SqlCommand("INSERT INTO user_login(username,fullname,nid,contact_no,email,password,date_of_birth) VALUES (@username,@fullname,@nid,@contact_no,@email,@password,@date_of_birth)", con);
                cmd.Parameters.AddWithValue("@username", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@fullname", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@nid", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@date_of_birth", Dob.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('User created Succesfully,You can login now!');</script>");

            }

            catch (Exception ex) { Response.Write("<script>alert('" + ex.Message + "');</script>"); }

        }
    }
}