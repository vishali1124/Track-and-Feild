<%-- 
    Document   : del
    Created on : Aug 11, 2018, 11:53:51 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<% String driverName="com.mysql.jdbc.Driver";%>
<% String url="jdbc:mysql://localhost:3306/";%>
 <%String database = "track&field";%>
<% String user="root";%>
<%String psw="";%>
<%
String sid=request.getParameter("sid");
session.setAttribute("user",sid);
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM schedule where sid='"+sid+"'");
out.println("Data Deleted Successfully!");
response.sendRedirect("domore.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<!DOCTYPE html>

