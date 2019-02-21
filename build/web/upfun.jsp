<%-- 
    Document   : upfun
    Created on : Aug 11, 2018, 11:44:52 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/track&field";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String sid = request.getParameter("sid");
String title=request.getParameter("title");
String start=request.getParameter("start");
String end=request.getParameter("end");
String location = request.getParameter("location");
String starttime=request.getParameter("starttime");
String duration=request.getParameter("duration");

if(sid != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(sid);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update schedule set sid=?,title=?,start=?,end=?,location=?,starttime=?,duration=? where sid="+sid;
ps = con.prepareStatement(sql);
ps.setString(1,sid);
ps.setString(2, title);
ps.setString(3, start);
ps.setString(4, end);
ps.setString(5,location);
ps.setString(6, starttime);
ps.setString(7, duration);
response.sendRedirect("domore.jsp");

int i = ps.executeUpdate();
if(i > 0)
{
out.print("Successfully Updated");
}
else
{
out.print("OOOpppsss!!!!Error.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>
    </body>
</html>
