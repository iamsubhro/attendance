<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="upload.aspx.cs" Inherits="demo1.upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>UPLOAD ATTENDANCE</title>
    <style type="text/css">
		body{
			margin: 0;
	        width: 100%;
	        height: 100%;
	        background: url(images/11.jpg);
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

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 20px;}
  .sidenav a {font-size: 18px;}
}

.round{
          margin-left:350px;
          margin-top:60px;
          border-radius: 25px;
          height: 0.5cm;
          width: 5.5cm;
          color:white;
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

         .g4{
          margin-left: 550px;
          border-radius: 10px;
          height:40px;
          width: 80px;
          border: none;
      outline: none;
background: #fb2525;
font-size: 16px;
         }

         .g5{
          
          border-radius: 10px;
          height:40px;
          width: 80px;
          border: none;
      outline: none;
background: #fb2525;
font-size: 16px;
         }

         .g6{
          
          border-radius: 10px;
          height:40px;
          width: 80px;
          border: none;
      outline: none;
background: #fb2525;
font-size: 16px;
         }

         .g7{
             margin-left: 350px;
             color:white;
         }

         .a1{
    border-radius: 4px;
          height: 0.6cm;
          width: 2.5cm;
           margin-top: 150px;
}
.a2{
    border-radius: 4px;
          height: 0.5cm;
          width: 1.5cm;
           margin-top: 20px;
}

.b1{
              margin-left: 350px;
          margin-top: 200px;
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

    

<div style=" width:1400px;height:50px; background-color: #111; "></div>

        <div style=" margin-left:200px; width:1200px;height:500px; background-color: black; opacity: 0.7;
			filter: alpha(opacity=70); ">

                 <asp:Label ID="Label3" runat="server" Text="Select Month & Year" ForeColor="White" CssClass="b1"></asp:Label>&nbsp &nbsp
    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="a1">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>JANUARY</asp:ListItem>
        <asp:ListItem>FEBRUARY</asp:ListItem>
        <asp:ListItem>MARCH</asp:ListItem>
        <asp:ListItem>APRIL</asp:ListItem>
        <asp:ListItem>MAY</asp:ListItem>
        <asp:ListItem>JUNE</asp:ListItem>
        <asp:ListItem>JULY</asp:ListItem>
        <asp:ListItem>AUGUST</asp:ListItem>
        <asp:ListItem>SEPTEMBER</asp:ListItem>
        <asp:ListItem>OCTOBER</asp:ListItem>
        <asp:ListItem>NOVEMBER</asp:ListItem>
        <asp:ListItem>DECEMBER</asp:ListItem>
    </asp:DropDownList>&nbsp
    <asp:TextBox ID="TextBox1" runat="server" CssClass="a2" placeholder="YEAR"></asp:TextBox>&nbsp

        <asp:FileUpload ID="FileUpload1" CssClass="round" runat="server" /> <br /><br />

            <asp:Button ID="Button1" CssClass="g4" runat="server" Text="SAVE" OnClick="Button1_Click" />-
            <asp:Button ID="Button2" CssClass="g5" runat="server" Text="VIEW" OnClick="Button2_Click" />-
            <asp:Button ID="Button3" CssClass="g6" runat="server" Text="CANCEL" OnClick="Button3_Click" />

            <br><br />

            <asp:Label ID="Label2" runat="server" CssClass="g7" ></asp:Label>
            </div>
    </form>
</body>
</html>
