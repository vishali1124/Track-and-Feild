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
    ResultSet resultSet1 = null;
    ResultSet resultSet2 = null;
    ResultSet resultSet3 = null;
    ResultSet resultSet4 = null;
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Allocate Judges For Events</title>
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
            <br>
            <h1>Allocate Judges For Events</h1>
            <center>
                <form action="insertAllocated.jsp" method="post" name="allocate">
                    <table>
                        <tr>
                            <td>Event:</td>
                            <td><select name="event" required>
                                    <option value="100m">100 meters</option>
                                    <option value="200m">200 meters</option>
                                    <option value="400m">400 meters</option>
                                    <option value="800m">800 meters</option>
                                    <option value="1500m">1500 meters</option>
                                    <option value="3000m">3000 meters</option>
                                    <option value="5000m">5000 meters</option>
                                    <option value="10000m">10000 meters</option>
                                    <option value="110m Hurdles">110m Hurdles</option>
                                    <option value="400m Hurdles">400m Hurdles</option>
                                    <option value="High Jump">High Jump</option>
                                    <option value="Long Jump">Long Jump</option>
                                    <option value="Triple Jump">Triple Jump</option>
                                    <option value="Pole Vault">Pole Vault</option>
                                    <option value="Shot put">Shot put</option>
                                    <option value="Discus Throw">Discus Throw</option>
                                    <option value="Javelin Throw">Javelin Throw</option>
                                    <option value="4x100m Relay">4x100m Relay</option>
                                    <option value="4x400m Relay">4x400m Relay</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Sportmeet:</td>
                            <td>                                
                                <select name="meet">
                                    <option value="Freshers">Freshers</option>
                                    <option value="Annual">Annual</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Gender:</td>
                            <td>                                
                                <select name="gender">
                                    <option value="male">Male</option>
                                    <option value="female">Female</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Number Of Judges For The Event:</td>
                            <td><input type="number" name="njudges" required></td>
                        </tr>
                        <tr>
                            <td>Referee</td>
                            <%
                                try {
                                    connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                                    statement = connection.createStatement();
                                    String sql1 = "SELECT name FROM judges WHERE position LIKE 'Referee%'";
                                    resultSet1 = statement.executeQuery(sql1);
                                    while (resultSet1.next()) {
                            %>

                            <td><input type="checkbox" name="referee" value="<%=resultSet1.getString("name")%>"> <%=resultSet1.getString("name")%></td>
                        </tr>

                        <%
                                }
                                connection.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                        <tr>
                            <td>Judges & Umpires</td>
                            <%
                                try {
                                    connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                                    statement = connection.createStatement();
                                    String sql2 = "SELECT name FROM judges WHERE position LIKE 'judges & umpires%'";
                                    resultSet2 = statement.executeQuery(sql2);
                                    while (resultSet2.next()) {
                            %>

                            <td><input type="checkbox" name="judge&umpires" value="<%=resultSet2.getString("name")%>"> <%=resultSet2.getString("name")%></td>
                        </tr>
                        <%
                                }
                                connection.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                        <tr>
                            <td>Time Keepers</td>
                            <%
                                try {
                                    connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                                    statement = connection.createStatement();
                                    String sql3 = "SELECT name FROM judges WHERE position LIKE 'Time Keeper%'";
                                    resultSet3 = statement.executeQuery(sql3);
                                    while (resultSet3.next()) {
                            %>

                            <td><input type="checkbox" name="timeKeeper" value="<%=resultSet3.getString("name")%>"> <%=resultSet3.getString("name")%></td>
                        </tr>

                        <%
                                }
                                connection.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                        <tr>
                            <td>Start Team</td>
                            <%
                                try {
                                    connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                                    statement = connection.createStatement();
                                    String sql4 = "SELECT name FROM judges WHERE position LIKE 'Start Team%'";
                                    resultSet4 = statement.executeQuery(sql4);
                                    while (resultSet4.next()) {
                            %>

                            <td><input type="checkbox" name="startTeam" value="<%=resultSet4.getString("name")%>"> <%=resultSet4.getString("name")%></td>
                        </tr>
                        <%
                                }
                                connection.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                    </table>  
                    <input type="reset" value="Reset" id="userEdit">
                    <input type="submit" value="Submit" id="userEdit">       
                </form>
            </center>
        </div>
    </body>
</html>