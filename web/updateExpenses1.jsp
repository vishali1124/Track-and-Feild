<%-- 
    Document   : update
    Created on : Aug 10, 2018, 6:39:36 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String exid = request.getParameter("exid");
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
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from expenses where exid="+exid;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css.css" rel="stylesheet" type="text/css">
        <title>JSP Page</title>
        <link href="css.css" rel="stylesheet" type="text/css"/>
    </head>
    <body >
        
            <div class="box" >
        <h1>Update Expenses Details</h1>
<form method="post" action="updateExpensesprocess.jsp" align="center">
    <p>ExId</p>
<input type="hidden" name="exid" value="<%=resultSet.getString("exid") %>">
<input type="text" name="exid" value="<%=resultSet.getString("exid") %>">
<br>
<p>description:</p><br>
<input type="text" name="description" value="<%=resultSet.getString("description") %>">
<br>
<p>amount:</p><br>
<input type="text" name="amount" value="<%=resultSet.getString("amount") %>">
<br>
<p>date:</p><br>
<input type="date" name="date" value="<%=resultSet.getString("date") %>">
<br>

<br><br>
<input type="submit" value="submit">
</form>
            </div>      
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

    </body>
</html>
