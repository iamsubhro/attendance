using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace demo1
{
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userName = Convert.ToString(Session["username"]);
            if (userName != null)
            {
                Label1.Text = "WELCOME-->" + userName.ToString();
            }
            else
            {
                Response.Redirect("login.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["mydb"].ConnectionString);
            sqlcon.Open();
            SqlCommand cmd = new SqlCommand("insert into demo" + "(EmployeeCode,EmployeeName, Gender, Designation, Department, EmailId, ReportingTo, Username, Password, JoinDate, UserRole) values (@empcode,@empname,@gender,@designation, @department, @email, @report, @username, @password, @join, @role)", sqlcon);
            cmd.Parameters.AddWithValue("@empcode", TextBox1.Text);
            cmd.Parameters.AddWithValue("@empname", TextBox2.Text);
            cmd.Parameters.AddWithValue("@gender", RadioButtonList1.Text);
            cmd.Parameters.AddWithValue("@designation", TextBox3.Text);
            cmd.Parameters.AddWithValue("@department", TextBox4.Text);
            cmd.Parameters.AddWithValue("@email", TextBox5.Text);
            cmd.Parameters.AddWithValue("@report", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@username", TextBox6.Text);
            cmd.Parameters.AddWithValue("@password", TextBox8.Text);
            cmd.Parameters.AddWithValue("@join", TextBox7.Text);
            cmd.Parameters.AddWithValue("@role", DropDownList2.Text);
            cmd.ExecuteNonQuery();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("upload.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("logout.aspx");
        }
    }
}