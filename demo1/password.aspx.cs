using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace demo1
{
    public partial class password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userName = Convert.ToString(Session["username"]);
            if (userName != null)
            {
                Label2.Text = userName.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mydb"].ConnectionString);
            String myquery = "select * from demo";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            String password;
            password = ds.Tables[0].Rows[0]["password"].ToString();
            con.Close();
            if (password == TextBox1.Text)
            {
                if (TextBox2.Text == TextBox3.Text && TextBox2.Text != "")
                {
                    String updatepass = "update demo set Password= '" + TextBox2.Text + "'where Username='" + Label2.Text + "'";
                    SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["mydb"].ConnectionString);
                    con1.Open();
                    SqlCommand cmd1 = new SqlCommand();
                    cmd1.CommandText = updatepass;
                    cmd1.Connection = con1;
                    cmd1.ExecuteNonQuery();
                    Session.Abandon();
                    Response.Redirect("login.aspx");
                }
                else
                {
                    Label1.Text = "New Password and Re-enter Password Not Matched / Blank Password Not Accepted";
                }
            }
            else
            {
                Label1.Text = "Invalid Username or Password - Cannot Change Password with User Authemtication";
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {

        }
    }
}