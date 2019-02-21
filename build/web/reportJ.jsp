
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String name = request.getParameter("userid");
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
    ResultSet resultSet_1 = null;
    ResultSet resultSet_2 = null;
    ResultSet resultSet_3 = null;
    ResultSet resultSet_4 = null;
    ResultSet resultSet_ = null;

%>
<!DOCTYPE html>
<html>
    <head>
        <title>Report</title>        
        <meta charset="UTF-8">
        <link type="text/css" rel="stylesheet" href="pika.css">
        <link type="text/css" rel="stylesheet" href="function.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>        
        <div>
            <img  src="jimages/pikz.png"  alt=""/>         
        </div>
        <div id="bodyF">
            <center>
                <br>
                <h2>Final Report(Judges Management)- Inter Faculty Track & Field Championship 2018</h2>

                <%    try {
                        connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                        statement = connection.createStatement();
                        String sql = "SELECT meet,date,location FROM invitation";
                        resultSet = statement.executeQuery(sql);
                        while (resultSet.next()) {
                %>
                <table>
                    <tr>
                        <td>Meet:</td>
                        <td><%=resultSet.getString("meet")%></td>
                    </tr>
                    <tr>
                        <td>Date:</td>
                        <td><%=resultSet.getString("date")%></td>
                    </tr>
                    <tr>
                        <td>Location:</td>
                        <td><%=resultSet.getString("location")%></td>
                    </tr>
                </table>
                <%
                        }
                        connection.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
                <br><br>

                <table>
                    <tr>
                        <td> Chief Judge : </td>
                        <%  try {
                                connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                                statement = connection.createStatement();
                                String sql_1 = "SELECT name FROM judges WHERE position LIKE '%Chief Judge%' ";
                                resultSet_1 = statement.executeQuery(sql_1);
                                while (resultSet_1.next()) {

                        %>
                        <td><%=resultSet_1.getString("name")%>&nbsp;&nbsp;&nbsp;</td>     
                        <%
                                }
                                connection.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                    </tr>

                    <tr>
                        <td>Chief Time Keeper :</td>
                        <%  try {
                                connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                                statement = connection.createStatement();
                                String sql_2 = "SELECT name FROM judges WHERE position LIKE '%Chief Time Keeper%' ";
                                resultSet_2 = statement.executeQuery(sql_2);
                                while (resultSet_2.next()) {

                        %>
                        <td><%=resultSet_2.getString("name")%>&nbsp;&nbsp;&nbsp; </td>    
                        <%
                                }
                                connection.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                    </tr>
                    <tr>
                        <td>Start Coordinator : </td>
                        <%  try {
                                connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                                statement = connection.createStatement();
                                String sql_3 = "SELECT name FROM judges WHERE position LIKE '%Start Coordinator%' ";
                                resultSet_3 = statement.executeQuery(sql_3);
                                while (resultSet_3.next()) {

                        %>
                        <td><%=resultSet_3.getString("name")%>&nbsp;&nbsp;&nbsp; </td>    
                        <%
                                }
                                connection.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                    </tr>
                    <tr>
                        <td>Call Room Chief Judge : </td>
                        <%  try {
                                connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                                statement = connection.createStatement();
                                String sql_4 = "SELECT name FROM judges WHERE position LIKE '%Call Room Chief Judge%' ";
                                resultSet_4 = statement.executeQuery(sql_4);
                                while (resultSet_4.next()) {

                        %>
                        <td><%=resultSet_4.getString("name")%>&nbsp;&nbsp;&nbsp; </td>    
                        <%
                                }
                                connection.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                    </tr>
                </table>
                <br><br>
                <table border="1">
                    <tr>
                        <th>Event</th>
                        <th>Gender</th>
                        <th>Referees</th>
                        <th>Judges & Umpires</th>
                        <th>Time Keepers</th>
                        <th>Start Team</th>
                    </tr>
                    <%
                        try {
                            connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                            statement = connection.createStatement();
                            String sql_ = "SELECT event,gender,referee,judgeUmpier,timeKeeper,startTeam FROM allocated";
                            resultSet_ = statement.executeQuery(sql_);
                            while (resultSet_.next()) {
                    %>
                    <tr>
                        <td><%=resultSet_.getString("event")%></td>
                        <td><%=resultSet_.getString("gender")%></td>
                        <td><%=resultSet_.getString("referee")%></td>
                        <td><%=resultSet_.getString("judgeUmpier")%></td>
                        <td><%=resultSet_.getString("timeKeeper")%></td>
                        <td><%=resultSet_.getString("startTeam")%></td>
                    </tr>
                    <%
                            }
                            connection.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>        
                </table> <br>
                <a href="JudgeHome.jsp">OK</a>
            </center>
        </div>
    </body>
</html>