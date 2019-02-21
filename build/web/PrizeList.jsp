<!DOCTYPE html>
<html>
       <head>
<title>Prize List Home</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
    box-sizing: border-box;
}

body {
    font-family: Arial, Helvetica, sans-serif;
}

/* Style the header */
header {
    background-color: #666;
    padding: 30px;
    text-align: center;
    font-size: 35px;
    color: white;
}

a.n{
	color:white;
	background-color:blue;
	text-decoration:none;
}


/* Create two columns/boxes that floats next to each other */
nav {
    float: left;
    width: 30%;
    height: 750px; /* only for demonstration, should be removed */
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
    background-color: #DEDEDE;
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
        <link href="External/fontawesome/css/all.css" rel="stylesheet" type="text/css"/>
        <link href="External/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="External/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
</head>
<body>


<header>
  <h4>Certificates and Awards Management</h4>
</header>

<section>
 
  <nav>
	<div align="center">
  
		<ul>
			
                    <li><img src="pictures/humanicon2.jpg" height="80%" width="80%"></li>
			<li><h3>User Information</h3></li>
                        <br>
			<li><input type="text" value="Janadi"></li>
                        
			<li><input type="text" value="Event Presentation Manager"></li>
			
                       
                        <br>
			<li> <a class="n" href=""> Edit Profile</a>
                            
		             <a class="n" href="">Register</a> 
		    </li>
		</ul>
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
	<a href="ViewCurrentRecord1.jsp">
	<img src="pictures/tdicon2.jpg" height="70%" width="80%"></a>
	<br>
    <h4>Best Performance</h4>
	</div>
	</td>
	
	
	<td align="center">
	<div class="icon">
	<br><br>
	<a href="Results1.jsp">
	<img src="pictures/tdicon2.jpg" height="70%" width="80%"></a>
	<br>
    <h4>Relay Champion Overall</h4>
	</div>
	</td>
        
       
	<td align="center">
	<div class="icon">
	<br><br>
	<a href="Results1.jsp">
	<img src="pictures/tdicon2.jpg" height="70%" width="80%"></a>
	<br>
    <h4>Record Holders</h4>
	</div>
	</td>
	
  </tr>
	
		
	<tr>
    
	<td align="center">
	<div class="icon">
	<br><br>
	<a href="ViewFacultyPoints.jsp">
	<img src="pictures/tdicon2.jpg" height="70%" width="80%"></a>
	<br>
    <h4>Outstanding Athlete of the Meet</h4>
	</div>
	</td>
	
        
        <td align="center">
	<div class="icon">
	<br><br>
	<a href="PrizeList.jsp">
	<img src="pictures/tdicon2.jpg" height="70%" width="80%"></a>
	<br>
    <h4>Points</h4>
	</div>
	</td>
        
        
        <td align="center">
	<div class="icon">
	<br><br>
	<a href="ViewFacultyPoints.jsp">
	<img src="pictures/tdicon2.jpg" height="70%" width="80%"></a>
	<br>
    <h4>Places</h4>
	</div>
	</td>
	
	</tr>
	
        
        
        <tr>
    
	<td align="center">
	<div class="icon">
	<br><br>
	<a href="ViewFacultyPoints.jsp">
	<img src="pictures/tdicon2.jpg" height="70%" width="80%"></a>
	<br>
    <h4>Overall 2nd Runner Up</h4>
	</div>
	</td>
	
        
        <td align="center">
	<div class="icon">
	<br><br>
	<a href="PrizeList.jsp">
	<img src="pictures/tdicon2.jpg" height="70%" width="80%"></a>
	<br>
    <h4>Overall 1st Runner Up</h4>
	</div>
	</td>
        
        
        <td align="center">
	<div class="icon">
	<br><br>
	<a href="ViewFacultyPoints.jsp">
	<img src="pictures/tdicon2.jpg" height="70%" width="80%"></a>
	<br>
    <h4>Overall Champion</h4>
	</div>
	</td>
	
	</tr>
	
</article>
</section>



</body>
</html>
