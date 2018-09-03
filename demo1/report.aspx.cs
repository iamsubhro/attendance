using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;

namespace demo1
{
    public partial class report : System.Web.UI.Page
    {
        string Connection = ConfigurationManager.ConnectionStrings["mydb"].ConnectionString;

        string user;
        protected void Page_Load(object sender, EventArgs e)
        {
            string userName = Convert.ToString(Session["username"]);
            user = userName.ToString();
            if (userName != null)
            {
                Label1.Text = "WELCOME-->" + userName.ToString();
            }
            else
            {
                Response.Redirect("login.aspx");
            }

            if (!IsPostBack)
            {
                PopulateGridview();
            }

        }

        void PopulateGridview()
        {
            DataTable dtbl = new DataTable();
            using (SqlConnection sqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["mydb"].ConnectionString))
            {
                sqlCon.Open();
                SqlDataAdapter sqlo = new SqlDataAdapter("SELECT Srno, EmployeeName, Date, Day, ActualTimeIn,ActualTimeOut,LateBy,ReasonOfLeave, ApprovalStatus, ApprovalRemarks FROM excel WHERE EmployeeName='" + user + "'", sqlCon);
                sqlo.Fill(dtbl);
            }

            if (dtbl.Rows.Count > 0)
            {
                GridView1.DataSource = dtbl;
                GridView1.DataBind();
            }
            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                GridView1.DataSource = dtbl;
                GridView1.DataBind();
                GridView1.Rows[0].Cells.Clear();
                GridView1.Rows[0].Cells.Add(new TableCell());
                GridView1.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                GridView1.Rows[0].Cells[0].Text = "NO DATA FOUND ";
                GridView1.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
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

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.ClearContent();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", string.Format("attachment; filename={0}", "ProductDetail.xls"));
            Response.ContentType = "application/ms-excel";
            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);
            GridView1.AllowPaging = false;
            GridView1.HeaderRow.Style.Add("background-color", "#FFFFFF");
            for (int i = 0; i < GridView1.HeaderRow.Cells.Count; i++)
            {
                GridView1.HeaderRow.Cells[i].Style.Add("background-color", "#507CD1");
            }
            int j = 1;
            foreach (GridViewRow gvrow in GridView1.Rows)
            {
                gvrow.BackColor = System.Drawing.Color.White;
                if (j <= GridView1.Rows.Count)
                {
                    if (j % 2 != 0)
                    {
                        for (int k = 0; k < gvrow.Cells.Count; k++)
                        {
                            gvrow.Cells[k].Style.Add("background-color", "#EFF3FB");
                        }
                    }
                }
                j++;
            }
            GridView1.RenderControl(htw);
            Response.Write(sw.ToString());
            Response.End();
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(Connection))
            {
                string find = "Select * from excel where(Date like '%' +@name) AND  EmployeeName='" + user + "' ";
                SqlCommand com = new SqlCommand(find, sqlCon);
                com.Parameters.Add("@name", SqlDbType.NVarChar).Value = TextBox1.Text;

                string find1 = "Select * from excel where(Date like '%' +@name1) AND  EmployeeName='" + user + "' ";
                SqlCommand com1 = new SqlCommand(find1, sqlCon);
                com1.Parameters.Add("@name1", SqlDbType.NVarChar).Value = DropDownList2.Text;

                sqlCon.Open();
                com.ExecuteNonQuery();
                SqlDataAdapter ad = new SqlDataAdapter();
                ad.SelectCommand = com;
                DataSet ds = new DataSet();
                ad.Fill(ds, "YEAR(Date)");

                com1.ExecuteNonQuery();
                SqlDataAdapter ad1 = new SqlDataAdapter();
                ad1.SelectCommand = com;
                DataSet ds1 = new DataSet();
                ad1.Fill(ds1, "MONTH(Date)");

                GridView1.DataSource = ds;
                GridView1.DataBind();

                GridView1.DataSource = ds1;
                GridView1.DataBind();

                sqlCon.Close();


            }

        }
    }
}