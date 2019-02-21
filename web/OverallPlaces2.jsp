<%-- 
    Document   : OverallPlaces2
    Created on : Sep 30, 2018, 7:19:28 AM
    Author     : vishali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
       <head>
<title>Overall Places</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="External/fontawesome/css/all.css" rel="stylesheet" type="text/css"/>
        <link href="External/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="External/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="inventory/JS/calender.js" type="text/javascript"></script>
        <link href="inventory/CSS/calender.css" rel="stylesheet" type="text/css"/>    

        <style>
* {
    box-sizing: border-box;
}

body {
    font-family: Arial, Helvetica, sans-serif;
}

/* Style the header */


a.n{
	color:white;
	background-color:blue;
	text-decoration:none;
}


/* Create two columns/boxes that floats next to each other */
nav {
    float: left;
    width: 30%;
    background:white;
    padding: 20px;
}

/* Style the list inside the menu */
nav ul {
    list-style-type: none;
    padding: 0;
}

article {
    float: left;
    padding: 20px;
    width: 70%;
    background-color:whitesmoke;
    height: 750px; /* only for demonstration, should be removed */
}

/* Clear floats after the columns */
section:after {
    content: "";
    display: table;
    clear: both;
	
}
.icon{
	background-color:white;
	height:300px;
}


/* Style the footer */
footer {
    background-color: #777;
    padding: 10px;
    text-align: center;
    color: white;
}

/* Responsive layout - makes the two columns/boxes stack on top of each other instead of next to each other, on small screens */
@media (max-width: 600px) {
    nav, article {
        width: 100%;
        height: auto;
    }
}
</style>
                                                            <jsp:include page="Layout.jsp"/>

</head>
<body onload="displayCalendar()">



<section>
 
  <nav>
	<div class="row">
              <div class="col-md-4">
                    <div class="card mx-auto" style="width: 20em; height: 59em">
                        <img class="card-img-top mx-auto" style="width:70%;" src="pictures/humanicon2.jpg" alt="Card image cap">
			<div class="card-body">
			     <h5 class="card-title">User Information</h5>
        		   <p class="card-text"><i class="fas fa-user">&nbsp;</i>${adminId}</p>
                           <p class="card-text"><i class="fas fa-user">&nbsp;</i>${adminName}</p>
			   <p class="card-text"><i class="fa fa-user-cog">&nbsp;</i>${type}</p>
			    <a href="#" name="logout" id="logout" onclick="location.href='itpLogin.jsp'" class="btn btn-primary"><i class="fas fa-sign-out-alt">&nbsp;</i>Logout</a>
			      
                            <br><br><br><br><Br>
                            
                            <div id="calendar">
                                
                            </div></div>
                    </div>
                </div>
        </div>
	  
	  <br><br>
	<div align="center">'
		<ul>
			<li><a href="schedule.html">
                        <img src="pictures/calendar1.jpg" height="30%" width="50%"></a></li>
		</ul>
	 </div>
	
  </nav>
  
  
  
  
  <article>
  
  <br><br><br>
  
  <table align="center">
  <tr>
    
	
	
	<td align="center">
	<div class="icon">
	<br><br>
	<a href="OverallPlacesA.jsp">
	<img src="pictures/tdicon2.jpg" height="70%" width="80%"></a>
	<br>
    <h4>Annual</h4>
	</div>
	</td>
	
	
	<td align="center">
	<div class="icon">
	<br><br>
	<a href="OverallPlacesF.jsp">
	<img src="pictures/tdicon2.jpg" height="70%" width="80%"></a>
	<br>
    <h4>Freshers'</h4>
	</div>
	</td>
        
       
  </tr>
</article>
</section>



</body>
</html>

