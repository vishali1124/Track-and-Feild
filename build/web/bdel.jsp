<%-- 
    Document   : bdel
    Created on : Aug 25, 2018, 3:24:58 PM
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
String nic=request.getParameter("nic");
session.setAttribute("user",nic);
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM ground where nic='"+nic+"'");
out.println("Data Deleted Successfully!");
response.sendRedirect("book1.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<!DOCTYPE html>


