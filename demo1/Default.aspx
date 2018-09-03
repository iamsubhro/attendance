<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="demo1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>EMPLOYEE LIST</title>

    <style type="text/css">
		body{
			margin: 0;
	        width: 100%;
	        height: 100%;
	        background: url(images/13.jpg);
            background-repeat=no repeat;
	        background-size: cover;
	        font-family: sans-serif; 
		}

          .c1{
        	margin-left: 100px;
        	color: white;

        }

		.h2{
	        width: 350px;
	        border-radius: 0px;
        }

        .sidenav {
    height: 100%;
    margin-top: 122px;
    width: 200px;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    padding-top: 20px;
}

.sidenav a {
    padding: 6px 6px 6px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
}

.sidenav a:hover {
    color: #f1f1f1;
}

 .g1{

          margin-left: 860px;
          top: 10px;
          position: absolute;
         }

         .g2{

          margin-left: 910px;
          top: 10px;
          position: absolute;
         }

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 20px;}
  .sidenav a {font-size: 18px;}
}

.a1{
    border-radius: 4px;
          height: 0.6cm;
          width: 5cm;
           margin-top: 20px;
}

.b1{
              margin-left: 40px;
          margin-top: 17px;
}

 .g4{
          border-radius: 10px;
          height:30px;
          width: 80px;
          border: none;
      outline: none;
background: #fb2525;
font-size: 16px;
         }


	</style>
</head>
<body>
    <form id="form1" runat="server">

        <div>
    <img src="images/1.png" class="h2">
       <i><b><asp:Label ID="Label1" runat="server" Text="Label" style="margin-left: 750px; top: 100px; position: absolute"></asp:Label></b></i> 
    </div>

        <div class="sidenav">
  <a href="default.aspx">Employee</a><br />
  <a href="upload.aspx">Upload Attendance</a><br />
  <a href="leave.aspx">Leaves</a><br />
  <a href="approval.aspx">Approve Leave</a><br />
  <a href="report.aspx">Attendance Report</a><br />
  <a href="myleaves.aspx">My Leaves</a><br />
  <a href="password.aspx">Change Password</a>
</div>

        <div style=" width:2200px;height:50px; background-color: #111; "></div>
        <div style=" width:200px; height:800px; background-color: #111;">

<div style=" margin-left:200px; width:2000px;height:500px; background-color: black; opacity: 0.7;
			filter: alpha(opacity=70); ">

    <asp:Label ID="Label2" runat="server" Text="EMPLOYEE NAME" ForeColor="White" CssClass="b1"></asp:Label>&nbsp &nbsp
    <asp:TextBox ID="TextBox1" runat="server" CssClass="a1" ></asp:TextBox>&nbsp 
    <asp:Button ID="Button1" runat="server" Text="SEARCH" CssClass="g4" OnClick="Button1_Click1" /><br /><br />

    
        <asp:GridView ID="demo1" runat="server" AutoGenerateColumns="False" ShowFooter="True" ShowHeaderWhenEmpty="True" DatakeyNames="Srno" 
            OnRowCommand="demo1_RowCommand" OnRowEditing="demo1_RowEditing" OnRowCancelingEdit="demo1_RowCancelingEdit" OnRowUpdating="demo1_RowUpdating" OnRowDeleting="demo1_RowDeleting" CellPadding="4" ForeColor="#333333" GridLines="None">
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" ForeColor="#000066" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />

            <AlternatingRowStyle BackColor="White" />

            <Columns>
                <asp:TemplateField HeaderText="EmpCode" >
                    <ItemTemplate>
                        <asp:Label Text= '<%# Eval("EmployeeCode") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtEmployeeCode" Text='<%# Eval("EmployeeCode") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtEmployeeCode" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="EmployeeName">
                    <ItemTemplate>
                        <asp:Label Text= '<%# Eval("EmployeeName") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtEmployeeName" Text='<%# Eval("EmployeeName") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtEmployeeName" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Gender">
                    <ItemTemplate>
                        <asp:Label Text= '<%# Eval("Gender") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtGender" Text='<%# Eval("Gender") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtGender" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Designation">
                    <ItemTemplate>
                        <asp:Label Text= '<%# Eval("Designation") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtDesignation" Text='<%# Eval("Designation") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtDesignation" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Department">
                    <ItemTemplate>
                        <asp:Label Text= '<%# Eval("Department") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtDepartment" Text='<%# Eval("Department") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtDepartment" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="EmailId">
                    <ItemTemplate>
                        <asp:Label Text= '<%# Eval("EmailId") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtEmailId" Text='<%# Eval("EmailId") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtEmailId" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="ReportingTo">
                    <ItemTemplate>
                        <asp:Label Text= '<%# Eval("ReportingTo") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtReportingTo" Text='<%# Eval("ReportingTo") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtReportingTo" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Username">
                    <ItemTemplate>
                        <asp:Label Text= '<%# Eval("Username") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtUsername" Text='<%# Eval("Username") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtUsername" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Password">
                    <ItemTemplate>
                        <asp:Label Text= '<%# Eval("Password") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtPassword" Text='<%# Eval("Password") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtPassword" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="JoinDate">
                    <ItemTemplate>
                        <asp:Label Text= '<%# Eval("JoinDate") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtJoinDate" Text='<%# Eval("JoinDate") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtJoinDate" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="UserRole">
                    <ItemTemplate>
                        <asp:Label Text= '<%# Eval("UserRole") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtUserRole" Text='<%# Eval("UserRole") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtUserRole" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:ImageButton ImageUrl="~/images/ab.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px" />
                        <asp:ImageButton ImageUrl="~/images/cd.jpg" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:ImageButton ImageUrl="~/images/ef.jpg" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px" />
                        <asp:ImageButton ImageUrl="~/images/gh.jpg" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:ImageButton ImageUrl="~/images/ij.jpg" runat="server" CommandName="Addnew" ToolTip="Add new" Width="20px" Height="20px" />
                    </FooterTemplate>
                </asp:TemplateField>

            </Columns>
        </asp:GridView>
    &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydb %>" SelectCommand="SELECT DISTINCT [EmployeeName] FROM [demo]"></asp:SqlDataSource>
    <br />
        <asp:Label ID="lblSuccessMessage" Text="" runat="server" ForeColor="Green" />
        <br />
        <asp:Label ID="lblErrorMessage" Text="" runat="server" ForeColor="Red" />

  
    </div>
    </form>
</body>
</html>
