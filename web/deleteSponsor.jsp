<%-- 
    Document   : deleteSponsor
    Created on : Aug 11, 2018, 5:15:00 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*,java.util.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
<%
String sid=request.getParameter("sid");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM sponsor WHERE sid="+sid);
out.println("Data Deleted Successfully!");
response.sendRedirect("sponsor.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
    </body>
</html>

