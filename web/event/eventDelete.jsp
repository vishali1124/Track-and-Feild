<%-- 
    Document   : eventDelete
    Created on : Jul 28, 2018, 9:24:14 AM
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
        <link rel="stylesheet" type="text/css" href="css/forms.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        
        <jsp:include page="eventhome.jsp"/>
           <link href="../inventory/CSS/calender.css" rel="stylesheet" type="text/css"/>         
        <script src="../inventory/JS/calender.js" type="text/javascript"></script>
        
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
       
        
                    
        <h1 style="color: darkslateblue" align="center">Event Management</h1>
        <br><br>
        
 <%
String ID=request.getParameter("ID");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/track&field", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("DELETE FROM newevent WHERE eId='"+ID+"'");
out.println("Deleted from Cart!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

<%
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

        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <table align="center">
                        <tr>
                            <th>Event ID</th>   
                            <th>Event Name</th>
                            <th>Meet Type</th>
                            <th>Event Type</th>
                            <th>Maximum number of students</th>
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
                                    <button name="delete">Delete</button>
                                </form>
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
                                    <button type="submit" name="Insert">Insert</button>
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
               
                        </div>                                  
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
