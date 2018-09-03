<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="report.aspx.cs" Inherits="demo1.report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
		body{
			margin: 0;
	        width: 100%;
	        height: 100%;
	        background: url(images/8.jpg);
	        background-size: cover;
	        font-family: sans-serif; 
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

         .a{
             margin-left: 800px;
         }

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 20px;}
  .sidenav a {font-size: 18px;}
}

.a1{
    border-radius: 4px;
          height: 0.6cm;
          width: 2.5cm;
           margin-top: 20px;
}
.a2{
    border-radius: 4px;
          height: 0.5cm;
          width: 1.5cm;
           margin-top: 20px;
}

.b1{
              margin-left: 40px;
          margin-top: 17px;
}

 .g4{
          border-radius: 8px;
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
        <asp:LinkButton ID="LinkButton1" CssClass="g1" runat="server" OnClick="LinkButton1_Click">Home | </asp:LinkButton>
        <asp:LinkButton ID="LinkButton3" CssClass="g2" runat="server" OnClick="LinkButton3_Click"> | Log-Out</asp:LinkButton>

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

<div style=" width:1400px;height:50px; background-color: #111; ">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" CssClass="a" ForeColor="White" >Export To Excel</asp:LinkButton>

&nbsp;&nbsp;

</div>

<div style=" margin-left:200px; width:1200px;height:500px; background-color: black; opacity: 0.7;
			filter: alpha(opacity=70); ">

     <asp:Label ID="Label2" runat="server" Text="Select Month & Year" ForeColor="White" CssClass="b1"></asp:Label>&nbsp &nbsp
    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="a1">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>01</asp:ListItem>
        <asp:ListItem>02</asp:ListItem>
        <asp:ListItem>03</asp:ListItem>
        <asp:ListItem>04</asp:ListItem>
        <asp:ListItem>05</asp:ListItem>
        <asp:ListItem>06</asp:ListItem>
        <asp:ListItem>07</asp:ListItem>
        <asp:ListItem>08</asp:ListItem>
        <asp:ListItem>09</asp:ListItem>
        <asp:ListItem>10</asp:ListItem>
        <asp:ListItem>11</asp:ListItem>
        <asp:ListItem>12</asp:ListItem>
    </asp:DropDownList>&nbsp
    <asp:TextBox ID="TextBox1" runat="server" CssClass="a2" placeholder="YEAR"></asp:TextBox>&nbsp
    <asp:Button ID="Button1" runat="server" Text="SUBMIT" CssClass="g4" OnClick="Button1_Click" /><br /><br />


		&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
            AutogenerateColumns="false" >
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />

            <Columns>
                <asp:TemplateField HeaderText="Srno">
                    <ItemTemplate>
                        <asp:Label Text= '<%# Eval("Srno") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Label ID="txtno" Text='<%# Eval("Srno") %>' runat="server" />
                    </EditItemTemplate>
          
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Employee Name">
                    <ItemTemplate>
                        <asp:Label Text= '<%# Eval("EmployeeName") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Label ID="txtEmployeeName" Text='<%# Eval("EmployeeName") %>' runat="server" />
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Date">
                    <ItemTemplate>
                        <asp:Label Text= '<%# Eval("Date") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Label ID="txtdate" Text='<%# Eval("Date") %>' runat="server" />
                    </EditItemTemplate>
       
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Day">
                    <ItemTemplate>
                        <asp:Label Text= '<%# Eval("Day") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Label ID="txtday" Text='<%# Eval("Day") %>' runat="server" />
                    </EditItemTemplate>
           
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Actual Time In">
                    <ItemTemplate>
                        <asp:Label Text= '<%# Eval("ActualTimeIn") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Label ID="txtin" Text='<%# Eval("ActualTimeIn") %>' runat="server" />
                    </EditItemTemplate>
                  
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Actual Time Out">
                    <ItemTemplate>
                        <asp:Label Text= '<%# Eval("ActualTimeOut") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Label ID="txtout" Text='<%# Eval("ActualTimeOut") %>' runat="server" />
                    </EditItemTemplate>
                  
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Short Time">
                    <ItemTemplate>
                        <asp:Label Text= '<%# Eval("LateBy") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Label ID="txtshort" Text='<%# Eval("LateBy") %>' runat="server" />
                    </EditItemTemplate>
                  
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Reason Of Leave">
                    <ItemTemplate>
                        <asp:Label Text= '<%# Eval("ReasonOfLeave") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Label ID="txtreason" Text='<%# Eval("ReasonOfLeave") %>' runat="server" />
                    </EditItemTemplate>
                  
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Status">
                    <ItemTemplate>
                        <asp:Label Text= '<%# Eval("ApprovalStatus") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList1" Text='<%# Eval("ApprovalStatus") %>' runat="server">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>APPROVED</asp:ListItem>
                            <asp:ListItem>REJECTED</asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Approval Remarks">
                    <ItemTemplate>
                        <asp:Label Text= '<%# Eval("ApprovalRemarks") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                         <asp:TextBox ID="txtapproval" Text='<%# Eval("ApprovalRemarks") %>' runat="server" />
                    </EditItemTemplate>
                    
                </asp:TemplateField>

            </Columns>
        </asp:GridView>



		</div>
    </form>
</body>
</html>
