<%-- 
    Document   : update
    Created on : Aug 25, 2018, 7:03:58 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String nic = request.getParameter("nic");
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
String sql ="select * from ground where nic="+nic;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <title>Up</title>
    </head>
    <body>
        
            
            <h2><center>Update Here</center></h2>
            
        
       
            <form  name="myForm" action="uppro.jsp" method="POST"  align="center" >
            
            <p>NIC</p>
            <input type="text" name="nic" value="<%=resultSet.getString("nic")%>" readonly=""/>
            <p> Name</p>
            <input type="text" name="name" value="<%=resultSet.getString("name")%>" />
            <p>Date</p>
            <input type="date" name="date" value="<%=resultSet.getString("date")%>"/>
            <p>Return Date</p>
            <input type="date" name="resdate" value="<%=resultSet.getString("resdate")%>"/>
            
            
            <input type="submit" name="submit" value="Submit">
            <a href="#">View</a>
            
               

        </form>
            <%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
                    
        
        
        
                   <!--<a href="viewCal.jsp">view</a>-->
       
        
    </body>
</html>
