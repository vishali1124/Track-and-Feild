
<%@page import="java.sql.SQLException"%>
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
%>
<!DOCTYPE html>
<html>
    <head>
        <title>View Judges</title>        
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

            <h1>Judges</h1>

            <form  action="searchJ.jsp" method="post" name="searchForm">      
                <input type="search"  name="searchName" placeholder="Enter Judge Name" aria-lable="Search">
                  
            </form>   
            <br>

            

            <center> 
                <table border="1">
                    <tr>
                        <th>Name</th>
                        <th>City</th>
                        <th>Contact Number</th>
                        <th>E-mail</th>
                        <th>Place Of Work</th>
                        <th>Designation</th>
                        <th>Position In The Meet</th>
                        <th>Charge</th>
                    </tr>
                    <%
                        try {
                            connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                            statement = connection.createStatement();
                            String sql ="SELECT * FROM judges";
                            resultSet = statement.executeQuery(sql);
                            while (resultSet.next()) {
                    %>
                    <tr>
                        <td><%=resultSet.getString("name")%></td>
                        <td><%=resultSet.getString("address")%></td>
                        <td><%=resultSet.getString("phone")%></td>
                        <td><%=resultSet.getString("email")%></td>
                        <td><%=resultSet.getString("work")%></td>
                        <td><%=resultSet.getString("designation")%></td>
                        <td><%=resultSet.getString("position")%></td>
                        <td><%=resultSet.getString("charge")%></td>
                    </tr>
                    <%
                            }
                            connection.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                </table> <br><br><br><br><br><br><br>
                <a href="JudgeHome.jsp"><button>OK</button></a>
            </center>
        </div>
    </body>
</html>