using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Text;
using System.Data.SqlClient;

namespace demo1
{
    public partial class approval : System.Web.UI.Page
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
                SqlDataAdapter sqlo = new SqlDataAdapter("SELECT Srno, EmployeeName, Date, Day, ActualTimeIn,ActualTimeOut,LateBy,ReasonOfLeave, ApprovalStatus, ApprovalRemarks FROM excel ", sqlCon);
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



        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            PopulateGridview();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["mydb"].ConnectionString))
                {
                    sqlCon.Open();
                    string query = "UPDATE excel SET ApprovalStatus=@status, ApprovalRemarks=@remark  WHERE Srno=@Srno";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);

                    sqlCmd.Parameters.AddWithValue("@status", (GridView1.Rows[e.RowIndex].FindControl("DropDownList1") as DropDownList).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@remark", (GridView1.Rows[e.RowIndex].FindControl("txtapproval") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Srno", Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()));


                    sqlCmd.ExecuteNonQuery();
                    GridView1.EditIndex = -1;
                    PopulateGridview();
                    lblSuccessMessage.Text = "UPDATED SUCCESSFULLY";
                    lblErrorMessage.Text = "";
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;

            }
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            PopulateGridview();
        }
    }
}