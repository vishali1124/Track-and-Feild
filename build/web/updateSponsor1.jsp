<%-- 
    Document   : updateSponsor1
    Created on : Aug 12, 2018, 11:29:06 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String sid = request.getParameter("sid");
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
String sql ="select * from sponsor where sid="+sid;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css.css" rel="stylesheet" type="text/css">
        <title>JSP Page</title>
    </head>
    <body
        
        <img src="book.png" width="100%" />
        
        <div class="box" >
            <h1><center>Update Sponsor Details</center></h1>
        <form action="updateSponsorprocess.jsp" method="post" align="center">
            <p>sid</p>
            <input type="hidden" name="sid" value="<%=resultSet.getString("sid")%>"/>
            <input type="text" name="sid" value="<%=resultSet.getString("sid") %>"/>

            <p>Name :</p>
            <input type="text" name="name" value="<%=resultSet.getString("name") %>"/>


            <p>Address :</p>
            <input type="text" name="address" value="<%=resultSet.getString("address") %>"/>

            <p>Email :</p>
            <input type="text" name="email" value="<%=resultSet.getString("email") %>"/>

            <p>Phone Number :</P>
            <input type="text" name="phone" value="<%=resultSet.getString("phone") %>"/>
            <br>
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
