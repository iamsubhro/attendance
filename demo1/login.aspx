<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="demo1.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LOG IN</title>
<style type="text/css">
		
		body{
			margin: 0;
	        width: 100%;
	        height: 100%;
	        background: url(images/4.png);
	        background-size: cover;
	        font-family: sans-serif; 
		}

		.loginbox{
			width: 880px;
			height: 550px;
			background: #000;
			color: #fff;
			top: 50%;
			left: 65%;
			opacity: 0.9;
			filter: alpha(opacity=70);
			position: absolute;
			transform: translate(-50%,-50%);
			box-sizing: border-box;
			border-radius: 25px;
		}

		.loginbox1{
			width: 350px;
			height: 550px;
			background: #000;
			color: #fff;
			top: 50%;
			left: 17.75%;
			opacity: 0.7;
			filter: alpha(opacity=70);
			position: absolute;
			transform: translate(-50%,-50%);
			box-sizing: border-box;
			border-radius: 25px;
		}


		.h1{
			margin: 10px;
			padding: 0 0 20px;
			text-align: left;
			font-size: 28px;
		}

		.loginbox1 p{
			margin: 10px;
			padding: 0;
			font-weight: bold;
		}

		.loginbox1 input{
			width: 100%
			margin-bottom: 20px;
		}

		.loginbox1 input[type="text"], input[type="password"]
		{
			margin: 10px;
			border: none;
			border-bottom: 1px solid #fff;
			background: transparent;
			outline: none;
			height: 20px;
			color: #fff;
			font-size: 16px;
		}

		.loginbox1 input[type="submit"]
		{
			margin: 10px;
			border: none;
			outline: none;
			height: 40px;
			width: 200px;
			background: #fb2525;
			font-size: 18px;
			border-radius: 20px;
		}

		.loginbox1 input[type="submit"]:hover
		{
			cursor: pointer;
			background: #ffc107;
			color: #000;
		}

		.loginbox1 a{
			margin: 10px;
			text-decoration: none;
			font-size: 12px;
			line-height: 20px;
			color: darkgrey;
		}

		.loginbox1 a:hover
		{
			color: #ffc107
		}


		*{box-sizing: border-box;}
         body {font-family: Verdana, sans-serif;}
         .mySlides {display: none;}
         

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  margin-right: 0;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
  font-family: "Times New Roman",Times,serif;
  font-weight: bold;
  font-size: 20px;
}

.h2{
	width: 350px;
	border-radius: 25px;
}



/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

.round{
	border-radius: 25px;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}

	</style>
</head>
<body>
    <div class="loginbox">

		<div class="slideshow-container">

<div class="mySlides fade">
  <img src="images/1.jpg" style="width:100%" class="round">
  <div class="text">Techease creates a personal and unique experience of EpiServer such that each visitor of your website becomes a part of the behavioural marketing automation engine with EpiServer. A virtually dynamic content on your website brings you customers, which can be tracked with customer demography or behavioural data available in EpiServer. Delivering high quality, CMS in less time is our USP. We vouch for web engagement through EPiServer as a professional content management platform. It drives in business results for end customers. </div>
</div>

<div class="mySlides fade">
  <img src="images/2.jpg" style="width:100%" class="round">
  <div class="text">Define and design with applications, tailored to meet your ever-evolving business with Techease. Connect your business across boundaries through a robust ‘Application Development and Integration’. We help your business to have a competitive edge, aligned with technology and applications for dynamic business needs. 

Software readily available in the market might not be apt or flexible for your business parameters. Here in comes the need for custom build application development with efficiency, which can deliver consistent result with expertise. Our application solutions meet, even the most challenging IT problems endeavouring towards successful outcomes. </div>
</div>

<div class="mySlides fade">
  <img src="images/3.jpg" style="width:100%" class="round">
  <div class="text">We at Techease Systems, provide quality Magento solutions to clients to help them harness the supremacy of the web. We work on: 
Custom Ecommerce Solutions
Template Customization
Magento Website Development
Magento Store Development
Custom Extensions Development
Maintenance and Data Migration</div>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

</div>

<div class="loginbox1">
	<img src="images/1.png" class="h2">
	<h2 class="h1">LOG-IN</h2>

    <form id="form1" runat="server">
    <p>USERNAME</p>
		<asp:TextBox ID="txtUserName" runat="server" placeholder="Enter Username" /><br>
		<br><p>PASSWORD</p>
        <asp:TextBox ID="txtpassword" runat="server" placeholder="Enter PassWord" TextMode="Password"  /><br>
        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" /><br />
        <asp:Label ID="Label1" runat="server" Text="INVALID CREDENTIALS" Visible="false"></asp:Label>
		<br><br><a href="#">Lost your Password ? </a><br>
		<a href="#">Don't have an account</a>
        
	</form>
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 6000);
}
</script>
</body>
</html>
