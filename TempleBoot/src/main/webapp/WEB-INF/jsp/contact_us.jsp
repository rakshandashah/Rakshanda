<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.txshadow
{
text-shadow: 0 0 5px #FF4233;
}

</style>

<style>
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}

/* Slideshow container */
.slideshow-container {
  max-width: 2000px;
  position: relative;
  background-image: url("https://htmlcolorcodes.com/assets/images/html-color-codes-color-tutorials-903ea3cb.jpg");
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/6 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
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


img {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width:60%;
  height:20%;
  max-height:300px;
  horizontal-align: middle;
}
</style>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<!--Footer style-->
<link href="footer.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


</head>
<body bgcolor="#A9CCE3">
<h1 class="txshadow" style="background-color:#F1948A;">Spiritual Monk <br/></h1>
	<marquee style="color:#3CE672">WELCOME AT SPIRITUAL MONK</marquee>
	
	<div align = "right" style="background-color:#5555;color:#7777;">
		<form>
			<h1>${user.name}</h1>
			
			
			<c:set var="loginDisplay" value="null" />
	<c:choose>
	    <c:when test="${user.name == null}">
	
				<spring:url
			value="/temple/login" var="loginURL" />
				<a class="nav-item" href="${loginURL }" role="button">Login</a>
		</td>
		</c:when>
		<c:otherwise>
		<spring:url
			value="/temple/logout" var="logoutURL" />
				<a class="nav-item" href="${logoutURL }" role="button">Logout</a>
		
		</c:otherwise>	
    </c:choose>		
		
		&nbsp;
		<td><spring:url
			value="/temple/add" var="regiURL" />
				<a class="nav-item" href="${regiURL }" role="button">Register</a>
		</td>
				
		</form>
   </div>
   <div style="background-color:#EC7063;color:#F96A4A;">
		<!-- A grey horizontal navbar that becomes vertical on small screens -->
		<nav class="navbar navbar-expand-sm bg-light">

			<!-- Links -->
						<ul class="navbar-nav">
			
			<li class="nav-item">
				<spring:url value="/temple/home" var="homeURL" />
				<a class="nav-link" href="${homeURL }" role="button">Home</a>
				
				</li>
			
			
				
    <!-- Dropdown -->
    <li class="nav-item dropdown"> <spring:url value="/temple/home" var="homeURL" />
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
       List Of Temples
      </a>
      <div class="dropdown-menu">
      	
      	<spring:url value="/temple/mahakal" var="mahakalURL" />
				<a class="dropdown-item" href="${mahakalURL}" role="button">Mahakal Temple</a>
      	
      	
      <spring:url value="/temple/shani" var="shaniURL" />
				<a class="dropdown-item" href="${shaniURL}" role="button">ShaniDev Temple</a>
				
        <spring:url value="/temple/hanuman" var="hanumanURL" />
				<a class="dropdown-item" href="${hanumanURL}" role="button">Gebi Hanuman Temple</a>
			
			 <spring:url value="/temple/harshidhi" var="harshidhiURL" />
				<a class="dropdown-item" href="${harshidhiURL}" role="button">Harshidhi Mata Temple</a>
				
				 <spring:url value="/temple/kal" var="KalURL" />
				<a class="dropdown-item" href="${KalURL}" role="button">Kal Bhairav Temple</a> 
			
			 <spring:url value="/temple/Mata" var="MataURL" />
				<a class="dropdown-item" href="${MataURL}" role="button">Garkalika Mata Temple</a> 	
				
				 <spring:url value="/temple/Ganesh" var="GaneshURL" />
				<a class="dropdown-item" href="${GaneshURL}" role="button">Chintaman Ganesh Temple</a> 	
      
      
      </div>
    </li>
   
    <li class="nav-item dropdown"><spring:url value="/temple/home" var="homeURL" />
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
       OurService
      </a>
      <div class="dropdown-menu">
      	<a class="dropdown-item" href="https://www.amazon.in/slp/spiritual-books/uq86b79yfwc26gk">Books</a>
        <a class="dropdown-item" href="#">VIP Service</a>
        <a class="dropdown-item" href="https://in.hotels.com/?locale=en_IN&pos=HCOM_IN&rffrid=sem.hcom.IN.google.003.00.03.s.kwrd=c.352283015712.71676965275.1945405381.1t1.kwd-123376676.1007796..hotel%20info.CjwKCAjw98rpBRAuEiwALmo-yoLvN_LHsJWNct2qjJInE3I6BqG1mwmki_TgOhpGfhTYsIaT4OCbQRoCHWIQAvD_BwE.aw.ds&PSRC=AFF05&gclid=CjwKCAjw98rpBRAuEiwALmo-yoLvN_LHsJWNct2qjJInE3I6Bq
G1mwmki_TgOhpGfhTYsIaT4OCbQRoCHWIQAvD_BwE&gclsrc=aw.ds">Hotel</a>
        <a class="dropdown-item" href="https://www.justdial.com/Ujjain/Astrologers/nct-10022682">Astrologer</a>
        <a class="dropdown-item" href="https://www.amazon.com/slp/spiritual-items/hvpfx4g943547a8">Spritual Accessories</a>
      </div>
    </li>

		<li><spring:url
      value="/temple/donate" var="donateURL" />
        <a class="nav-link" href="${donateURL }" role="button">Donate</a>
    </li>

	
	
	
	
		   <li> <spring:url value="/temple/Receipt" var="homeURL" />
<a class="nav-link" href="/temple/Receipt">Receipt</a></li>



    <li> <spring:url value="/temple/home" var="homeURL" />
<a class="nav-link" href="#">Media</a></li>

    <li> <spring:url value="/temple/home" var="homeURL" />
<a class="nav-link" href="#">Book Prasad</a></li>
  

<li><spring:url
      value="/temple/about" var="aboutURL" />
        <a class="nav-link" href="${aboutURL }" role="button">About Us</a>
    </li>

<li><spring:url
      value="/temple/contact" var="contactURL" />
        <a class="nav-link" href="${contactURL }" role="button">Contact Us</a>
    </li>

   
			</ul>
<br>
<br>
<br>
</nav>
</div>

	
<div class="slideshow-container" style="background-color:#FA7366;width:100%;">

<div class="mySlides fade">
  <div class="numbertext">1 / 6</div>
  <img src="https://shrimathuraji.com/wp-content/uploads/2018/05/mahakaal-temple.jpg"  align="middle">
  <div class="text">Mahakal</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 6</div>
  <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Lord_Kal_Bhairav%2C_Ujjain.jpg/1280px-Lord_Kal_Bhairav%2C_Ujjain.jpg"  align="middle">
  <div class="text">Kal Bhairav</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 6</div>
  <img src="https://image3.mouthshut.com/images/Restaurant/Photo/-83381_8236.jpg"  align="middle">
  <div class="text">Harsidhdhi Maa</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">4 / 6</div>
  <img src="http://media.webdunia.com/_media/hi/img/picture-gallery/thumb/photothumb/2235B_Gabi-Hanuman_2-b.jpg"  align="middle">
  <div class="text">Gebi Hanumanji</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">5 / 6</div>
  <img src="https://www.newstracklive.com/uploads/jivan-mantra/Religion/Nov/26/big_thumb/gadh-kalik_56570301ba778.jpg"  align="middle">
  <div class="text">Gadhkalika</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">6 / 6</div>
  <img src="https://i.ytimg.com/vi/FGIVGC9sU8M/hqdefault.jpg"  align="middle">
  <div class="text">Chintaman Ganeshji</div>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
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
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>
	
	
<div style="border: thick;border-color: yellow; background-color:#AED6F1;">
<!-- Show Other Pages are here -->
<div class="container">
		<spring:url value="/temple/contact" var="saveURL" />
		
<div class="header">
  <a href="#default" class="logo"><span style="color:#900C3F">Spiritual</span> Monk</a>
  <div class="header-right">
   
       <a href="contact_us.jsp">Contact</a>
    <a href="about_us.jsp">About</a>
  </div>
</div>

<div style="padding-left:20px; color:white" >
  <h1 style="color:white" align="center">Contact Us</h1>
</div>


<div style="background-color: rgba(35, 51, 71, 0.6);"	>

<h1 style="color:white;margin-left:10px">Address Details</h1>
<h3 style="color:DodgerBlue;margin-left:40px"> 20-21, 1st floor, Above Mahanagar Press, Agra Bombay Rd,<br> Press Complex, Indore, Madhya Pradesh 452001.</h3>


<h1 style="color:white;margin-left:20px">Contact</h1>



<table id="t01">
  <tr>
    <th>Office</th>
    <th>Designation</th> 
    <th>contact Number</th>
  </tr>
  <tr>
    <td>Main Office</td>
    <td>Administrator</td>
    <td>0731 428 5004</td>
  </tr>
 
  <tr>
    <td>Office</td>
    <td>Staff Head</td>
    <td>8871577736</td>
  </tr>
</table>
<br>




<h2 style="color:white;margin-left:10px">Email-Address</h2>
<h3 style="color:#FF5733;margin-left:40px"><a href="https://www.gmail.com">Email-Address</a></h3>



<h2 style="color:white;margin-left:10px">FaceBook</h2>
<h3 style="color:#FF5733;margin-left:40px"> <a href= "https://www.facebook.com/mahakaleshwarmahadeva">FaceBook</a></h3>




<h2 style="color:white;margin-left:10px">Instagram</h2>
<h3 style="color:#FF5733;margin-left:40px"><a href="https://www.instagram.com/mahakaleshwar_mahadev">Instagram</a></h3>


</div>

  
  

<h3 style="color:White;">@SpiritualMonk.com . All rights reserved.<br>Developed by SpiritualMonk Team.</h3>

    </div>
    
 <footer class="ct-footer">
 
    <ul class="ct-footer-list text-center-sm">
      <li>
      
        <h2 class="ct-footer-list-header">Public Relations</h2>
        <ul>
          <li>
            <a href="http://mahakaleshwar-garima.blogspot.com">SpiritualMonk Related Blog</a>
          </li>
          
        </ul>
      </li>
      <li>
        <h2 class="ct-footer-list-header">About</h2>
        <ul>
          <li>
            <a href="">Our Staff</a>
          </li>
          <li>
            <spring:url
      value="/temple/contact" var="contactURL" />
        <a class="nav-link" href="${contactURL }" role="button">Contact Us</a>
          </li>
        </ul>
      </li>
    </ul>
   
     <div>
          <address>
     &nbsp;&nbsp;&nbsp;      <span>Spiritual Monk<br></span> 
     &nbsp;&nbsp;&nbsp;      Orlando Academy, press club MG Road Indore(M.P) <br>
     &nbsp;&nbsp;&nbsp;      Indore, 452001<br>
     &nbsp;&nbsp;&nbsp;  <span>Phone: <a href="tel:8871577736">8871577736</a></span>
          </address>
     </div>
        <div class="col-sm-6 col-md-2 ct-u-paddingTop10">
          <a href="" target="_blank"><img alt="app store" src="https://www.solodev.com/assets/footer/appstore.png"></a>
        </div>
        <div class="col-sm-6 col-md-2 ct-u-paddingTop10">
          <a href="" target="_blank"><img alt="google play store" src="https://www.solodev.com/assets/footer/androidstore.png"></a>
        </div>
        <div class="col-sm-6 col-md-3">
          <ul class="ct-socials list-unstyled list-inline">
            <li>
              <a href="https://www.facebook.com/mahakaleshwarmahadeva"><img alt="facebook" src="https://www.solodev.com/assets/footer/facebook-white.png"></a>
            </li>
            <li>
              <a href="https://www.instagram.com/mahakaleshwar_mahadev" ><img alt="instagram" src="https://www.solodev.com/assets/footer/instagram-white.png"></a>
            </li>         
          </ul>
        </div>
     
      <div class="inner-right">
        <p>Copyright &copy; 2019 SpiritualMonk.com &nbsp;<a href="">Privacy Policy</a></p>
        <p><a class="ct-u-motive-color" href="" target="_blank">Web Design</a> by CDAC on <a href="" target="_blank">Spring Boot</a></p>
      </div>
  
</footer>

</body>
</html>