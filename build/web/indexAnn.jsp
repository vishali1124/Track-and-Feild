<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Open Sans", sans-serif}

		#navigation,.navbar .navbar-default {
			background-image: url("imgs/kirul.png"); 
			background-repeat-y: no-repeat;
			
		}

</style>

</head>
<body class="w3-theme-l5">

		<!-- Navbar -->
	<div class="w3-top">
	 <nav class="navbar navbar-dark bg-light" style="padding:40px; width:100%;" id="navigation" role="navigation">
			<a href="IndexH.jsp"><img alt="LOGO" src="imgs/jaffnaLogo.jpg" style="height:70px;width:70px"></a>
	  		<a class="navbar-brand"></a>
		</nav>
	</div>
	
	<!-- Page Container -->
	<div class="w3-container w3-content" style="max-width:1400px;margin-top:150px">    
	  <!-- The Grid -->
	  <div class="w3-row">
	    <!-- Left Column -->
	    <div class="w3-col m3">
	      <!-- Profile -->
	      <div class="w3-card w3-round w3-white">
	        <div class="w3-container">
	         <h4 class="w3-center">My Profile</h4>
	         <p class="w3-center"><img src="imgs/avatar.jpg" class="w3-circle" style="height:106px;width:106px" alt="Avatar"></p>
	         <hr>
	         <p><button onclick="document.getElementById('id03').style.display='block'" class="w3-button w3-green w3-large"><i class="fa fa-pencil fa-fw w3-margin-right w3-text-theme"></i> Announcer</button></p>
	         
	         <!-- modal -->
	         
		  <div id="id03" class="w3-modal">
		    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">
		
		      <div class="w3-center"><br>
		        <span onclick="document.getElementById('id03').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
		        <img src="img_avatar4.png" alt="Avatar" style="width:30%" class="w3-circle w3-margin-top">
		      </div>
		
		      <form class="w3-container" action="/action_page.php">
		        <div class="w3-section">
		          <label><b>Username</b></label>
		          <input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="Enter Username" name="usrname" required>
		          <label><b>Password</b></label>
		          <input class="w3-input w3-border" type="password" placeholder="Enter Password" name="psw" required>
		          <button class="w3-button w3-block w3-green w3-section w3-padding" type="submit">Login</button>
		          <input class="w3-check w3-margin-top" type="checkbox" checked="checked"> Remember me
		        </div>
		      </form>
		
		      <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
		        <button onclick="document.getElementById('id03').style.display='none'" type="button" class="w3-button w3-red">Cancel</button>
		        <span class="w3-right w3-padding w3-hide-small">Forgot <a href="#">password?</a></span>
		      </div>s
	         
	        </div>
	      </div>
	      <br>	      
	      
	      <!-- Alert Box -->
	      <div class="w3-container w3-display-container w3-round w3-theme-l4 w3-border w3-theme-border w3-margin-bottom w3-hide-small">
	        <span onclick="this.parentElement.style.display='none'" class="w3-button w3-theme-l3 w3-display-topright">
	          <i class="fa fa-remove"></i>
	        </span>
	        <p><strong>Hey!</strong></p>
	        <p> Welcome to the Student Management page. You're logged in as an Announcer </p>
	      </div>
	    
	    <!-- End Left Column -->
	    </div>

	   
<!-- Middle Column -->
    <div class="w3-col m9">
    
    <!-- cage 1-->
      <div class="w3-row-padding">
        <div class="w3-col m12">
          <div class="w3-card w3-round w3-grey">
            <div class="w3-container w3-padding">
            <h4 class="w3-center">Student List</h4>
              <p class="w3-center"><img src="imgs/avatar.jpg" class="w3-square" style="height:106px;width:106px" alt="Avatar"></p>
              <hr>
              <a href="StudentDetails.jsp"><button type="button" class="btn btn-outline-primary my-2 my-sm-0 "><i class="fa fa-pencil"></i> Student Management</button></a> 
            </div>
          </div>
        </div>
      </div>
      
      <!-- cage 2 -->
      <div class="w3-container w3-card w3-grey w3-round w3-margin"><br>
      <div class="w3-container w3-padding">
      <h4 class="w3-center">Generate Report</h4>
        <p class="w3-center"><img src="imgs/avatar.jpg" class="w3-square" style="height:106px;width:106px" alt="Avatar"></p>
        <hr class="w3-clear">
       
          <div class="w3-row-padding" style="margin:0 -16px">
            <div class="w3-half">              
            </div>
            <div class="w3-half">  
          </div>
        </div>
		<a href="StudentDetails.jsp"><button type="button" class="btn btn-outline-primary my-2 my-sm-0 "><i class="fa fa-pencil"></i> Details</button></a> <br>
      </div>
      </div>
      
    <!-- End Middle Column -->
    </div>
    
    
  <!-- End Grid -->
  </div>
  
  
  
  
	<!-- End Page Container -->
	</div>
	<br>
	

</body>
</html>