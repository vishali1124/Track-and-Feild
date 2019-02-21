<%-- 
    Document   : updateprocess
    Created on : Aug 10, 2018, 6:44:39 PM
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
String exid = request.getParameter("exid");
String description=request.getParameter("description");
String amount=request.getParameter("amount");
String date=request.getParameter("date");

if(exid != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(exid);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update expenses set exid=?,description=?,amount=?,date=? where exid="+exid;
ps = con.prepareStatement(sql);
ps.setString(1,exid);
ps.setString(2, description);
ps.setString(3, amount);
ps.setString(4, date);
response.sendRedirect("expenses.jsp");

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
