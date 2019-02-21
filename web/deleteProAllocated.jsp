<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
    String event = request.getParameter("event");
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
    <title>Deleting Judges</title>            
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
        <h1>Delete Allocated Judges</h1>
    
        <table border="1">
            <tr>
                <th>Event</th>
                <th>Sportsmeet</th>
                <th>Gender</th>
                <th>No Of Judges</th>
                <th>Referee</th>
                <th>Judges & Umpier</th>
                <th>Time Keeper</th>
                <th>Start Team</th>
                <th>Action</th>
            </tr>
    <%
        try{
            connection = DriverManager.getConnection(connectionUrl+database, userid, password);
            statement=connection.createStatement();
            String sql ="SELECT * FROM allocated";
            resultSet = statement.executeQuery(sql);
            int i=0;
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
            <td><a href="deleteAllocated.jsp?event=<%=resultSet.getString("event") %>">Delete</a></td>
        </tr>
        
    <%
            i++;
            }
            connection.close();
            } catch (Exception e) {
            e.printStackTrace();
            }
    %>
    
        </table>
    </center>
        </div>
</body>
</html>