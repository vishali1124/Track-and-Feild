<%-- 
    Document   : updateSponsorprocess
    Created on : Aug 11, 2018, 5:05:11 PM
    Author     : User
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
String name=request.getParameter("name");
String address=request.getParameter("address");
String email=request.getParameter("email");
String phone=request.getParameter("phone");

if(sid != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(sid);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update sponsor set sid=?,name=?,address=?,email=?,phone=? where sid="+sid;
ps = con.prepareStatement(sql);
ps.setString(1,sid);
ps.setString(2, name);
ps.setString(3,address);
ps.setString(4, email);
ps.setString(5, phone);
response.sendRedirect("sponsor.jsp");

int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
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

