<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="controllers.EventController" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Event</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Delete Page</title>
<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Open Sans", sans-serif}



		#navigation,.navbar .navbar-default {
			
			background-image: url("imgs/kirul.png");
			background-repeat-y: no-repeat;
			
		}

</style>
</head>
<body>

		<!-- Navbar -->
	<div class="w3-top">
	 <nav class="navbar navbar-dark bg-light" style="padding:20px;" id="navigation" role="navigation">
			<a href="StudentPL.jsp"><img alt="LOGO" src="imgs/jaffnaLogo.jpg" style="height:70px;width:70px"></a>
	  		<a class="navbar-brand"></a>
		  	
		</nav>
	</div>
	
	<% String id = request.getParameter("id"); 
		EventController pc = new EventController();
		if (pc.EventDelete(id)) {
			
			
		
	%>
	<h1 text-align="center" style="padding:20px;"></h1>
	<div class="alert alert-success">
	<h3>
  <strong>Success!</strong> The Item is succefully deleted.
  </h3>
  	  		</div>
		<a href="StudentPL.jsp"><button type="button" class="btn btn-outline-success my-2 my-sm-0 "> Back</button></a> <br>
      </div>
      
      
     	<a href="@Url.Action("Index", "Home")" >
    		<img src="IMAGE" />
		</a>
</div>
<% } else {
		out.println("not deleted");
	}%>
	

</body>
</html>