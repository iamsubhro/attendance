<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="logout.aspx.cs" Inherits="demo1.logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LOG OUT</title>

    <style type="text/css">
		body{
			margin: 0;
	        width: 100%;
	        height: 100%;
	        background: url(images/6.jpg);
	        background-size: cover;
	        font-family: sans-serif; 
		}

		.h2{
	        width: 350px;
	        border-radius: 0px;
        }

        .text{
          text-align: center;
          font-family: "Times New Roman", Times, serif;
          font-size: 20px;
          color: white;
        }


	</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
		<img src="images/1.png" class="h2">
	</div>

  <div style=" width:1500px;height:550px; background-color: black; opacity: 0.7;
      filter: alpha(opacity=70); ">

      <br><br><br><br><br><br><br><br><br>

      <center><h2 class="text">YOU HAVE BEEN LOGGED OUT OF THE SYSTEM SUCCESSFULLY !!!</h2></center>
</div>
    </form>
</body>
</html>
