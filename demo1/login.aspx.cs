using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Xml.Linq;
using System.Configuration;

namespace demo1
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["mydb"].ConnectionString))
            {
                sqlcon.Open();
                string query = "SELECT COUNT(1) FROM demo WHERE Username=@username AND Password=@password AND UserRole='ADMIN'";
                string query1 = "SELECT COUNT(1) FROM demo WHERE Username=@user AND Password=@pass AND UserRole !='ADMIN' ";
                SqlCommand cmd = new SqlCommand(query, sqlcon);
                cmd.Parameters.AddWithValue("@username", txtUserName.Text.Trim());
                cmd.Parameters.AddWithValue("@password", txtpassword.Text.Trim());
                int count = Convert.ToInt32(cmd.ExecuteScalar());

                SqlCommand cmd1 = new SqlCommand(query1, sqlcon);
                cmd1.Parameters.AddWithValue("@user", txtUserName.Text.Trim());
                cmd1.Parameters.AddWithValue("@pass", txtpassword.Text.Trim());
                int count1 = Convert.ToInt32(cmd1.ExecuteScalar());

                if (count == 1)
                {
                    Session["Username"] = txtUserName.Text.Trim();
                    Response.Redirect("registration.aspx");
                }

                else if(count1 == 1)
                {
                    Session["Username"] = txtUserName.Text.Trim();
                    Response.Redirect("leave.aspx");
                }

                else
                {
                    Label1.Visible = true;
                }
            }
        }
    }
}