<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="dbConnection.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel="stylesheet" href="css/w3.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">



<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Open Sans", sans-serif}


	/* using normalize.css in settings */
		abbr {
		  border-bottom: 1px dashed #039;
		  cursor: help;
		}
		body {
		  background-color: #f0f0f0;
		  font: 1rem 'Open Sans',sans-serif;
		}
		.tbl {
		  background-color: white;
		  border-collapse: collapse;
		  margin: 2em auto;
		  table-layout: fixed;
		}
		.tbl caption {
		  font-weight: 700;
		  padding-bottom: 1em;
		  text-align: left;
		}
		.tbl th {
		  background-color: lightsteelblue;
		  font-weight: bold;
		  text-align: left;
		}
		.tbl td, .tbl th {
		  border: 1px solid black;
		  padding: 2px 4px;
		  vertical-align: top;
		}
		.tbl tbody tr:nth-child(odd):not(.highlight) {
		  background-color: #dde;
		}
		.tbl tbody tr:hover:not(.highlight) {
		  background-color: #b0b0b0;
		}
		.highlight {
		  /*background-color: rgba(255,255,153, .7);  light yellow */
		  background-color: red;
		  font-weight: bold;
		}

		#navigation,.navbar .navbar-default {
			background-image: url("imgs/kirul.png");
			background-repeat-y: no-repeat;
			
		}

</style>
<title>Student Participant Management</title>
</head>
<body class="w3-theme-l5">
	<!-- Navbar -->
	<div class="w3-top">
	 <nav class="navbar navbar-dark bg-light" style="padding:20px;" id="navigation" role="navigation">
	 	<a href="index2.jsp"><img alt="LOGO" src="imgs/jaffnaLogo.jpg" style="height:70px;width:70px"></a>
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
	         <p><i class="fa fa-pencil fa-fw w3-margin-right w3-text-theme"></i> Call Room Judge</p>
	         
	        </div>
	      </div>
	      <br>
	      
	      <!-- Alert Box -->
	      <div class="w3-container w3-display-container w3-round w3-theme-l4 w3-border w3-theme-border w3-margin-bottom w3-hide-small">
	        <span onclick="this.parentElement.style.display='none'" class="w3-button w3-theme-l3 w3-display-topright">
	          <i class="fa fa-remove"></i>
	        </span>
	        <p><strong>Hey!</strong></p>
	        <p> Welcome to the Student Management page. You're logged as the call room judge </p>
	      </div>
	    
	    <!-- End Left Column -->
	    </div>
	    
	    <!-- Middle Column -->
	    <div class="w3-col m9">
	    
	      <div class="w3-row-padding">
	        <div class="w3-col m12">
	          <div class="w3-card w3-round w3-white">
	            <div class="w3-container w3-padding">
	              <div class="w3-container"></div>
	
	  <h1 style="text-align:center">Student Participants List</h1>	    	    
	    <div class="col-sm-12" style="padding:5px;" >
	<form class="form-inline">
		    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
		    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
	  	</form>
	</div> 
  
  <%@ page import="java.sql.*" %>
  
  <% try{
      
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field","root","");
	
	Statement st =  con.createStatement();
	String sql = "Select * from participant";
	ResultSet res = st.executeQuery(sql);
  
	  ResultSet rs = st.executeQuery("SELECT * FROM participant");
	  ResultSetMetaData md = rs.getMetaData(); 
	  int col = md.getColumnCount();
	  %>
	<table class="tbl">
	  <thead>
	    <!--  <tr>
	      <th style="width:160px">StudentID</th>
	      <th style="width:160px">SportsID</th>
	      <th style="width:160px">Name</th>
	      <th style="width:58px">100m</th>
	      <th style="width:58px">200m</th>
	      <th style="width:58px">High Jump</th>
	      <th style="width:58px">Long Jump</th>
	      <th style="width:58px">8000m</th>-->
	    <tr>
	      <% for (int i = 1; i <= col; i++){
			  String col_name = md.getColumnName(i);
		   %>
		   <th><%=col_name %></th>
		   <% } %>
	      <th>Update</th>
	      <th>Delete</th>
	    </tr>
	  </thead>
 <%
    
    while(rs.next()){
  		int trueCount = 0;;

%>
  <tbody>
    <!--<tr id="<%=rs.getString("StudentID") %>" hundred="<%=rs.getString("Hundred") %>" Twoh="<%=rs.getString("Twoh") %>" Highj="<%=rs.getString("Highj") %>" Longj="<%=rs.getString("Longj") %>" Eight="<%=rs.getString("Eight") %>" onclick="highlight(this.id)">
      <td><%=rs.getString("StudentID") %> </td>
      <td><%=rs.getString("SportsID") %> </td>
      <td><%=rs.getString("PartName") %> </td>
      <td><%=rs.getString("Hundred") %> </td>
      <td><%=rs.getString("Twoh") %> </td>
      <td><%=rs.getString("Highj") %> </td>
      <td><%=rs.getString("Longj") %> </td>
      <td><%=rs.getString("Eight") %> </td>
      <td><a href = "StudentUpdate.jsp?id=<%=rs.getString("StudentID") %> ">Edit</a>
      <td><a href = "Delete.jsp?id=<%=rs.getString("StudentID") %> ">Delete</a>
      
    </tr>-->
    <tr>
    	<% for (int i = 1; i <= col; i++) {
    		String element = rs.getString(i);
    		if (element.equalsIgnoreCase("true")) {
    			trueCount++; 
    		}
    		%>
    		<td><%=element %></td>
    	<% } %>
    	<td><a href ="StudentUpdate.jsp?id=<%=rs.getString(1) %> ">Edit</a></td>
      <td><a href ="Delete.jsp?id=<%=rs.getString(1) %> ">Delete</a></td>
      <% if (trueCount > 3) { %>
      	<td style="color: red; background-color: white; border: none"><p>Too much event participation</p></td>
      <% }  %>
    </tr>
    
    	
	
  <%
    }
    con.close();
  }
    catch(Exception e){
    	System.out.println("error2");
    	
    }
  

