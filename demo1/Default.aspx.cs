using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace demo1
{
    public partial class Default : System.Web.UI.Page
    {
        string Connection = ConfigurationManager.ConnectionStrings["mydb"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateGridview();
            }

        }

        void PopulateGridview()
        {
            DataTable dtbl = new DataTable();
            using (SqlConnection sqlCon = new SqlConnection(Connection))
            {
                sqlCon.Open();
                SqlDataAdapter sqlo = new SqlDataAdapter("SELECT* FROM demo", sqlCon);
                sqlo.Fill(dtbl);
            }

            if (dtbl.Rows.Count > 0)
            {
                demo1.DataSource = dtbl;
                demo1.DataBind();
            }
            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                demo1.DataSource = dtbl;
                demo1.DataBind();
                demo1.Rows[0].Cells.Clear();
                demo1.Rows[0].Cells.Add(new TableCell());
                demo1.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                demo1.Rows[0].Cells[0].Text = "NO DATA FOUND ";
                demo1.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }
        }


        protected void demo1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("Addnew"))
                {
                    using (SqlConnection sqlCon = new SqlConnection(Connection))
                    {
                        sqlCon.Open();
                        string query = "INSERT INTO demo (EmployeeCode, EmployeeName, Gender, Designation, Department, EmailId, ReportingTo, Username, Password, UserRole, JoinDate) VALUES (@EmployeeCode, @EmployeeName, @Gender, @Designation, @Department, @EmailId, @ReportingTo, @Username, @Password, @UserRole, @JoinDate)";
                        SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                        sqlCmd.Parameters.AddWithValue("@EmployeeCode", (demo1.FooterRow.FindControl("txtEmployeeCode") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@EmployeeName", (demo1.FooterRow.FindControl("txtEmployeeName") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Gender", (demo1.FooterRow.FindControl("txtGender") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Designation", (demo1.FooterRow.FindControl("txtDesignation") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Department", (demo1.FooterRow.FindControl("txtDepartment") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@EmailId", (demo1.FooterRow.FindControl("txtEmailId") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@ReportingTo", (demo1.FooterRow.FindControl("txtReportingTo") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Username", (demo1.FooterRow.FindControl("txtUsername") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Password", (demo1.FooterRow.FindControl("txtPassword") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@UserRole", (demo1.FooterRow.FindControl("txtUserRole") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@JoinDate", (demo1.FooterRow.FindControl("txtJoinDate") as TextBox).Text.Trim());

                        sqlCmd.ExecuteNonQuery();
                        PopulateGridview();
                        lblSuccessMessage.Text = "NEW RECORD ADDED";
                        lblErrorMessage.Text = "";
                    }
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;

            }
        }

        protected void demo1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            demo1.EditIndex = e.NewEditIndex;
            PopulateGridview();
        }

        protected void demo1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            demo1.EditIndex = -1;
            PopulateGridview();
        }

        protected void demo1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(Connection))
                {
                    sqlCon.Open();
                    string query = "UPDATE demo SET EmployeeCode=@EmployeeCode,EmployeeName=@EmployeeName,Gender=@Gender,Designation=@Designation,Department=@Department, EmailId=@EmailId, ReportingTo=@ReportingTo, Username=@Username, Password=@Password, UserRole=@UserRole, JoinDate=@JoinDate WHERE Srno=@Srno";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@EmployeeCode", (demo1.Rows[e.RowIndex].FindControl("txtEmployeeCode") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@EmployeeName", (demo1.Rows[e.RowIndex].FindControl("txtEmployeeName") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Gender", (demo1.Rows[e.RowIndex].FindControl("txtGender") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Designation", (demo1.Rows[e.RowIndex].FindControl("txtDesignation") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Department", (demo1.Rows[e.RowIndex].FindControl("txtDepartment") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@EmailId", (demo1.Rows[e.RowIndex].FindControl("txtEmailId") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@ReportingTo", (demo1.Rows[e.RowIndex].FindControl("txtReportingTo") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Username", (demo1.Rows[e.RowIndex].FindControl("txtUsername") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Password", (demo1.Rows[e.RowIndex].FindControl("txtPassword") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@UserRole", (demo1.Rows[e.RowIndex].FindControl("txtUserRole") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@JoinDate", (demo1.Rows[e.RowIndex].FindControl("txtJoinDate") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Srno", Convert.ToInt32(demo1.DataKeys[e.RowIndex].Value.ToString()));


                    sqlCmd.ExecuteNonQuery();
                    demo1.EditIndex = -1;
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

        protected void demo1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(Connection))
                {
                    sqlCon.Open();
                    string query = "DELETE FROM demo WHERE Srno=@Srno";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@Srno", Convert.ToInt32(demo1.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();
                    PopulateGridview();
                    lblSuccessMessage.Text = "DELETED SUCCESSFULLY";
                    lblErrorMessage.Text = "";
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;

            }

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(Connection))
            {
                string find = "Select * from demo where(EmployeeName like '%' +@name)";
                SqlCommand com = new SqlCommand(find, sqlCon);
                com.Parameters.Add("@name", SqlDbType.NVarChar).Value = TextBox1.Text;

                sqlCon.Open();
                com.ExecuteNonQuery();
                SqlDataAdapter ad = new SqlDataAdapter();
                ad.SelectCommand = com;
                DataSet ds = new DataSet();
                ad.Fill(ds, "EmployeeName");

                demo1.DataSource = ds;
                demo1.DataBind();

                sqlCon.Close();


            }
        }

        
    }
}