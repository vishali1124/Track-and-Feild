<%-- 
    Document   : uppro
    Created on : Aug 25, 2018, 7:14:32 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
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
String nic = request.getParameter("nic");
String name=request.getParameter("name");
String date=request.getParameter("date");
String resdate=request.getParameter("resdate");

if(nic != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(nic);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update schedule set nic=?,name=?,date=?,resdate=? where nic="+nic;
ps = con.prepareStatement(sql);
ps.setString(1,nic);
ps.setString(2, name);
ps.setString(3, date);
ps.setString(4, resdate);

response.sendRedirect("book1.jsp");

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
