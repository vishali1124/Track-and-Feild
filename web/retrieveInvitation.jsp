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
        <title>Created Invitation</title>        
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
        <h1>~Invitation~</h1>
<%
    try{
    connection = DriverManager.getConnection(connectionUrl+database, userid, password);
    statement=connection.createStatement();
    String sql ="SELECT * FROM invitation";
    resultSet = statement.executeQuery(sql);
    while(resultSet.next()){
%>
    <center>
        <h4>
            <%=resultSet.getString("meet") %><br><br>
        
            Will be held <br><br>
        
            <table border="0">
                <tr>
                    <td>ON</td>
                    <td><%=resultSet.getString("date") %></td>
                </tr>
                <tr>
                    <td>AT</td>
                    <td><%=resultSet.getString("time") %></td>
                </tr>
                <tr>
                    <td>AT</td>
                    <td><%=resultSet.getString("location") %></td>
                </tr>
            </table><br>
            You are invited to the sportsmeet as a member of judge panel.<br><br>

            If you are unable to attend please contact us :- 0713445566<br><br>

            Thank You.<br>
        </h4>
                <form action="EmailSendServlet" method="POST">
                    <input type="text" name="invitation" value="<%=resultSet.getString("meet") %>">
                    <!--<a href="JudgeHome.html"><button id="userEdit">SEND INVITATION</button></a>-->
                    <button type="submit">Invite</button>
                </form>
                
    </center>
<%
    }
    connection.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
        </div>
    </body>
</html>
