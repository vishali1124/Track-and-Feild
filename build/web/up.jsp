<%-- 
    Document   : up
    Created on : Aug 11, 2018, 11:31:22 PM
    Author     : lenovo
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
String sql ="select * from schedule where sid="+sid;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="form.css" rel="stylesheet" type="text/css"/>
        <title>Up</title>
    </head>
    <body>
        <div class="header">
            <img class="header_img" src="header.png" alt="" width="100%" />
        </div>
        <img src="images/formback.jpg"/>
         
        <div class="formbox" >
            
            <h2><center>Add Event to Schedule Plan</center></h2>
            
        
       
        <form action="upfun.jsp" method="POST"  align="center" >
            
            <p>Schedule ID</p>
            <input type="text" name="sid" value="<%=resultSet.getString("sid")%>" readonly=""/>
            <p>Event Name</p>
            <input type="text" name="title" value="<%=resultSet.getString("title")%>" />
            <p>Start Day</p>
            <input type="date" name="start" value="<%=resultSet.getString("start")%>"/>
            <p>End Day</p>
            <input type="date" name="end" value="<%=resultSet.getString("end")%>"/>
            <p>Location</p>
            <input type="text" name="location" value="<%=resultSet.getString("location")%>"/>
            <p>Start Time</p>
            <input type="time" name="starttime" value="<%=resultSet.getString("starttime")%>" "/>
            <p>Duration</p>
            <input type="text" name="duration" value="<%=resultSet.getString("duration")%>"/>
            
            
            <input type="submit" name="submit" value="Submit">
            <a href="view_cal.jsp">View</a>
            
               

        </form>
            <%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
                    
        
        
        
                   <!--<a href="viewCal.jsp">view</a>-->
        </div>
        
    </body>
</html>
