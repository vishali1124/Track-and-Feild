<%-- 
    Document   : counting
    Created on : Sep 23, 2018, 11:03:17 AM
    Author     : User
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%--@page contentType="text/html" pageEncoding="UTF-8"--%>

<%

    String driver = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/";
    String database = "track&field";
    String userid = "root";
    String password = "";

    try {
        Class.forName(driver);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }

    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
    ResultSet resultSetTwo = null;
    PreparedStatement ps;
    String grade = null;
    int count;

%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Meet Manager Details</title>
    </head>
    <body>
    <center>
        <h1>Event Counting</h1>

        <table border="1">
            <tr>
                <td>Meet Manager ID</td>
                <td>Number of Events </td>
                <td>Grade</td>

            </tr>
            <%		
                try {
                    connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                    statement = connection.createStatement();
                    String sql = "SELECT userId,COUNT(eId) FROM mm GROUP BY userId";
                    resultSet = statement.executeQuery(sql);
                    while (resultSet.next()) {

                        count = Integer.parseInt(resultSet.getString("COUNT(eId)"));

                        if (count >= 5) {
                            grade = "A";
                        } else if (count < 5) {
                            grade = "B";
                        }

                        String sqlTwo = "INSERT INTO grading(userid, nevents, grading) VALUES (?,?,?)";
                        ps = connection.prepareStatement(sqlTwo);
                        ps.setString(1, resultSet.getString("userId"));
                        ps.setString(2, resultSet.getString("COUNT(eId)"));
                        ps.setString(3, grade);
                        ps.executeUpdate();

                    }
                   
                } catch (Exception e) {
                    e.printStackTrace();
                }

            %>
            <%		String sqlThree = "SELECT * FROM `grading`";
                resultSetTwo = statement.executeQuery(sqlThree);
                while (resultSetTwo.next()) {

            %>
            <tr>
                <td><%=resultSetTwo.getString("userid")%></td>
                <td><%=resultSetTwo.getString("nevents")%></td>
                <td><%=resultSetTwo.getString("grading")%></td>
            </tr>
            <%  }
            %>

        </table>
        <br><br><br>

    </center>
</body>
</html>