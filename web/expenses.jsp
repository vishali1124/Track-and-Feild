<%-- 
    Document   : expenses1
    Created on : Aug 10, 2018, 6:34:03 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
       <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
       <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>

               <jsp:include page="fLayout.jsp"/>
               
        <script src="inventory/JS/calender.js" type="text/javascript"></script>
        <link href="inventory/CSS/calender.css" rel="stylesheet" type="text/css"/>
<%
String exid = request.getParameter("exid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost/";
String database = "track&field";
String userid = "root";
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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body onload="displayCalendar()">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Home</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="Finance.jsp">Finance Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="income.jsp">Event Income</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="expenses.jsp">Event Expenses</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="sponsor.jsp">Sponsors</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="profit.jsp">profit/loss</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="freport.jsp">Reports</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    
        <h1>Event Expenses Details- Inter Faculty Championship- 2018</h1>
        <br><br><br>
<table style="width: 100% "   border="10" >
<tr bgcolor="lightblue" cellpadding="80" cellspacing="50" border="4">
    <td>exid</td>
<td>description</td>
<td>amount</td>
<td>date</td>
<td class="edit">Edit</td>
<td class="delete">Delete</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from expenses";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("exid") %></td>
<td><%=resultSet.getString("description") %></td>
<td><%=resultSet.getString("amount") %></td>
<td><%=resultSet.getString("date") %></td>

<td><a href="updateExpenses1.jsp?exid=<%=resultSet.getString("exid")%>" onclick="return confirm('are you sure ?')">Edit</a></td>
<td><a href="deleteExpenses.jsp?exid=<%=resultSet.getString("exid")%>" onclick="return confirm('Are you sure to delete?')">Delete</a></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<a href="insertExpenses.jsp"><button>Insert Expenses Details</button></a><br><br>
<% try{
        connection = DriverManager.getConnection(connectionUrl+database, userid, password);
        statement=connection.createStatement();
    
        String sql2 = "select SUM(amount) as totalExpenses from expenses";
      resultSet = statement.executeQuery(sql2);
      while(resultSet.next()){
          %>
      
Total Amount of Expenses : <%=resultSet.getString("totalExpenses") %>
    


<br>
<form action="expenseServlet" method="post">
    <input type="hidden" name="expenses" value="<%=resultSet.getString("totalExpenses") %>"/>
    <input type="submit" value="Add to database">
</form>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%> 
                </div>

<div class="card mx-auto" style="width: 20em; height: 51em">
				  <img class="card-img-top mx-auto" style="width:60%" src="user.png" alt="Card image cap"/>
				  <div class="card-body">
				   <h5 class="card-title">User Information</h5>
        		   <p class="card-text"><i class="fas fa-user">&nbsp;</i>${adminId}</p>
                           <p class="card-text"><i class="fas fa-user">&nbsp;</i>${adminName}</p>
			   <p class="card-text"><i class="fa fa-user-cog">&nbsp;</i>${type}</p>
			    <a href="#" name="logout" id="logout" onclick="location.href='itpLogin.jsp'" class="btn btn-primary"><i class="fas fa-sign-out-alt">&nbsp;</i>Logout</a>
			      
                            <br><br><br><br><Br>
                            
                            <div id="calendar">
                                
                            </div>
                                  
                                  </div>                                  
				</div>
            </div>
        </div>
    </body>
</html>