%>
</table>

<button type="button" id="insertButton" class="btn btn-outline-primary my-2 my-sm-0 w3-right" onclick="document.getElementById('id01').style.display='block'" >Add New Student</button>


		<div id="id01" class="w3-modal">
   		<div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">

     	<div class="w3-center"><br>
     	   	<span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
		       	<form action="ParticipantSInsert" method="post">
			       	<div style="padding:20px">	
						<h3 align="center">Inserting new Participants</h3>
					</div>
					<table style="text-align: center;">
						<% DBConnector dc = new DBConnector();
						Connection con = dc.getConnection();
						Statement getColumnNameStmt = con.createStatement();
						String getColumnNames = "SELECT * FROM participant";
						ResultSet columnNames = getColumnNameStmt.executeQuery(getColumnNames);
						ResultSetMetaData participantMetaData = columnNames.getMetaData();
						int columnCount = participantMetaData.getColumnCount();
						out.println(columnCount);
						
							for (int i = 1; i <= columnCount; i++) {
								String col_name = participantMetaData.getColumnName(i);
								
								if (i <= 3) {
						
						%>
						<tr>
							<td><%=col_name %></td>
							<td><input type="text" name="<%=col_name %>"></td>
						</tr>
						<% } else {
							%>
						<tr>
							<td><%=col_name %></td>
							<td><select name="<%=col_name %>">
									<option value="true">true</option>
									<option value="false">false</option>
								</select>
							</td>
						</tr>
						<% } %>
						<!--<tr>
							<td>Student ID :</td>
							<td><input type="text" name="StudentID" ></td>
						</tr>
						<tr>
							<td>Sports ID :</td>
							<td><input type="text" name="SportsID" required></td>
						</tr>
						<tr>
							<td>Participant Name :</td>
							<td><input type="text" name="PartName" required></td>
						</tr>
						<tr>
							<td>100m :</td>
							<td><select name="Hundred">	
									<option value="true">true</option>
									<option value="false">false</option>
								</select>
							</td>
						</tr>
						<tr>
							<td>200m :</td>
							<td><select name="Twoh">
									<option value="true">true</option>
									<option value="false">false</option>
								</select>
							</td>
						</tr>
						<tr>
							<td>High Jump :</td>
							<td><select name="Highj">
									<option value="true">true</option>
									<option value="false">false</option>
								</select>
							</td>
						</tr>
						<tr>
							<td>Long Jump :</td>
							<td><select name="Longj">
									<option value="true">true</option>
									<option value="false">false</option>
								</select>
							</td>
						</tr>
						<tr>
							<td>800m :</td>
							<td><select name="Eight">
									<option value="true">true</option>
									<option value="false">false</option>
								</select>
							</td>
						</tr>
						<tr>
							
						</tr>-->
						<% } %>
						
						
					</table>
					<div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
		      			 <button class="btn btn-outline-success my-2 my-sm-0 w3-left" type="reset" name="reset">Reset</button>
						 <button class="btn btn-outline-success my-2 my-sm-0 w3-left" type="submit" name="submit" value="Insert">Insert</button>
						 
		      	
		       			 <button onclick="document.getElementById('id01').style.display='none'" type="button" class="btn btn-outline-danger my-2 my-sm-0 w3-right">Cancel</button>
		     		</div>
				</form>
     	 </div>
    </div>
  </div>


		<!-- update -->
			<div id="id02" class="w3-modal">
   		<div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">

     	<div class="w3-center"><br>
     	   	<span onclick="document.getElementById('id02').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
		       	<form action="ParticipantSInsert" method="post">
			       	<div style="padding:20px">	
						<h3 align="center">Updating new Participants</h3>
					</div>
					<table>
						
						<!--<tr>
							<td>Student ID :</td>
							<td><input type="text" name="StudentID"></td>
						</tr>
						<tr>
							<td>Sports ID :</td>
							<td><input type="text" name="SportsID"></td>
						</tr>
						<tr>
							<td>Participant Name :</td>
							<td><input type="text" name="PartName"></td>
						</tr>
						<tr>
							<td>100m :</td>
							<td><select name="Hundred">	
									<option value="true">true</option>
									<option value="false">false</option>
								</select>
							</td>
						</tr>
						<tr>
							<td>200m :</td>
							<td><input type="text" name="Twoh"></td>
						</tr>
						<tr>
							<td>High Jump :</td>
							<td><input type="text" name="Highj"></td>
						</tr>
						<tr>
							<td>Long Jump :</td>
							<td><input type="text" name="Longj"></td>
						</tr>
						<tr>
							<td>800m :</td>
							<td><input type="text" name="Eight"></td>
						</tr>-->
						<br>
						
					</table>
					<div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
		      			 <button class="btn btn-outline-success my-2 my-sm-0 w3-left" type="reset" name="reset">Reset</button>
		      			 
						 <button class="btn btn-outline-success my-2 my-sm-0 w3-left" type="submit" name="submit" value="Insert">Update</button>
		      	
		       			 <button onclick="document.getElementById('id02').style.display='none'" type="button" class="btn btn-outline-danger my-2 my-sm-0 w3-right">Cancel</button>
		     		</div>
				</form>
     	 </div>
    </div>
  </div>	
	

	</div>
            </div>
          </div>
        </div>
      </div> 
      
    
    <!-- End Middle Column -->
    </div>

	<!-- <div style="padding:50px">	
		<h1 align="center">Student Participant Management</h1>
	
		
	</div> -->
	
	<script type="text/javascript">
