using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.IO;

namespace demo1
{
    public partial class upload : System.Web.UI.Page
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

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("logout.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int Srno;
            String date;
            String day;
            String code;
            String name;
            String shift;
            String sin;
            String sout;
            String ain;
            String aout;
            String work;
            String over;
            String time;
            String late;
            String early;
            String status;
            string path = Path.GetFileName(FileUpload1.FileName);
            path = path.Replace(" ", "");
            FileUpload1.SaveAs(Server.MapPath("~/ExcelFile/") + path);
            String ExcelPath = Server.MapPath("~/ExcelFile/") + path;
            OleDbConnection con1 = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = " + ExcelPath + "; Extended Properties=Excel 8.0; Persist Security Info = False");
            con1.Open();
            OleDbCommand cmd = new OleDbCommand("select * from [Sheet1$]", con1);
            OleDbDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                //Response.Write("<br/>"+dr[0].ToString());

                Srno = dr[0] != DBNull.Value ? Convert.ToInt32(dr[0]) : 0;
                date = dr[1].ToString();
                day = dr[2].ToString();
                code = dr[3].ToString();
                name = dr[4].ToString();
                shift = dr[5].ToString();
                sin = dr[6].ToString();
                sout = dr[7].ToString();
                ain = dr[8].ToString();
                aout = dr[9].ToString();
                work = dr[10].ToString();
                over = dr[11].ToString();
                time = dr[12].ToString();
                late = dr[13].ToString();
                early = dr[14].ToString();
                status = dr[15].ToString();
                savedata(Srno,date,day,code, name, shift, sin, sout, ain, aout, work, over, time, late, early, status);


            }
            Label2.Text = "Data Has Been Saved Successfully";


        }

        private void savedata(int Srno, String date, String day, String code, String name, String shift, String sin , String sout, String ain, String aout, String work, String over, String time, String late, String early, String status)
        {
            String query = "insert into excel(Srno,Date,Day,EmployeeCode, EmployeeName, Shift, ScheduledInTime, ScheduledOutTime, ActualTimeIn, ActualTimeOut, WorkDuration, OverTime, TimeDuration, LateBy, EarlyGoingBy, Status) values(" +Srno+",'" + date + "','" + day + "','" + code + "','" + name + "','" + shift + "','" + sin + "','" + sout + "','" + ain + "','" + aout + "','" + work + "','" + over + "','" + time + "','" + late + "','" + early + "','" + status + "')";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mydb"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
        }

    

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }
    }
}