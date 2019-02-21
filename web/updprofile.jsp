<%-- 
    Document   : updprofile
    Created on : Aug 11, 2018, 12:39:48 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!--getting the database connection-->
<%
    String itemid = request.getParameter("userid");
    String driver = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/";
    String database = "track&field";
    String userid = "root";
    String password = "";
    session.setAttribute("userid", userid);

    try {
        Class.forName(driver);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }

    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
%>

<!DOCTYPE html>

<html>
    <head>
        <jsp:include page="userHome.jsp"/>
    </head>

    <body>

    <center><h3>UPDATE PROFILE DETAILS</h3></center>

    <center>
        <table border="1">
            <thead>
            <th>USER ID</th>
            <th>USERNAME</th>
            <th>CONTACT NO</th>
            <td></td>
            </thead>
            <tbody>

                <%
                    //getting all item details from item table
                    try {

                        connection = DriverManager.getConnection(connectionUrl + database, userid, password);

                        statement = connection.createStatement();

                        String sql = "SELECT * FROM userlogin ";

                        resultSet = statement.executeQuery(sql);

                        while (resultSet.next()) {

                %>



                <tr>
                    <td><%=resultSet.getString("userid")%></td>
                    <td><%=resultSet.getString("username")%></td>
                    <td><%=resultSet.getString("email")%></td>
                    <td>
                        <form action="viewupdateProfile.jsp" method="post">
                            <button type="submit" name="userid" value="<%=resultSet.getString("userid")%>">UPDATE</button>
                        </form>


                        <%

                                }
                                connection.close();

                            } catch (Exception e) {
                                e.printStackTrace();

                            }
                        %>
                    </td>
                </tr>
            </tbody>
        </table><br><br>
    </center>
    <center><button style="width:100px;height:50px;color: black" type="submit" name="Delete Users" onclick="location.href = 'deleteus.jsp'">Delete Users</button></center>
</body>
</html>