<%-- 
    Document   : delete
    Created on : Aug 10, 2018, 7:41:54 PM
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
String exid=request.getParameter("exid");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM expenses WHERE exid="+exid);
out.println("Data Deleted Successfully!");
response.sendRedirect("expenses.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
    </body>
</html>
