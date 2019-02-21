
<%@page import ="java.sql.*" %>
<%@page import ="java.util.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="External/fontawesome/css/all.css" rel="stylesheet" type="text/css"/>
        <link href="External/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="External/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>

        <title>Student Performance 2</title>

        <style>
            table, th, td {
                border: 1px solid black;
                border-collapse: collapse;

            </style>
            <jsp:include page="Layout.jsp"/>

        </head>
        <body>

            <h2 align="center">
                INTER FACULTY TRACK & FIELD CHAMPIONSHIP
            </h2>


            <%
                Connection conn;
                Statement stat;
                ResultSet result = null;
                String qry;
                String searchType = request.getParameter("searchType");
                String value = request.getParameter("searchValue");

                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field", "root", "");
                    stat = conn.createStatement();

                    if (searchType.equals("Student")) {

                        qry = "SELECT sid,sname,faculty, SUM(points) FROM placesaf WHERE sid LIKE'" + value + "%' GROUP BY sid,sname";
                        result = stat.executeQuery(qry);

                        out.println(""
                                + "<table class='table table-hover' style='width:100%;align:center'>"
                                + "<tr>"
                                + "<th style='background-color:lightblue' colspan='4'>"
                                + "<h3 align='center'>STUDENT DETAILS</h3>"
                                + "</tr>"
                                + "</th>"
                                + "<tr>"
                                + "<td align='center'><h4>ID</h4></td>"
                                + "<td align='center'><h4>Name</h4></td>"
                                + "<td align='center'><h4>Faculty</h4></td>"
                                + "<td align='center'><h4>Total Points</h4></td>"
                                + "</tr>");

                        while (result.next()) {
                            out.println("<tr>");
                            out.println("<td align='center'>" + result.getString("sid") + "</td>");
                            out.println("<td align='center'>" + result.getString("sname") + "</td>");
                            out.println("<td align='center'>" + result.getString("faculty") + "</td>");
                            out.println("<td align='center'>" + result.getString("SUM(points)") + "</td>");
                            out.println("</tr>");
                        }

                        out.println("</table>");

                    } else if (searchType.equals("Faculty")) {

                        qry = "SELECT faculty, SUM(points) FROM placesaf WHERE faculty LIKE'" + value + "%' GROUP BY faculty";
                        result = stat.executeQuery(qry);

                        out.println(""
                                + "<table class='table table-hover' style='width:100%;align:center'>"
                                + "<tr> <th style='background-color:lightblue' colspan='6'>"
                                + "<h3 align='center'>FACULTY DETAILS</h3>"
                                + "</tr>"
                                + "</th>"
                                + "<tr>"
                                + "<td align='center'><h4>Faculty</h4></td>"
                                + "<td align='center'><h4>Total Points</h4></td>"
                                + "</tr>");

                        while (result.next()) {
                            out.print("<tr>");
                            out.println("<td align='center'>" + result.getString("faculty") + "</td>");
                            out.println("<td align='center'>" + result.getString("SUM(points)") + "</td>");
                            out.println("</tr>");

                        }

                        out.println("</table>");

                    }

                } catch (ClassNotFoundException cnfe) {
                    System.out.println("Class not found exception" + cnfe.toString());
                } catch (SQLException sqle) {
                    out.println("SQL eCXCEPTION " + sqle);
                }
            %>

        </body>
    </html>
