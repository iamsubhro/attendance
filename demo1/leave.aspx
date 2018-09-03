<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="leave.aspx.cs" Inherits="demo1.leave" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LEAVES</title>
    <style type="text/css">
		body{
			margin: 0;
	        width: 100%;
	        height: 100%;
	        background: url(images/10.jpg);
	        background-size: cover;
	        font-family: sans-serif; 
		}

		.h2{
	        width: 350px;
	        border-radius: 0px;
        }

        .a{
            margin-left:150px;
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

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 20px;}
  .sidenav a {font-size: 18px;}
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


	</style>
</head>
<body>
    <form id="form2" runat="server">
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

<div style=" width:1400px;height:50px; background-color: #111; "></div>
        <div style=" width:200px; height:1000px; background-color: #111;">

<div style=" margin-left:200px; width:1200px;height:1100px; background-color: black; opacity: 0.7;
			filter: alpha(opacity=70); ">



    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="Srno" CssClass="a"
        AutogenerateColumns="false" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit"  OnRowEditing="GridView1_RowEditing" >
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

                     <asp:TemplateField HeaderText="Date">
                    <ItemTemplate>
                        <asp:Label Text= '<%# Eval("Date") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                   <asp:Label Text= '<%# Eval("Date") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                    </FooterTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Day">
                    <ItemTemplate>
                        <asp:Label Text= '<%# Eval("Day") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Label Text= '<%# Eval("Day") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                    </FooterTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="ActualInTime">
                    <ItemTemplate>
                        <asp:Label Text= '<%# Eval("ActualTimeIn") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                       <asp:Label Text= '<%# Eval("ActualTimeIn") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                    </FooterTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="ActualTimeOut">
                    <ItemTemplate>
                        <asp:Label Text= '<%# Eval("ActualTimeOut") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                       <asp:Label Text= '<%# Eval("ActualTimeOut") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                    </FooterTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="ShortTime">
                    <ItemTemplate>
                        <asp:Label Text= '<%# Eval("LateBy") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Label Text= '<%# Eval("LateBy") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                    </FooterTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="ReasonOfLeave">
                    <ItemTemplate>
                        <asp:Label Text= '<%# Eval("ReasonOfLeave") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtReasonOfLeave" Text='<%# Eval("ReasonOfLeave") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                    </FooterTemplate>
                </asp:TemplateField>


                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                         <asp:ImageButton ImageUrl="~/images/ab.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px" />
                        </ItemTemplate>
                    <EditItemTemplate>
                        <asp:ImageButton ImageUrl="~/images/ef.jpg" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px" />
                        <asp:ImageButton ImageUrl="~/images/gh.jpg" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px" />
                    </EditItemTemplate>
                    <FooterTemplate>
                    </FooterTemplate>
                </asp:TemplateField>

            </Columns>
        </asp:GridView>
    <br />

    <asp:Label ID="lblSuccessMessage" Text="" runat="server" ForeColor="Green" />
        <br />
        <asp:Label ID="lblErrorMessage" Text="" runat="server" ForeColor="Red" />

		<br /></div>
    <br />
    <br />
    <br />
    <br />

		</div>
    </form>
</body>
</html>
