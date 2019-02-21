<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String name = request.getParameter("name");
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
        <title>Update Allocated Judges</title>
    </head>
    <body>
    <center>
        <h1>Update Allocated Judges</h1>
    </center>
<%
    try{
        connection = DriverManager.getConnection(connectionUrl+database, userid, password);
        statement=connection.createStatement();
        String sql ="SELECT * FROM allocated";
        resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
%>
    <form method="post" action="updateProAllocated.jsp" name="updateAllocatedForm">
            <input type="hidden" name="id" value="<%=resultSet.getString("event") %>">            
            <table border="0">
            <tr>
                <th>Event</th>
                <th>Sportsmeet</th>
                <th>Gender</th>
                <th>No Of Judges</th>
                <th>Referee</th>
                <th>Judge & Umpire</th>
                <th>Time Keeper</th>
                <th>Start Team</th>
            </tr>
            <tr>
                <td><input type="text" name="event" value="<%=resultSet.getString("event") %>"></td>
                <td><input type="text" name="meet" value="<%=resultSet.getString("meet") %>"></td>
                <td><input type="text" name="gender" value="<%=resultSet.getString("gender") %>"></td>
                <td><input type="text" name="njudges" value="<%=resultSet.getString("njudges") %>"></td>
                <td><input type="text" name="referee" value="<%=resultSet.getString("referee") %>"></td>                
                <td><input type="text" name="judgeUmpier" value="<%=resultSet.getString("judgeUmpier") %>"></td>
                <td><input type="text" name="timeKeeper" value="<%=resultSet.getString("timeKeeper") %>"></td>
                <td><input type="text" name="startTeam" value="<%=resultSet.getString("startTeam") %>"></td>
                <td><input type="submit" value="Update"></td>
            </tr>            
        </form>
<%
    }
    connection.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
    </body>
</html>