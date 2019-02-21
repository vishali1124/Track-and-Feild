<%-- 
    Document   : hello
    Created on : Aug 9, 2018, 3:06:27 PM
    Author     : Erandi
--%>
<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>

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
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="(select * from event )";
resultSet = statement.executeQuery(sql);
    
%>
            <center>
                <h1> Drop down box or select element</h1>
                <select>
                <%  while(resultSet.next()){ %>
                    <option><%= resultSet.getString(2)%></option>
                <% } %>
                </select>
            </center>

<%
connection.close();
} catch (Exception e) {
        e.printStackTrace();
}
%>

        <form method="post" action="test.jsp">
            First name:<br>
            <input type="text" name="first_name">
            <br>
            <input type="submit" value="submit">
        </form>
    </body>
</html>
