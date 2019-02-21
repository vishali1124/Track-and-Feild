<%-- 
    Document   : insertMM
    Created on : Aug 27, 2018, 2:09:29 AM
    Author     : Erandi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="eventAdd/jsp; charset=ISO-8859-1">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        
        <jsp:include page="eventhome.jsp"/>
           <link href="../inventory/CSS/calender.css" rel="stylesheet" type="text/css"/>         
        <script src="../inventory/JS/calender.js" type="text/javascript"></script>
        
        <link rel="stylesheet" type="text/css" href="css/show.css">
        
        <%  
            
            String eId=request.getParameter("eId");
            String userid=request.getParameter("userId");
            
           String url = "jdbc:mysql://localhost:3306/track&field";
	   String user = "root";
	   String pass = "";
           Connection con = null;
           PreparedStatement ps = null;
	   
	   con = DriverManager.getConnection(url,user,pass); 
           Statement st = con.createStatement();
           
           
            String aaa = "INSERT INTO mm(eId, userid) VALUES(?, ?)";
            ps = con.prepareStatement(aaa);
            ps.setString(1, eId);
             ps.setString(2, userid);
             
             
            int query = ps.executeUpdate();
            out.print(query);
	   
	%>

                <%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost/";
String database = "track&field";
String users = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;


%>
        <title>Event Management</title>
    </head>
    <body onload="displayCalendar()">
        
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Navbar</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="events.jsp">Event Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="eventForm.jsp">Add Events</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="eventShow.jsp">Update Events</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Event Chart</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="MMhome.jsp">Meet Manager</a>
                    </li>
                </ul>
            </div>
        </nav>
        
        <br><br><br><br><br>
        
   <h1 style="color: darkslateblue" align="center">Assigned Meet Managers' List</h1>
   <br><br>
   
   <div class="container">
        <div class="row">
            <div class="col-md-8">
    
                <table align="left">
                    <tr> 
                        <th>Event Name</th>
                        <th>Meet Manager Name</th>
                        <th>Start Date</th>
                        <th>End Date</th>
                        <th>Start Time</th>
                        <th>Location</th>
                    </tr>  
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, users, password);
statement=connection.createStatement();
String sql ="(select * from newevent e, eschedule es, mm m, userlogin u where e.eId = es.eId and e.eId = m.eId and m.userid = u.userid)";
resultSet = statement.executeQuery(sql);

while(resultSet.next()){
    
    %>
                    <tr>
                        <td><%=resultSet.getString("eId") %></td>
                        <td><%=resultSet.getString("username") %></td>
                        <td><%=resultSet.getString("start") %></td>
                        <td><%=resultSet.getString("end") %></td>
                        <td><%=resultSet.getString("starttime") %></td>
                        <td><%=resultSet.getString("location") %></td>
                    </tr>
                    
<%
}


connection.close();
} catch (Exception e) {
        e.printStackTrace();
}
%>
                    
                    <tr>
                        <td><button type="submit" name="back" align="center" onclick="location.href='addMM.jsp'">Back</button></td>                            
                    </tr>
                </table>
                 <table>
                        <br><br>
                        <td><button type="submit" name="back" align="center" onclick="location.href='../counting.jsp'">Calculate</button></td>
                </table>

            </div>
            <div class="col-md-4">
		<div class="card mx-auto" style="width: 20em; height: 51em">
                    <img class="card-img-top mx-auto" style="width:60%" src="pics/user.png" alt="Card image cap"/>
                    <div class="card-body">
                       <h5 class="card-title">User Information</h5>
                            <p class="card-text"><i class="fas fa-user">&nbsp;</i>${adminId}</p>
                            <p class="card-text"><i class="fas fa-user">&nbsp;</i>${adminName}</p>
                            <p class="card-text"><i class="fa fa-user-cog">&nbsp;</i>${type}</p>
        		    
                            <a href="#" name="logout" id="logout" onclick="location.href='../itpLogin.jsp'" class="btn btn-primary"><i class="fas fa-sign-out-alt">&nbsp;</i>Logout</a>
			    
                            
                            
                            <br><br><br><br>
                            
                            
                            <div id="calendar">
                                
                            </div> 
                    </div>                                  
		</div>
            </div>
        </div>
    </div>
        
    </body>
</html>
