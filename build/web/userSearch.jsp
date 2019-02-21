<%-- 
    Document   : userSearch
    Created on : Sep 26, 2018, 6:58:48 PM
    Author     : User
--%>
<%@page import ="java.sql.*" %>
<%@page import ="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="userHome.jsp"/>
        <title>Search</title>
        <style>
            table, th, td {
                border: 1px solid black;
                border-collapse: collapse;

            </style>

    </head>
    <body>
    <center>
        <br><br>
        <%
                Connection conn;
                Statement stat;
                ResultSet result = null;
                String qry;
                String value = request.getParameter("searchValue");

                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field", "root", "");
                    stat = conn.createStatement();

                   

                        qry = "SELECT userid,username,password,phone,email,type FROM userlogin WHERE userid LIKE'" + value + "%'";
                        result = stat.executeQuery(qry);

                        out.println(""
                                + "<table class='table table-hover' style='width:60%;align:center'>"
                                + "<tr>"
                                + "<th style='background-color:lightblue' colspan='6'>"
                                + "<h4 align='center'>USER DETAILS</h4>"
                                + "</tr>"
                                + "</th>"
                                + "<tr>"
                                + "<td align='center'><h5>USER ID</h5></td>"
                                + "<td align='center'><h5>USERNAME</h5></td>"
                                + "<td align='center'><h5>PASSWORD</h5></td>"
                                + "<td align='center'><h5>PHONE</h5></td>"
                                + "<td align='center'><h5>EMAIL</h5></td>"
                                + "<td align='center'><h5>TYPE</h5></td>"
                                + "</tr>");

                        while (result.next()) {
                            out.println("<tr>");
                            out.println("<td align='center'>" + result.getString("userid") + "</td>");
                            out.println("<td align='center'>" + result.getString("username") + "</td>");
                            out.println("<td align='center'>" + result.getString("password") + "</td>");
                            out.println("<td align='center'>" + result.getString("phone") + "</td>");
                            out.println("<td align='center'>" + result.getString("email") + "</td>");
                            out.println("<td align='center'>" + result.getString("type") + "</td>");
                            out.println("</tr>");
                        }

                        out.println("</table>");

                        
                        } catch (ClassNotFoundException cnfe) {
                    System.out.println("Class not found exception" + cnfe.toString());
                } catch (SQLException sqle) {
                    out.println("SQL eCXCEPTION " + sqle);
                }
            %>


    </center>
    </body>
</html>
