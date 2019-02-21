
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
                        background-repeat: no-repeat;
			
		}

</style>

</head>
<body class="w3-theme-l5">

<!-- Navbar -->
	<div class="w3-top">
	 <nav class="navbar navbar-dark bg-light" style="padding:40px; width:100%;" id="navigation" role="navigation">
			<a href="StudentPL.jsp"><img alt="LOGO" src="imgs/jaffnaLogo.jpg" style="height:70px;width:70px"></a>
	  		<a class="navbar-brand"></a>
		</nav>
	</div>
	
	<div class="w3-container w3-content" style="max-width:1400px;margin-top:150px">  
	 <%@ page import="java.sql.*" %>
		<%String id =  request.getParameter("id"); %>
					<%   try{
	       				
   				 Class.forName("com.mysql.jdbc.Driver");
    			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field","root","");
    
    				Statement st =  con.createStatement();
    				String sql = "Select * from participant where StudentID='"+id+"'";
    					ResultSet rs = st.executeQuery(sql);
    
   				 while(rs.next()){

%>
		
				<form action="ParticipantSUpdate" method="post">
			       	<div style="padding:20px">	
						<h3 align="center">Updating new Participants</h3>
					</div>
					<table align="center">
  				<tbody>
    
    	
	

						<tr>
							<td>Student ID :</td>
							<td><input type="text" name="StudentID" value="<%=rs.getString("StudentID") %>"></td>
						</tr>
						<tr>
							<td>Sports ID :</td>
							<td><input type="text" name="SportsID" value="<%=rs.getString("SportsID") %>"></td>
						</tr>
						<tr>
							<td>Participant Name :</td>
							<td><input type="text" name="PartName" value="<%=rs.getString("PartName") %>"></td>
						</tr>
						<tr>
							<td>100m :</td>
							<td><input type="text" name="Hundred" value="<%=rs.getString("Hundred") %>"></td>
						</tr>
						<tr>
							<td>200m :</td>
							<td><input type="text" name="Twoh" value="<%=rs.getString("Twoh") %>"></td>
						</tr>
						<tr>
							<td>High Jump :</td>
							<td><input type="text" name="Highj" value="<%=rs.getString("Highj") %>"></td>
						</tr>
						<tr>
							<td>Long Jump :</td>
							<td><input type="text" name="Longj" value="<%=rs.getString("Longj") %>"></td>
						</tr>
						<tr>
							<td>800m :</td>
							<td><input type="text" name="Eight" value="<%=rs.getString("Eight") %>"></td>
						</tr>
						
						<tr>
						<td><input type="submit" value="Update"></td>
						<td></button><a href="StudentPL.jsp">Cancel</a></button></td>
						
						
						</tr>
						<br>
						
					</table>
	
					
				</form>

					  <%
    }
    
  }
    catch(Exception e){
    	System.out.println(e.getMessage());
    	
    }
  

%>

</div>
</body>
</html>