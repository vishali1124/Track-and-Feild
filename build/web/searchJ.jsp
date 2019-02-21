
<%@page import ="java.sql.*" %>
<%@page import ="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link type="text/css" rel="stylesheet" href="pika.css">
        <link type="text/css" rel="stylesheet" href="function.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <title>Search</title>
        <style>
            table, th, td {
                border: 1px solid black;
                border-collapse: collapse;

        </style>

    </head>
    <body>
        <div>
            <img  src="jimages/pikz.png"  alt=""/>         
        </div>
        <div id="bodyF">
    <center>
        <br><br>
        <%
                Connection conn;
                Statement stat;
                ResultSet result = null;
                String qry;
                String value = request.getParameter("searchName");

                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field", "root", "");
                    stat = conn.createStatement();

                   

                        qry = "SELECT * FROM judges WHERE name LIKE'" + value + "%'";
                        result = stat.executeQuery(qry);

                        out.println(""
                                + "<table class='table table-hover' style='width:60%;align:center'>"
                                + "<tr>"
                                + "<th style='background-color:lightblue' colspan='8'>"
                                + "<h4 align='center'>Judge Details</h4>"
                                + "</tr>"
                                + "</th>"
                                + "<tr>"
                                + "<td align='center'><h5>Name</h5></td>"
                                + "<td align='center'><h5>City</h5></td>"
                                + "<td align='center'><h5>Contact Number</h5></td>"
                                + "<td align='center'><h5>E-mail Address</h5></td>"
                                + "<td align='center'><h5>Place Of Work</h5></td>"
                                + "<td align='center'><h5>Designation</h5></td>"
                                +"<td align='center'><h5>Position In The Meet</h5></td>"
                                +"<td align='center'><h5>Charge</h5></td>"
                                + "</tr>");

                        while (result.next()) {
                            out.println("<tr>");
                            out.println("<td align='center'>" + result.getString("name") + "</td>");
                            out.println("<td align='center'>" + result.getString("address") + "</td>");
                            out.println("<td align='center'>" + result.getString("phone") + "</td>");
                            out.println("<td align='center'>" + result.getString("email") + "</td>");
                            out.println("<td align='center'>" + result.getString("work") + "</td>");
                            out.println("<td align='center'>" + result.getString("designation") + "</td>");
                            out.println("<td align='center'>" + result.getString("position") + "</td>");
                            out.println("<td align='center'>" + result.getString("charge") + "</td>");
                            out.println("</tr>");
                        }

                        out.println("</table>");

                        
                        } catch (ClassNotFoundException cnfe) {
                    System.out.println("Class not found exception" + cnfe.toString());
                } catch (SQLException sqle) {
                    out.println("SQL eCXCEPTION " + sqle);
                }
            %>

            </div>
    </center>
    </body>
</html>
