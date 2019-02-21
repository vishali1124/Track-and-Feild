<%-- 
    Document   : updatePro
    Created on : Aug 11, 2018, 7:43:16 PM
    Author     : Erandi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/show.css">
        <<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        
        <jsp:include page="eventhome.jsp"/>
        
        <link href="../inventory/CSS/calender.css" rel="stylesheet" type="text/css"/>         
        <script src="../inventory/JS/calender.js" type="text/javascript"></script>
        
        <title>JSP Page</title>
    </head>
    <body onload="displayCalendar()">
    
        
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/track&field";%>
<%!String user = "root";%>
<%!String psw = "";%>

<%
String ID = request.getParameter("ID");
String name=request.getParameter("name");
String select_Mtype=request.getParameter("select_Mtype");
String select_Etype=request.getParameter("select_Etype");
String select_num=request.getParameter("select_num");
if(ID != null)
{
Connection con = null;
PreparedStatement ps = null;

try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update newevent set eName=?,meetType=?,eType=?,maxNo=? where eId='"+ID+"'";
ps = con.prepareStatement(sql);
ps.setString(1, name);
ps.setString(2, select_Mtype);
ps.setString(3, select_Etype);
ps.setString(4, select_num);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("***Record Updated Successfully***");
}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>



<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
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
        <br><br><br>
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <table align="center">
                        <tr>
                            <td>Event ID</td>   
                            <td>Event Name</td>
                            <td>Meet Type</td>
                            <td>Event Type</td>
                            <td>Maximum number of students</td>
                        </tr>  
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="(select * from newevent )";
resultSet = statement.executeQuery(sql);

while(resultSet.next()){
    
%>
                        <tr>
                            <td><%=resultSet.getString("eId") %></td>
                            <td><%=resultSet.getString("eName") %></td>
                            <td><%=resultSet.getString("meetType") %></td>
                            <td><%=resultSet.getString("eType") %></td>
                            <td><%=resultSet.getString("maxNo") %></td>
                            <td>
                                <form action="eventDelete.jsp" method="POST">
                                    <input name="ID" type="text" value="<%=resultSet.getString("eId") %>" hidden>
                                    <button type="submit" name="delete">Delete</button>
                                    </form>
                            </td>
                            <td>
                                <form action="eventUpdate.jsp" method="POST">
                                    <input name="ID" type="text" value="<%=resultSet.getString("eId") %>" hidden>
                                    <input name="name" type="text" value="<%=resultSet.getString("eName")%>" hidden>
                                    <input name="select_Mtype" type="text" value="<%=resultSet.getString("meetType")%>" hidden>
                                    <input name="select_Etype" type="text" value="<%=resultSet.getString("eType")%>" hidden>
                                    <input name="select_num" type="text" value="<%=resultSet.getString("maxNo")%>" hidden>
                                    <button type="submit" name="update">Update</button>
                                </form>
                            </td>
                            <td>
                                <form action="eventForm.jsp" method="POST">
                                    <input name="ID" type="text" value="<%=resultSet.getString("eId") %>" hidden>
                                    <input name="name" type="text" value="<%=resultSet.getString("eName")%>" hidden>
                                    <input name="select_Mtype" type="text" value="<%=resultSet.getString("meetType")%>" hidden>
                                    <input name="select_Etype" type="text" value="<%=resultSet.getString("eType")%>" hidden>
                                    <input name="select_num" type="text" value="<%=resultSet.getString("maxNo")%>" hidden>
                                    <button type="submit" name="insert">Insert</button>
                                </form>
                            </td>
                        </tr>
<%
}


connection.close();
} catch (Exception e) {
        e.printStackTrace();
}
%>

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
                                
                            </div></div>                                  
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