/*jshint esversion: 6

	function selRow(e) {
  'use strict';
  let el = e.target, parent;
  // Traverse parent in case el is not TD.
  while (el) {
    parent = el.parentElement;
    if (parent && parent.tagName == "TR") {
      parent.classList.toggle('highlight');
      break;
    }
    el = parent;
  }
  e.stopPropagation(); // not really necessary.
}

(function (doc) {
  'use strict';
  doc.addEventListener('DOMContentLoaded',
    function () {
      let tbody = doc.querySelector('.tbl>tbody');
      if (tbody) {
        tbody.addEventListener('click',
                               selRow, false);
      }
    }
  );
})(document);

*/
var elementArr = [];

function highlight(sender) {
	var trueCount = 0;
	var element = document.getElementById(sender);
	var hundred = document.getElementById(sender).attributes["hundred"].value;
	var Twoh = document.getElementById(sender).attributes["Twoh"].value;
	var Highj = document.getElementById(sender).attributes["Highj"].value;
	var Longj = document.getElementById(sender).attributes["Longj"].value;
	var Eight = document.getElementById(sender).attributes["Eight"].value;
	
	elementArr[0] = hundred;
	elementArr[1] = Twoh;
	elementArr[2] = Highj;
	elementArr[3] = Longj;
	elementArr[4] = Eight;
	
	
	for (var i = 0; i < elementArr.length; i++) {
		if (elementArr[i] == "true") {
			trueCount++;
		}
	}
	
	if (trueCount > 3) {
		alert("greater than 3");
		element.style.backgroundColor = "red";
	}
	else {
		alert("less than 3");
	}
	//elementArr[elementArr.length] = sender;
	//row.style.backgroundColor = "red";
	/*for (var i = 0, len = element.length; i < len; i++) {
		element[i].style.backgroundColor = "red";	
	}*/
	
}

	
	</script>
</body>
</html>