<%-- 
    Document   : updateIncome
    Created on : Aug 11, 2018, 1:25:46 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String inid = request.getParameter("inid");
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
String sql ="select * from income where inid="+inid;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css.css" rel="stylesheet" type="text/css"/>
    </head>
        <body>
            <div class="box" >
                <h1><center>Update Income Details</center></h1>
<form method="post" action="updateIncomeprocess.jsp">
    <p>Exid :</p>
<input type="hidden" name="inid" value="<%=resultSet.getString("inid") %>">
<input type="text" name="inid" value="<%=resultSet.getString("inid") %>">
<br>
<p>Income Type :</p><br>
<input type="text" name="incomeType" value="<%=resultSet.getString("incomeType") %>">
<br>
<p>Name :</p><br>
<input type="text" name="name" value="<%=resultSet.getString("name") %>">
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
         
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
            </div>
    </body>
</html>
