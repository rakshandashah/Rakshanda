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

<!-- media style -->
<style>
.media{
 
 
}

.column {
  float: left;
  width: 33.33%;
  padding: 5px;
}

/* Clearfix (clear floats) */
.row::after {
  content: "";
  clear: both;
  display: table;
  
  
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


.im {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width:60%;
  height:20%;
  max-height:300px;
  horizontal-align: middle;
}
</style>
<!--login page style -->
<style>
body, html {
  height: 100%;
  margin: 0;
}

.bg {
  /* The image used */
  background-image: url("https://cdn.dnaindia.com/sites/default/files/styles/full/public/2018/10/21/745820-ujjain-mahakal-templefile.jpg");

  /* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
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



    <li> <spring:url value="/temple/media1" var="mediaURL" />
<a class="nav-link" href="/temple/media1">Media</a></li>

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
  <img class="im" src="https://shrimathuraji.com/wp-content/uploads/2018/05/mahakaal-temple.jpg"  align="middle">
  <div class="text">Mahakal</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 6</div>
  <img class="im" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Lord_Kal_Bhairav%2C_Ujjain.jpg/1280px-Lord_Kal_Bhairav%2C_Ujjain.jpg"  align="middle">
  <div class="text">Kal Bhairav</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 6</div>
  <img class="im" src="https://image3.mouthshut.com/images/Restaurant/Photo/-83381_8236.jpg"  align="middle">
  <div class="text">Harsidhdhi Maa</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">4 / 6</div>
  <img class="im" src="http://media.webdunia.com/_media/hi/img/picture-gallery/thumb/photothumb/2235B_Gabi-Hanuman_2-b.jpg"  align="middle">
  <div class="text">Gebi Hanumanji</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">5 / 6</div>
  <img class="im" src="https://www.newstracklive.com/uploads/jivan-mantra/Religion/Nov/26/big_thumb/gadh-kalik_56570301ba778.jpg"  align="middle">
  <div class="text">Gadhkalika</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">6 / 6</div>
  <img class="im" src="https://i.ytimg.com/vi/FGIVGC9sU8M/hqdefault.jpg"  align="middle">
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

<h2>Media gallary by Spiritual monk</h2>
<p>Here is a small collection of the temples of Spiritual city Ujjain</p>

<div class="row">
  <div class="column">
    <img class="med" src="https://s.barraques.cat/pngfile/s/75-755683_mahakal-3d-wallpaper-mahakal-ujjain-hd-wallpaper-1080p.jpg" alt="Being Spritual" style=height="400" width="400">
  </div>

  <div class="column">
    <img class="med" src="https://live.staticflickr.com/7896/47411248261_4b1655d237_b.jpg" alt="Being Spritual" height="275" width="400">
  </div>

  <div class="column">
    <img class="med" src="https://new-img.patrika.com/upload/2019/04/11/1_1_4411261_835x547-m.jpg" alt="Being Spritual" style=height="400" width="400" >
  </div>
</div>  
  
<div class="row">
  <div class="column">
    <img class="med" src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxITEhUTEhMVFhUXGBgZGBgXFxcXHRseGxgYGBkeGBgbHiggHRolHxcYITEiJSkrLi4uGB8zODMtNygtLisBCgoKDg0OGxAQGzAmICYuLy8tLSsrLS0rLS0tLS0vLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAQUAwQMBIgACEQEDEQH/xAAcAAACAwEBAQEAAAAAAAAAAAAFBgMEBwACAQj/xABHEAACAQIFAQYDBAcGBAUFAQABAhEAAwQFEiExQQYTIlFhcTKBkUKhscEHFCNSYnLRFSSCkuHwM2OishY0Q1NkRHN0s8Il/8QAGgEAAwEBAQEAAAAAAAAAAAAAAgMEBQEABv/EADIRAAICAQMCAwYGAgMBAAAAAAECAAMRBBIhMUETIlEFYXGBsfAUMpGhwdEj4UJS8TP/2gAMAwEAAhEDEQA/AMnZq9WTLAeo/GvOmrWX4VndVUEmZ4nYcmhJGJo4lvtAkYm6IjxfkK+5EoOItgifEKs9pMC6X2JVwrnUhZdOoenSoMhP95tbT4htv+QP4UgMDXkekZjyyg3J9z+NdFenHiPufxr6BTM8QlHE8ivQWpFSjmDwVq1bW5eXW7ibduSF0zAe4RuRIMKOYkmOQ3QtsAgVKq0dGNuE+EW7Y8rdq2o/7Z+tWbSC5tdtJxGu2qo3Tc6QAx26j5ihNkctDntF9UqTu6YGyFlIAGoESCu4I9PL26VMnZ283Fpz7Ix/Klm8CN/D8ZiwbVRtapou9n7o5tuPdWH4iqV3LGHSiFoM94HpAXd14Nuil7CkdKrtb9KYHzEshHaUglT2sEXEryOlT24HIkU2dn8sw7nvAfCgl0P2pMKvzPPoDXXtCKWMSVMoYLsjcxNq3csKJkhi50DbmD1+VFsV+j++WVm7qByA5n7wBTll+OUbt0AhRsPbbgDyopir6tZ7xRp8WmPP2r5q32xqCx8MDHv6xZTHBmF59lN1bzK1tkjodtvP1HrVM6Vw7gRqNxd9p2U/ON61zP8AAG4ndXvAGJVW5KNsR/h3EjyPpWb5hYS1ZNuCWF1gZ1bEAA+nn61taPW+OgJGD3nHHGIvYtP7uh/5j/PYen50LLGKY8ywxGHtSNyzMRpgjpv1jaaAMnNXociCBzNb/Wj5n7q6hX637V9rk9iIIFGcswi6VLXCgctJXmEBMcE7ttx0FCFFHsIuHuBELurREaNW/J4NDY+1cxmwmMOZ5ehy9z3puFNLKGYHT4lU6fCDBDGY8qUsiScTaGxlxtE/dB/A0z4m/YwqG1cS4zPbIjSU2YEA+I7EETx0pd7PkLibTHgODxP3VFQx2txx2/1C24g518TfzN+JqVBXXV8bbfaPp1PSvdsVTniMrWFOzuW9/iLVrozDV/KPE33A1bzK53t+4w+EsQo8lXwoB7KAKK/o6w4bEux+xZut/wBJH51VweF342pNjbVzK9LXvtx6T3lmWNcYKiyT0p6yvszatibsO3l9kf1qbJcGuHshj8biSfIdBXy7mQ86z0vFjYjnZ7CVr6fWGbboqkKqrp3GkAe/FeBmB8z9TQnC4lSwmdww29iKkuXltoXdYUdWLfKhvwCMSQ0AHBEJjMD5n614vizcH7S2jesAH/MN6Es5YaltyDwRrI+s1UxF1lAO4529qSXcd41dKrHA4n3POySlS+H3jcoef8J6/PekDFYaOlaVlWa7gE0I7W5Youa1+G5JjoGHP15qmnV87TG1VMH8Kz5RB72D8INOHZvEWxbDXk0p366o6ju3jjeJoDiLMcCrOWYvc2nlhchQAJ0mRpYAeR29iastBtrKiIvoK8YjeLwYNcsAfsyFYadmVj4WCGeu0exo/gMSxs3O9VdVpdQ2AA2PhPSY/GlXKBcw03CsvpMDzjkAdT1qTOs5xlzVh+7W2AV16Ng2oah4j026eVQt7PKLnGSf2kjUs3lA+cLpmGFvkISHGksdQ7sIsbkdWcmOtJWIRHxDgWwxS7fdpB+MNpBadj4zO3lUKnuh315YVCNKtPiciUDAbgdTPlHWq4zFVsA3bh1OXll8W+rVuOk88cxTNPp3TnEC2nZ0ixnK3VuG4djO5kkneNyR4htFDMba0uw9aL5rfL/FcOnY/wDDI9R09aG4tlLSpJECSRG9a9bAriKVTmGf1r3+tdVDVXV6N2yiBUttiCCDBFRgVJaWWA8yB99dMISbEYh7janYs2wkmTtsKJ5AyW3F1wTB8KjaehkwdulBtJBg9DH02poyzGLaVUcOsad195P2htv93FIswFxO5JIAkGe5YikXbbMUYkEN8SsZbnqpHB24NDbaU/ZzfTEYZ7doOWVVuAsOdBIIADMfhY/Ski0tTUWFlwe0bWD0jp+jZPFiDH/09wfWK84KzuB5n86ufo7t7Yk/8lq+YT4l/mH40OoPlE0tENrWH4fSGO0WLiFHSB91Lltixq92kveM+9RZTZ1RWOh8NMy7TqtVAMZMmtEBYYLuCZ96t4hLDakuXEYfaViCPnWYdvO0lxbhw9lioQAsVmSYmCR0G21J2DxTM87lpJiCZk8kVamhsurDs2O4mDdaDZ1n6BOAUgaWAEbRMR6RS3mGLBvGwql+7HjcEeGeBB5pMyDtLiMK+iRoG5tM23WdIUEqeI++njJLbYi42M/ZqrJo0oxaSCDLeEQelSWUvptxs5HY5PX4RlblWzniUU8LSKO5gveYfz0lT+IoPmVuGozlqF7LqN5A/EUsZLKwmjqSNq2ehEVr+FZzpUSTRrAYBLC7KA8EPcE8dRNXVshBpTdjy3++lAe0OONod3bO/Ln8v619TQi1Dc8GywWkDH36yvjs9BuArsq/CJ9RJ+cVWx2chmB6wB8gR/T76F3szGwNtSBz5n518u58qle7tLtMmB1qsWoe8qFulQZGJZTE3HEJAI8WpyQogQN9996E5kxFm2WJaWuSZBUnUZ0wJ5PWquOzN7i6WjTqkeYHlPz+4VcxuXlcFacxuWbgcEjSJ5J4PkJjpU11q7lA9Zle0NQluAvQQbjM2uXLVuyxBW3IXbePKaGtXo15YVxVCjiZ/Wfe+rqgrqGdxJwKs4ZCrqSOmofPipcDgw0lpAUSTH1+fEeZNTWbhe55avCOsDbSB6bChZ88CdxzJs0wOjFX7fB7xtE7ctK7+qn6xV+1mV8MFvBRA/8AUtb7DaeCfevHbHFC7jLrDYAhP8gCH7wa50a9YFySTZGkjc+GentIn39KlbzKu/v+0YPWEc0z+6ISze8JQaiqhCGI8QVhvHz86B2uaiFSWjvRJUtY8ojUPM0LsEv7PEn/AJX51DbMMPcfjVz9HyTZxX/2x+dDhyPcUq4eSaGl5ewfD6Sv2kujvD70W7Or4RQPtD/xD70w9nk8K1j6jikSm44px7pmX6QFWxi7tvU2knUdGlSSw1Q56x+dLtrHuQVRdKnmCZP8zndvaYo/2stC4LuIYh3XF3LIbzXSbiz6ruPYjypZw7Cd9zX1FCYqUH0E+QckuTLuGd/sAA8bSPyp4/Rzm15MQLTT3dyZHImJn0O0UgXcZp2FXcpzp0uKw2IMg8f7H9KVq6PFrK4lNFwB2kzcs0wRc7f6CrWAuqtt0t7wu586E2s4GIwYuAweGj94c/1+dT9lzs5P7p+dZWhTw68dx1PpNBmZq8HoJZvMLaE/aPFJGbDc005jdmlLNmq1rd7DHSXVrtrJPeAMRVRhvVq7UEVSky7DzCXZ7Krd1ma8SLVsDVpIBJM6RPlsSSN9vWo+0+LQBVt7IsgLBIG87E/1pt7GYRP1f9pGl7rEg6uEt8nTuRLcD1of2jwtgqT/AHcDnVF876tOkKH1k9fhAjrUqPuu+EkJJOIjOoI1KIHBHkY6elREUUxNlVFxRwCpXng++42PB3qgVq/ORmdTPIkGiur38q6hxHYhzB4VmsOF3MqdIO5CltUDrEoa+5Rg/HquIQBsuqQC+pSBHURP0qjbuEcec+x8weQfUGpLmLd2XvCWEgHVLkiRI8RMjbiaSVPM9gjiGc4yoOxewwYliXBhYLQw8MmBuZ3O9WAowuGdSwZ7issD+KF8PUqoBMkCSY6UuY+7+0YqWiZEjSdx1A4NR8870rwyQMniGOOJIpqS2ahVa9qKccTwODNO/Ru47jFk9Lf5GhZNEv0Z4d2w+K0gnUuldtiYbg1GuRYiPEoHuRUWrsVVGTLNBcgezcfT6QFnx/at70d/XUsYR7rFhCQCoBMt4RAJG8kUu9owReb3Nfe1N4jLgAJLui/iR+AqLww5rX1Mo1Tg1490R7mIGIuWMLbXurSsQFLaiWeNbu0CWMDoIAgVouT/AKOcLolzLdRA/EtP3VnOSKlgXLl1A14Potq06VIgszRyNxEc09YDtzi7GlWFlkPS22gx1hASPqRX1I4E+UJMM9ieyeX4mx+sd2Qdbr4iPssVkb9RFI/6UMmt4bFKLOyMNvLmDTzjO1D4LDIMNbRO8JdZY6RrYlmMc78DbjoIoPmeNGPC4fE3bV17gPduoQNbeDpIIYypMAg9DQzmCDKvYe83c30LAqNJHz2n8abcjxgOoDgKfwrPskT9VZLYLE3bZD6o8LAiQscgHaT5GmPsriRLhjpENJ8gAZNYmrRlDAd+Zv6Yq6c+kLYu9NLOaXaY0xeXOP8AzyKfUVBd7N2r2+HzDCOfJn0n8/wrlB7nt6ym7V1hNo+hiTdNQimDOuy+Kw/iuW5X99DqX6jj5gUCZYq9GBGRMsuD0j1lWHH6rYNtyWAJIU8FmnkGQQPwoXnGYYzSVGIvRuIDMDHvM0sJeKnUpIPmCQfqKL2MQ1y0S2Ouo6z4GuMAd/M9I6Deak8J623A8GCVUwRg8vIDM4YcjU0jnrvzvVQirWLul2kszerEn8arxWgpOOZwAAkiQ11SV1e4hZk5FeI3HXfjz61Mwq7hkCoXIbgQPWJ1SOmliNM77mDGy+2Y4cGUMY+pp0hSQJAmPSJ34j6GvgQjnb32onhArFmZRyPDBEQTALTJAidvMb7EVauIjKdSgH4pEjcdDvvPnyNqEnHE6SMyvkuT3cS4t2ULN18lG27HoKbLGAwGEbu2Rsdixzbt720P8XA/zSfSivYiwP7OurZbTeuq5DcGN0X2iD7T60VybL7FtQLShSOQR4p/iJ3JrOGq32FPTtEEZJz2nrKMdizaPerasAzFu1yij1HhnbfpB86RM5FnvCf7SxBG8/t5A5gBber76fO0OHuMg0IHEEPbPhDA78+hA22pDxluwuz4PEJ6IGI+oVvxp7WZwoXpCoqGSwlTtA37dhM781F2nxgXAQRJ124+Rk/dt86nxePtM5c4bESTJJBH/wDNLnbbObdy0lq3bZIbUdRJ6QOnqaCmpmsTjpKNVYRXkSPJ8vt4klX4LyI6SBH4U/4b9HeFtW+9aCyjUDCiCBPQVm/ZPHra0mDOsrM7cAjbpsTWoZrnGvD6CrlXEFkGortzHlW8BkZmMRuxJlySziLOGS8upDb2noVYx+VW27H4PDrrt2xrXdTA29QAOfWqGWYkraRNV28yAi2CBbAncatxq9+kVYzjNWWwzOIIBJFdA3dJ66pqjhpnGeYofrgAPwC44j+O6x/p9TTB2ew/jYxIKPsDzKms9xOZm5iRdPVLc7RHhAP3zT52azOFVEtrq3IYnp9DxWZrEcjKiaXs8ggrmGMLjcOSobL7ewjbumJ9wyCfqKaML2UwN9YfCWlbY+FTbbxAEbgyDvxNDMuTG3iFQ2rfqEBI9pinTI8h/V1Oq691iZLtA+gA2G5pVXjdWAxF6p604U8/M/1AlnILmGB7i7ddIg2bx722R1AJll289qU847JJePeYXSk/FackFWHIHO3Xn7orV8TjUTZmE+Q3NI/aDPsJZfxtNw8qg1FREDURtO1KtcKc1nnuBz+0TTl+o+cQcV2Ixyie6BHoy/1oHjcvu2Y7226TwWBAPseD8q0G32jwB+G7ik/wg/iJovdv2b+GYLcXEWQP2lplK3E3+NesjnpTab2bhx/Ea+5RMgmvi1PjMP3dxrZ+yxHvB2PzFQiq8whPumvlTRXVzM7OYV6W7tp2A4gSNwBJJ6AgfKPXb0wqC8mx9qEHtGZxLOExSjUZ+p9dgB7kk1NcvkBgxLEnjjTI4P3GhxXxN6Mw/wCo1701xsTrDnMcOzef2xaFi6zW2DMbd0HYat4J6bzuZHnRXE9orloxfsreTaHU6SR94J9iKzxRV3L8abZhi5tnkKY+cGVPsQaz7dEjNu+/1hqR0Img2e2uAMScXa8/DqH4ttVy7n+XuJGOAPk9qPxUUm91avAGzcs6j9i4vdP/ANLaT8qhx+VXFG9pZ9GP5rQptTgE/M9J1dKG5Un9jGLEZrhSf/OofZAKyntPdFy85QyC0LPMecfKiGLUifDHrJIHzil7FX5IPmwj2G1aOlpYHcWJ+MRqyETbIsLMCJ+M7ztOny89ua0Xsp2kRF7u8DHB9qrdkcusXLLalQhN/G5CnV3ayoAJ1CWM7cnnir+Eya0dJafImB9SP9K0kBmWAAsacLnWXICyJ4xxMk7+W9CszD31ZnBVSDpXr13PlRzKctwifAgBHXSJ+Rjb6VF2ltTZbSdJiNuQJE/dNO27REGzeciYlissdB3mnwAaCRGx3CkgcTAgmjWQ42GB3HiDiPSJ+vi+tNq2bL2Lx/uigqUCaCS3iaF7yNro7vWGEnxk+dC8l7I27kgPcDJ4ifCqIIBlnhjvOwA6GYrO1FiquGM1NGCh3geWPOB7V4VRBxLLtuNAkef2TvVhe3OEUEIcXfPlARfn8P4Gga9hDqkXhp82TmRPhIIkfSoMfkvdK7C+rhFLMtlZYAfwn8ayEYOSQxb9cfSWGuh28xxIu0HaXEXgRbUWLcfZMtHWX2/Cley6qZA1HzJO54qPFZobngtqVU8lmLsR78L6wPnX21b6VXVQEXGJ1rFXhOkvWMYpYB0UAmJHT39KZOz+EK4kAfbS6nv4CwH1UUoi3TB2Ya6+LsDvHHjH2mHnI28+PYmhenJ8pnW1A8Jgw57QNnVs9808wkzzOhZmqBSmLtjhwuNxA/5jH67/AJ0HW1VGccSVPMMyDRX2r3c+ldQ74eJTao3Gx9j+FWImvTWCV99q9nEYFzK7p4mP8Tf9xr7ppnyLs6twTcfkkwBxJnf600p2Hwp2JaeOWO/Tadz6D6im+C57RD31pwTMytrXy5dVSFaVPqCPrPFN+PyFsLcCto0MYV1PPowklW2OxPSvWJ7P27iFSd+hM7H6/wC96dXpCRkmT2a1R0i0mAXkuvsJY/KBFG8txR0i2Q2leC5kMOqkD4fRhuCRXjsmqgPaeNdoxEySJ589uJjy61dzfFKrCdqamjQ+YjMW+tc+UQbm2U9+wBkKTvEbxxMdfX0pRxeVlLd93SIKop/iLSQPQAb/AErRsrxCtvVLtplDXrVq3a3LNGj3KyR/KJPsTT2qAGRJvGYnBgDs3jnFlcMvdzetXNOq2HIKqTCkzpb4jtvJmrmQYtQvdXyZgMryTyJAbzH8WwM6RJBr52sy79Xu6rc+ArdQbmRsjhROwkLM7DX1JFWMPYsvCT072w4lTocyVIP7ryI8oG1TqSlgHrOm0sMQvZzDDjQWuKCY2DauTAhRvQrtPmj3ivdA20DhW7wkcqTNwjYGPDo5BO4mveW4Ag6WYaTAlV0swEzMbAQ0bAcUGzm8oXwjTYTwW1kyx+EtJ5gTJM7nnamXudvPE5UPNxIlzI21S1OpbjrcCbaSYNvVPkD+FO/YK0rSouBhu7gdWKwQfbV99ZsdRxVlVjUAhUHTA1kPAHpPArVuyWU27NzvAYFxDqPkRzpHufwrE16hkFY/Mek1arWesk/f+4Xz20S4QmFAGwPJPn/vrVPCdllcyToaZUoCzKfMkeEL5hjB8qE5lncYg6jyd/fj8qPWsyOgMgBMbEgED1C8T7zWzRpFrpFY7CZDWNu3TPs/yR7N0hlCkljAiOekbQQQwHkwqhZw+81oXbQtes4e6dySynYDcAb0otho2rLYlCVM062LqJSSxRzsjZ/vlqOjT9BVNMNTB2Iws4pd42NAjZaFcCK2gLtnb/vl/wDn/IUIt2qae2WG/vd0+ZBoMLNddsEwqP8A5iQaK6rHd+ldQbhHYMHixUmIVghKGGG4+VFO4HlVXHYMsvhIBBncagdiII+c+4FCtmSI3G0ZgzIc3fXIMehrR8Dm76RPlHymSPn1rI0tkzdQQRGsAbLO4MdFII36Hbyps7M3b186fhRd2foB7nYmtkahEQl+0x7qSxyBHTOcwW0oJtagQGIA1RuN9PpzWfZ12tCsRaXvDJGs6kBkyJSJBAkbbGivaDHrbkeNlVRDayCp31SF2AjT/pzWf6P7wihwylhuGkbkEkEgeKJPHIrP0QKA2bic55OenzjbUG0LiF8Dnem815k0s6w8EwNhE7QOI3Nfc5zcvwK0LKrVkI1hNATghIIaerMZLseTPWaTf0g5Z+rC2baIAxIDKoAI6SAI1f0rSputKgkcH75kuEB98G5Pm5WD5GDT7l+KS6qluhBH+lY5ZvXA+rmdiI2NMeAzh0+E/I1SjZGDAdd3Ij92xUOtq4pKlH0ll2KhwVmegDaTS22Cuae8FslVJdmSDoeYvLszaQf+IAT9r3qnmWc3LmGdSRJA452IPrXuxlR0pctO9t9yHDGd1dhvMn4d586n1C56QqaS3eB8Uyv3iulx8VrPdssldO+kCNtJHMeZormmENtwMQrABJAIAVLaASAvQE6V5PxU0dk8F33dXNKrEOwUQoPBAHQSCRS125vMzXdR5Nu0OkK7s5+4JUFtv+YVA9sn5wwuELfKL+U4jViFusYZ3do36JqX5TA+Vanqe1gMO96RdUamHnuBv7sUPyrMOz+AU4i2wMgOykbfCo+L/fpT/wBusTdNq1pUw1t1neJUBtJjz0gjz2pV+DdWPfn9JQuVrMWhfF28Ax6z/StDwFkBIHFZNlDkkOeZ3rVsgvarcGt9ORM+6E8fl+rDWiNwjsT6aht+A+tA3wAmj+WYghjZeNDiN+h6H61SvSORuNvoa+a9pVtW+Zp+znDAiDGwoFMHYfBjvWaOlDVWdopr7MWQvA5Bn6/6VLpGLPkynX4SraIr9s7AN4QN4g/5mj7jS4+HpyzqxNxiZ5NCbuFmh1FpDkRuiUeEDAfcmuox+p11I8aWbRKwwhiqeNsMFOhZboCYFMi2arZtYYWmNtSzcAD12/Ohrt8wxOgqTgxHwmUEqbqM9t1AUMkzsq6gyj4lJ6da+5Hdxra1tm2rXVlnayFCwYhAoiTPJ8uKZOzNmEurxpusseUBR+VeOz7Td+JiNDhAQd4uFXPEQIG/rV9l/wCZSM4kDoCQYEzHs8lqw73btx7h2kEqCx4kDmPEdz1oj2e7IYK7YS53epuGOphBA3AAbjf59aKdq8vL2dQmFMkATJgx8qk7GWTbQ7+FoMQRB3kb+kUAvfwckx9lVRr3Dr6RZ7Nq1m69liSVJX6cU257lv61hHtgS4GpNt5XcAe+4+dAO2FlreM71AYdAxgcaYVj+fzorluZMo1r4tDrPkVaI+YP419JpbQ9IM+fvQizMzM20AUkbg70w4fL7TQYFDO3VsJjbyqAoJD6R5OA0j0manyTFGADVFZGcQXORkRhu5VZ7m54RsjHgdFJ67UIDjurZ1QrRpPMahpnYRKiT5Sy0wYHEdOJpXs31VVS9q0t3ttidQjUywQTJEaBv0kGg1QwBid07lQ00zKrduxZfTACrAHSFH3/AOtZPmOdsyXC2HtG2XXUzT3hYzDKxMiOgEDpxRPFYbEpYITEpdUj4NLa4mANEGfeaDYdVNy1YvNzc7y6VgRA8AHQEQNvM1iqim1rDznA/ScLNtA+cqZdf/bW7WghyWE+EeFwV9+N/M1pWeLpy+yGYsoK6iBzwQfy+ZrM3tXMNcCyGdLxhpPiHiH3gz/irSu0dthl6+EwCs/4twfTc/dXLxm6n0z/ABLVP+NvlM/wyw9wDifv3ppyntClm3Lkz0UCSY8h+Zrx2MsWnulLvxXYEeasLgb6FVPpSvdtd1irq3RPd3GSOBAJ0kjyPNalOqBc1jqJNbVxmNj5xjsRpayi2kJPiME7cHfkbGIHUUzZWMazMcUFdW3S6ukAkRqUqIIIkcgTB5pdyrOVeFnmIrSckCumg8gyvvwfupftGgPV1yZzT2mp8yrbwoRdR5PFH+z9uFn/AH1ND71gkwelHMuACwP98Vg6VhuIEr1b7lzAWdLL8dT+NDjZphzGzJqg9vyqa8ZsMo09uKwBBn6v6V1X+6rqTtj/ABjI7mC6jiuXD0VsJ0PFermF8qQoJwRJjqD0MQ+ylvU+MH7uKufjH5V2Q4M28ZcUyV/a6ZHTWjc9d2PSrPYe2e8x3/5V3/8AZcH5V5yvETmd5Npm79kDpYO7detaDqwZ/hO+JkY9IfvYPYjoQQfmIqnkuGPcIDMr4TPO21MKrtXDD9RUm7y7YHjcxV7R4DXaJmGWYMT8Q0kRI5n8KWs1wV7C4Y3HdQoQW3iZJklTv1kxA8q0DNrQKqP3nQfQz+VJf6YFK4RN9u8MjzhGirtDqbkZaweMzjhHGTMw7TZgb+It35JDoE3ifAI3jrwfnRTIVkUtW5a0nMpcU/JwR+IoxkWNCkqetfU0nnmZ7jHSP2CtAxSdm+ECLeUMoCX7+xKAbpbYbTz8iaa8qxQMUD7UW2PfMoJIvLA8R2uYcrttIM9FgHzpt5G2JTO6XO0vZ3D2LAFrv+9dGYAXGKgCOR0mePelNbRDpaACkhHb0K6SZPqQfrTVnmZ3Lpw76yqrZ03B11OkDbfjYiTyTSlh8aDBG26886ZKxPnvNYlW8glvfNMooTifUY3MWH4h9/hk6YBmDPTqK0DN7z/2cNTFpuiCd/DMrv126+lZ5lukYtjpk623B/oNxvWiWsLry+7bBJCTcT1UEsI9jqWg1LBGrb0InK08pH32gbsj/wCnfNstpvW11A/DBck+o0uf8tad2j7MWcXbZHUB48NyPEp6GeSPSkHshljvhxbt2muIzBg06SHDkhlB32gA9I67xWxIJA1CCROkxI9NvKprd5s3r2M7ewB2z87NgrmFv90wh1MR+EehG9aB2bzYkiTV39K+R6rS4tFGuyfHA3KEx/0nf2mk3K70EOvB5rf0dour5kNg4yJs2GvrdEbBvPzohhhtSJk+PO2+9OeX4zWJ6/aH51n6nR+G5YQVfcuJ5xfWqeiiWJTY1XS3WNYp3yyt8LK3dV1XO7r7XdkLxJ6Nryr4ooTnmZvbFq3aIF28+hCRIXYszR1hQdqlw+EZIm9cY9S2nxe6gAD/AAgUpKzt3CKwYC7FWov48f8AyGP+Z7p/OqeX2v8A/Xu/zOfabFox9xP9Op/JsH3OJxEbi7ouD0JLhh8j+NC3XTm/86T8+708xvsnE+sdRVncSexEYp5PwjaLVfYivYr3FRvUYot6wVmsTaP/ADAPnDRWe/pvxUWLVoHxFmb5AR+daF2gtjTbMcXrR6/vRvHTesk7fNdzHEsbC6bFoaDffw29iS7SeRudh5TVWjr22BjwBGociIORqWLj0U9Ohj8WqxbUK0Opnzpjy3KrVu21pgoYL47x/egakI/dWJBXkOD5SPxOAe2QdSEHYQ4afSDuD6VtpqAWIllOjR0G44MNdn8wsKfE+n3Df0qjnWbIb99lIKm5YdRETpBBmQPLoSfSvCXwNrihD6hpqrjsWquShAlVOqW5VjtuD09K8zBzKLvZdVS7g8q4e9uqaSSCVJ6BQSy9OdyPlVRsGzXIdYgzAjYSKPXmsXfFr6cglZ9zA++q+IvW7aFU0y0D4p/hk89OtAD6DmPPs9FXcz+Ufv7sSjluHY31uBgNQZpk8SY2JnrHltT9gMwa1Ajw7npDBtyI8tyPkKUMlv2xfI5Aw7qIgSxBjc7Df0q5i8wbRbMQQCDPoZ3J9GpV9Rs69IOnXSJw/wB8f2DNa7LZraW3btLpVUAXaZYqPtH90TO/mIqt2s7SsGs91GzqTtMjqsxsZ2IrJstvXjeZrb6V0S8zHkp3+EkmAIkgTvV5zjEuK9y1cIUq2oIG67HUAePXyqk2Vqm09cTAegtYTX0z1m84i0royOAVYEMD1BEEffWIZhgGwOJbDuSU5tsftKd59wTB9R7VoeRdt0ueDFDumnSHbZWP5fh+FEu13Zy3jbHdk6XXxWrg30n181PUVHo7vBfnpOvWV4YRDyzE6TH0p+7P3BIaZMbiQIHmxO3y5rKsNrs3Gw99SlxPP7iD1B86cckzEQA28cDoT5nzrfcC1OJEwKmaK7gjoR0PnUMUPyfHtclXMsNxxx1G1Eq+c1FWywyqs8TzXV6rqTiHmJfbfFG1fwV3Q7rbuXCwRdREpH51S/8AEdwvrl4/dKj/ALR1+dUv0h427h7ytaa6DcM+Bm4UKCNIPp5daE47tNiXt8Yj303FH14oqyyLwucy6jgcgGPOTZj3t9HAZVNtxDgqZ7wGI46HrVTtBc0ZnhW2Gygk+puL+Y+6kv8AR/jg2PttedgYfQXYmWI0xJ4ME05Z9ft3cSroSWsjTP8AEG1D3j6UVOmbOyT3kI0Z8TnlhW0G4uv90eI/MDj51E+ZllOhlkGOQST6SaVWdEljAky3G56k+Zodf7UWUPhO46wD+NUWeydyY3ESZLOeBPOfZ3jA7LeE2w4dPDAZQJEncSGAgg7yfSl7HZ6jC21wPdY3J1tstv4gquo+JRq3MCQfSi+M7aC6O7YIVMALGkDyIjiCAaD5imBvoqG9dw10NBUGbZO+59PWJ3qYaZqj5x8x95miLV2cDBg39Y70t+01M6OAAI+EHwkDZtMRAgw31H4IYhhpNjvlgeIEAwsxFyY8P8QkRR7Edm72HxVu4dLW2k65mW0HdfOQBH+lUxgbWGw7tJuy5X4Qe6bUw3UwdMjjamixMALzn792J45PJ4kBxeHvFUbE3tQ2UukBd5Ksytvv1iuz1rd1RdW7ra34fgKEifM8geYnmvuPGHawhNm1bxBJEWyVVxHPkDvMN91Br2EY4gWgbmkqSoSAeIjSZE7UytVJznGM9cfeJ53cDBGc/Yli462URrN5tTCXUwoQfxbwSQTvHSvBRGKDDjvjsDrQnfgEBeh60zZL+j/E3u7ZgLSnZwdLPsZkRtJ9/KjuQ2LGDxb2bazoEajuS0eIzRU2pY+xDk9/9xNjFevEQBlGMRyBahiwcAAnccaQBvE0YHZ3E3nW01sJ4ARrUmN/G0L4QxJ2BJrVcZ3N5YdQR949qE3MtEFP1m8EO2nvDEeXnTra78YQTtfgt1b9YvZfg8Lh77eNWGncLruXNRgHURsu3Q+YiIqw2cX1i3hQtq2v71sT/hAJke5opbyrCWliI9ZigV5rCMdFw6TyCNW/zqU6B87m5Pvl9b6duM/1L2VYHF37hOIuXHWANgqqdyQIjp5004XCNZZUsNcgcoWCp96n7qV7GMvkf3dbpQeZ0j5cfSpLOePa2e26ecj86Zp/ZtrOWtbjsBItbqhnZWBiX+22W4rEIpazaJTh0LF1Bjb1Hp6Up5di7lm53V0EMPofUGnHCdolfhx9aG9pMGt9AwgONw39fStauvwunSZhsDDBEYsnxsaXHTn2psVweDI6flWDZTn2JvlrFnUDuupCs+jajsoBHrqB2plyy5mGGu27j3gbQuWbT2g73PBcuEapYfZLRIjYDbyj1dfieYQquOJqsV1Raj611Ze2UbTMesYv9fxbO6hgwOhdbKyIOBtEjrzvqplxPZ7DG2YS6YgEC9wfvYT7dfoj5Hjri3O8TRJMEyEnfVJmBHHyim7G5m+iURAWPLlfSJgbmBHrI9KXcMOMfWWBciKuMIttARVOqFEl2BHJLN5bRHU0S7PZmqllc70vZrfJBukgstwswE/CRDETyAY4qphM2TvATWtpQAoIk+qG7iagbFl93Gr5mobnZ/CPyqgelAsPmiMPiiq2NzV0PhaRWltBGZnqGzgRrTszgQNrYnzO9U7HZ7CugLohbcMQOoO9BcNn1w1bw2LffSuxMnaPeKW1YBBhjdjBML40W7WH7vm2u6apOg9NPpyI9aC5xkFy3eYd2ui8Atxhz4fhfnfnf2+dXjbdz4wNPMc70w2l/XLFxLmxQ6Qy7EjSGUz0PI9YNYvtOnwV8ZBx3/uW6TUbSEbmY9ay6+MRcUaLnd/ZMcqJiY5I4nnjmiH61afE2cRbPcl7TWzI2V9UGdjpgMG28qIZrbGHvXLis4ugKrGBBPRiOo3G/pVK9hRcuW7lwJaS4rO2qYV1+IqBEyBP+I0pbA+GPp98S1lwMfOaTgsz1YA3bJ30gEjeP3j+B+dI960LbawSPU7mmDsXfRsLcs8d34Z4noDPBEAD5VmueZwZKT8JI+lO9j7KxYmOjfWZ2pU78xn/APFITZp96H4vtax2XbypOtM9wwm58z/SnDJuzigBnOpvXpW2rM3Ak+FXmSYKziMQZuMQvlNNOXZfZtgeEE+Z3of+ruo8J2qtfa+OINNCgdYLEt0McEx6gRwK+Pi7bCGgjyNZ/fzK+vKN+NU3zy9+630r25YPhGPqrZQygUT6flXxsRJ0W1ljwNh7yTwKzq7n9/zimrKsetqwrv8AG48RPruqgdNonqT7ULODwJzwmhns9klqwX0GS7amPQb7KvWB6/hRzKnBxYVgCpVjB/hKsp+RAoTh75VNTbEiY8h6167L4tWv3LpYeFdI39QWP/b9aRqGVKiYVSMz4mhahXUD/tu3+8PrXV8546zS/DvMUzu13b94o8JM6eY26D5HepLOKD2yot4nTpOy27reKQedURsNz5cUXzHDgMdSkoQJ8IuRHHgbj3X51D/ZtuD3a321bmXuIPkpdVj5mqRau0ZjrEO8iK1y65cGGQx9ogE+cxPPG9QtZAIYbN5dD7eR9KbbFmzaUkWtB6soe859QQAi/WguatYuR+z0rB3CIpk8Fii7+fWn16jJwBEuAq8yA5wunTBDVNluYIT4zPvQhcmvMpuJbuaVMH02nqeNuajbLbw6CPcfiNvvq1bgO8nath1E0HCZtYUdPuqy3aSyvWsw75hsBqjmNR/AVcw2WYu6huLbhAYJMCOvBM0/8RxFCnecAZjzd7YWx1mvvZ7t4tp7oIA7xRueJQMRPlMkT61n9zAXApedQBCnuxMEzAP0pp7Edke8bv8AEJFld4Y/EeI0iZ3jy96m1OoQoS/SGKSO0ae12P8ADh7wTV3x06Y3+I7n00x9aUM8xJZXt3I0rdItnrAK6o8+TTlnZIvABbhVV8C7LbUx4YUblj6xS32dylmvMcUsogZiTvBYgCI5MzHsKw9OyKuR26fxiaDMQMRkwFh7Isrtoe3oPyJBkDpuP9isqzzDlMRdRpYhuRvPzPNai2bWnvgIwi21x9R40wOn8w+81mmYs1y5dvATDFmj9wnYir9GjJlm6mRWeYyLAY1F2UwfIiKLWs8YfbX60NGXhysqYaADEESJEjYwfOi69mf2RuItxgsk/AyBRzJ1ap6wAavF+DgQk0zsCQOJ6XtDc6EH2YV7ftHe6rVB8nQoWVVOw8WqAJmCD57jYjpXlOzlxlV7aAr4VeSRDbyZ8tp+dc/GDuYsUkttAlx+0bnlfwqniM8nkAfSvt/JbAHUMTETI4P4mOtRJkDagp0qzCVR9i08aSYDfUEV46sd463SWVY3cZ++ZFhLj3n0ppJ822Ue9OmFuozK11luXF+C3bEID5knn36eVLoyFQwt3FuWmPmZWenxEQPWR6TVo5WgLLce7aiAJ702z5w4U/QiPWljVpOCs4hnH5wd5cEkGTICjzCkxI82PymhmQtde8zq+hLamTBlgWJJgwCPWdoG1V1tYe3Be0t5RwzM+/8AlP4pTBh3V7SuiM9qfDbcyAYiAGaIHkAo34pV2o38ATwQLCGof+5a+g/rXUJ7z/4C/wDT/WuqXw5R4hhjNWa2Q2hjAPiU7iedp3NRribN1AoxbK55FxUcz6zEfM084/KgelKeZ9l0cEsFEdWgc7dazabMnwyOZaypd5g2DKTZXddYGJa4o6F9APsqruPnQU9nrqvoKraAndF7wtP0Vf8AEa84vI7qH9jpPqHK/QirWEzgWF04ixrnadZYn3k/dVYBH5TEW0kfmErYq0qAWjdYKfs7XGb30iOnHG1e8NYwshblq6TEi5dnVI40WlIA+dFr2YYXuvCyWXOwtysn+YjdR7npQq3dG41Bh5ItxvcyNNeVn/5Z/XH0hBlOAeYSwS3rOvuzaVHbVccg62UTCmyJbqeN/WquIy1VJAFxVuBnm6+m2IXoks+42AO9esNfwQWXe+rDgi3sfReN+m29WHvZYCC4LnYjXbZiT0kEzXXttzk5I9B/7DGM56fKQ5Rh8Io0XcUNpIRSltWncnVPeE88705fr2F0EJiVVAFA0LMTwElTqbbfmOtLmM7T4dF02gN9h+xgLHJg7H0mKpYS7gp13e9uuwkvdssV26eHZaTcGvGbEI92R/USUOev7RpxlzBD9rddYtglJuKWZo3ItqZ1dJIpOzrNDewV04aw1qzqVe8Zt3g6gF67nkn6zsDoODvQtu5ZVCfEiFbZaOjkgGJ6CKsZ69gW7a3LtsIrB9CwSyrMBRwRqiQN9jQVoK9pVDnPck4+UEV+rRWy3s9ctX1DpqtM6oW2/dIMiZA1EQTzVPJ8MqYd5wxuPaN1WeYIAkjbiPMHmjhxmF7wOP1kEsp1GzcO4MgAzxsPPivOJzq1bvFrOu4Ln/EQEJ4ojVEcwN+QfSrBa/JA7d49diHjn5GAr5sOtnEWrj22KhW8AuIGUQVZeQCIO23sd6KWMELifs27q7uCB8DHqYmQCI33HnXvFDDM+tRjLYaC6WraEMfWJ34q7hc3C2ylvL2k8swKKYOxIkniK4WY4Ofv+YoPYrkrnmLv9nBzpv4e2zgeBrl25aRx/Bc2XUP3SBxV3B5deWwVXvkUkfswFuIf8Y1Ee/FG7YzIv4yVQgHQ3jX0+MTHqCKkuYfHgFQ1sgzINuJn+UihtsGcbh88zyo+dwX94D/se40E4U3AButwKf8AKyMG+RWrTYR7qC0FNtSpi1c/bLzvp1qLqfQgUSwGR4plIuXnHOyO8b++9XP/AA4xYG5eutAiC7Hp70prFHJPzA4+uITK7HJ6+8xdweXkoFupetupIB1G4p3Ajci4o9OCPODU+Lt2wxssly+PtKp7qNuZUqv1G/nTAvZrDDbuQffUfzqxhcgtJPd2lWeSB+JofxSZ8oJgij/sQBEfGYPCC6rC1fQbBrbI11D6qw3HXmf69jsUrSlizCD4WbUu/qrL/StItZOOoB++vN3LLKkatCkkAA9SeIol1LE42HM54NWeDMs/s7E/+6Po/wDWurX/AOyV8hXUz8Rd/wBIW2mX7rmqOa5MmIXS7OB5KxWfpXV1QKxByOsTuKYKyO3lFpAEVYCiB8tqp43s1hrm721J8yoNdXUOMHIjhY/rAFrKMP3xtC2BE7iOkdIorYyK0GA3rq6mOTvUS57GUYU44njAW7V12XuwoUe/2iv5Vax2V21UkASPMV1dRaxQup2jpx/EWXbxAM+ko5RhEvJLKAd+PSr4ya0K6uqS4kMYV1jq5AM+/wBh2SIKgj1ANUMfluHw6m4LFtioYgFViYmeK6upuhJa1QfWKRi7YaecLj1ulAbQXUs7HYQSI434mfWpMJhEu2ku6dOoTHMfOurqPUjFrY9YoWut7IDwDBWUZqb2IvYdkRUtk6ImRvBPzo0yd3JEHb7QkfSurqZqT/nX4CXnhtvad2ds3f2guXjclpEjjrsJO29WcTZd20i4U0xOkDxfXiurqTe7GzJkpOLDPGZ4HvbZTWyA9VMH0396vZThe6sAFmfSNix3jyrq6vVMTXtPSLtY7ce+X8CwuLqiPvrxmmWLdTQWZQeqmD9a6upn5TkSLeytxJ8ky4WbS2w7OF2Bcyfmar5v2fsX2U3FBKkMCQDBHlXV1U5JAY9YAsbeTmWP7OH77fU11dXVzJheI3rP/9k=" style=height="300" width="300" >
  </div>
  
  <div class="column">
    <img class="med" src="data:image/jpeg;base64,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" alt="Snow" style=height="600" width="300" >
  </div>
  
  <div class="column">
    <img class="med" src="data:image/jpeg;base64,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" alt="Snow" style=height="400" width="300" >
  </div>
</div>

<div class="row">
  <div class="column">
    <img class="med" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYyw3QJyNeKx3r2BU5ws9lY42ibWlVASIQhB7izibFTPJ45rQV" alt="Snow" height="400" width="400" >
  </div>
  
  
  <div class="column">
    <img class="med" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLGJfCimpGLmS6zcEXI-_1ANJtP6_c7iZatKpoEacmVkLyc4whMw" alt="Snow" height="400" width="400" >
  </div>
  
  
  <div class="column">
    <img class="med" src="data:image/jpeg;base64,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" alt="Snow" height="400" width="400" >
  </div>
</div>
  
<div class="row">  
  <div class="column">
    <img class="med" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1pg8OCzWCtoPRrp2U7K-wH4kD-9XI6IiZz0oIArwNQznLN_8" alt="Snow" height="400" width="400" >
  </div>
  
  
  <div class="column">
    <img class="med" src="https://i.pinimg.com/originals/2a/6c/26/2a6c262f08800575151de66d4407e925.jpg" alt="Snow" height="400" width="400" >
  </div>
  
  <div class="column">
    <img class="med" src="https://pbs.twimg.com/media/D4z_DzSXoAAm6bb.jpg" alt="Snow" height="400" width="400" >
  </div>
  
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