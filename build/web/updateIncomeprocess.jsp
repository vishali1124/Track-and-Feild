<%-- 
    Document   : updateIncomeprocess
    Created on : Aug 11, 2018, 1:34:34 PM
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
String inid = request.getParameter("inid");
String incomeType=request.getParameter("incomeType");
String name=request.getParameter("name");
String amount=request.getParameter("amount");
String date=request.getParameter("date");

if(inid != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(inid);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update income set inid=?,incomeType=?,name=?,amount=?,date=? where inid="+inid;
ps = con.prepareStatement(sql);
ps.setString(1,inid);
ps.setString(2, incomeType);
ps.setString(3,name);
ps.setString(4, amount);
ps.setString(5, date);
response.sendRedirect("income.jsp");

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
