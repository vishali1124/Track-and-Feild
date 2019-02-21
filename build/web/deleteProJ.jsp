<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <h1>Delete Judges</h1>
    
        <table border="1">
            <tr>
                <th>Name</th>
                <th>City</th>
                <th>Contact Number</th>
                <th>E-mail</th>
                <th>Place Of Work</th>
                <th>Designation</th>
                <th>Position In The Meet</th>
                <th>Charge</th>
                <th>Action</th>
            </tr>
    <%
        try{
            connection = DriverManager.getConnection(connectionUrl+database, userid, password);
            statement=connection.createStatement();
            String sql ="SELECT * FROM judges";
            resultSet = statement.executeQuery(sql);
            int i=0;
            while(resultSet.next()){
    %>
    
        <tr>
            <td><%=resultSet.getString("name") %></td>
            <td><%=resultSet.getString("address") %></td>
            <td><%=resultSet.getString("phone") %></td>
            <td><%=resultSet.getString("email") %></td>
            <td><%=resultSet.getString("work") %></td>
            <td><%=resultSet.getString("designation") %></td>
            <td><%=resultSet.getString("position") %></td>
            <td><%=resultSet.getString("charge") %></td>
            <td><a href="deleteJ.jsp?name=<%=resultSet.getString("name") %>">Delete</a></td>
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