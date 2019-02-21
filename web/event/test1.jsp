<%-- 
    Document   : test1
    Created on : Sep 8, 2018, 7:10:28 PM
    Author     : Erandi
--%>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <% 
           String name=request.getParameter("name");
           String select_Mtype=request.getParameter("select_Mtype");
           String select_Etype=request.getParameter("select_Etype");
           String select_num=request.getParameter("select_num");
           
           String url = "jdbc:mysql://localhost:3306/track&field";
	   String user = "root";
	   String pass = "";
           Connection con = null;
           PreparedStatement ps = null;
	   
	   con = DriverManager.getConnection(url,user,pass); 
            String aaa = "INSERT INTO newevent(eName, meetType , eType, maxNo ) VALUES(?, ?, ?, ?)";
            ps = con.prepareStatement(aaa);
             ps.setString(1, name);
             ps.setString(2, select_Mtype);
             ps.setString(3, select_Etype);
             ps.setString(4, select_num);
             
            int query = ps.executeUpdate();
            out.print(query);
	   
	%>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
