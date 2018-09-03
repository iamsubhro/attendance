<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="demo1.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>REGISTRATION</title>

    <style type="text/css">
		
		body{
			margin: 0;
	        width: 100%;
	        height: 100%;
	        background: url(images/4.jpg);
	        background-size: cover;
	        font-family: sans-serif; 
		}

		.h2{
	        width: 350px;
	        border-radius: 0px;
        }

        .c1{
        	margin-left: 100px;
        	color: white;

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
          margin-left: 300px;
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
    font-size: 22px;
    color: #818181;
    display: block;
}

.sidenav a:hover {
    color: #f1f1f1;
}

.round{
          border-radius: 4px;
          height: 0.6cm;
          width: 5cm;
         }

.round1{
          border-radius: 4px;
          height: 0.5cm;
          width: 2cm;
         }



@media screen and (max-height: 450px) {
  .sidenav {padding-top: 20px;}
  .sidenav a {font-size: 18px;}
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
<div style=" width:200px; height:100px; background-color: #111;">

	<div style=" margin-left:200px; width:1200px;height:600px; background-color: black; opacity: 0.7;
			filter: alpha(opacity=70); ">

		<div class="c1">
    
    <br>
  Employee Code: &nbsp &nbsp 
   <asp:TextBox ID="TextBox1" CssClass="round1"  runat="server"></asp:TextBox>
  
  <br><br>
  Employee Name: &nbsp &nbsp 
  <asp:TextBox ID="TextBox2" CssClass="round" runat="server"></asp:TextBox>
  <br>
            <br />
             
            Gender: &nbsp &nbsp &nbsp &nbsp 
         <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="round" RepeatDirection="Horizontal">
               <asp:ListItem>MALE</asp:ListItem>
                <asp:ListItem>FEMALE</asp:ListItem>
            </asp:RadioButtonList>
            <br>

  Designation: &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
  <asp:TextBox ID="TextBox3" CssClass="round" runat="server"></asp:TextBox>
  <br><br>
  Department: &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
  <asp:TextBox ID="TextBox4" CssClass="round" runat="server"></asp:TextBox>
  <br><br>

  Email Address: &nbsp &nbsp &nbsp &nbsp 
  <asp:TextBox ID="TextBox5" CssClass="round" runat="server"></asp:TextBox>
  <br><br>

  Reporting To: &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
            <asp:DropDownList ID="DropDownList1" CssClass="round" placeholder="Choose from list" runat="server">
                <asp:ListItem> </asp:ListItem>
                <asp:ListItem>JITEN ASHER</asp:ListItem>
                <asp:ListItem>SHIV</asp:ListItem>

  </asp:DropDownList>
  <br><br>

  USER NAME: &nbsp &nbsp &nbsp &nbsp &nbsp 
  <asp:TextBox ID="TextBox6" CssClass="round" runat="server"></asp:TextBox>
  <br><br>
  PASSWORD: &nbsp &nbsp &nbsp &nbsp &nbsp 
  <asp:TextBox ID="TextBox8" CssClass="round" TextMode="Password" runat="server"></asp:TextBox>
  <br><br>

  Date Of Joining: &nbsp &nbsp &nbsp 
            <asp:TextBox ID="TextBox7" CssClass="round" TextMode="Date" runat="server"></asp:TextBox>
  <br><br>

  User Role:  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  
   <asp:DropDownList ID="DropDownList2" CssClass="round" placeholder="Choose from list" runat="server">
   <asp:ListItem></asp:ListItem>
   <asp:ListItem>ADMIN</asp:ListItem>
   <asp:ListItem>TOP MANAGEMENT</asp:ListItem>
   <asp:ListItem>SENIOR EMPLOYEE</asp:ListItem>
   <asp:ListItem>EMPLOYEE</asp:ListItem>
       </asp:DropDownList>
       <br /><br />

            <asp:Button ID="Button1" CssClass="g4" runat="server" Text="SAVE" OnClick="Button1_Click" />-
            <asp:Button ID="Button2" CssClass="g5" runat="server" Text="VIEW" OnClick="Button2_Click" />-
            <asp:Button ID="Button3" CssClass="g6" runat="server" Text="CANCEL" OnClick="Button3_Click" />
  <br><br />
    </form>
    </div>
    </div>
</div>
</body>
</html>
