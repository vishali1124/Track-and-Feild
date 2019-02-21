
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%    
    String name = request.getParameter("userid");
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
<!DOCTYPE html>
<html>
    <head>
        <title>Allocated Judges</title>        
        <meta charset="UTF-8">
        <link type="text/css" rel="stylesheet" href="pika.css">
        <link type="text/css" rel="stylesheet" href="function.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>        
        <div>
            <img  src="jimages/pikz.png"  alt=""/>         
        </div>
        <div id="bodyF">
       <center>
        <h1>Allocated Judges</h1>
        <table border="1">
            <tr>
                <th>Event</th>
                <th>Sportsmeet</th>
                <th>Gender</th>
                <th>No Of Judges</th>
                <th>Referees</th>
                <th>Judges & Umpires</th>
                <th>Time Keepers</th>
                <th>Start Team</th>
            </tr>
<%
    try{
    connection = DriverManager.getConnection(connectionUrl+database, userid, password);
    statement=connection.createStatement();
    String sql ="SELECT * FROM allocated";
    resultSet = statement.executeQuery(sql);
    while(resultSet.next()){
%>
            <tr>
                <td><%=resultSet.getString("event") %></td>
                <td><%=resultSet.getString("meet") %></td>
                <td><%=resultSet.getString("gender") %></td>
                <td><%=resultSet.getString("njudges") %></td>
                <td><%=resultSet.getString("referee") %></td>
                <td><%=resultSet.getString("judgeUmpier") %></td>
                <td><%=resultSet.getString("timeKeeper") %></td>
                <td><%=resultSet.getString("startTeam") %></td>
            </tr>
<%
    }
    connection.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
        </table><br>
        <table border="0">
            <td><a href="allocate.jsp"><button id="userEdit">ALLOCATE</button></a></td>
            <td><a href="updateAllocated.jsp"><button id="userEdit">UPDATE</button></a></td>
            <td><a href="deleteProAllocated.jsp"><button id="userEdit">DELETE</button></a></td>
            <td><a href="JudgeHome.jsp"><button id="userEdit">OK</button></a></td>
            <br>            
        </table>
       </center>
        </div>
    </body>
</html>