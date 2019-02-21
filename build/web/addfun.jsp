<%-- 
    Document   : addfun
    Created on : Aug 25, 2018, 3:47:21 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String nic=request.getParameter("nic");
String name=request.getParameter("name");
String date=request.getParameter("date");
String resdate=request.getParameter("resdate");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into ground(nic,name,date,resdate)values('"+nic+"','"+name+"','"+date+"','"+ resdate+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>