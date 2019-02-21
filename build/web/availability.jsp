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
    ResultSet res;
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Available Judges</title>        
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
                <h1>Available Judges</h1>                
                <table border="1">
                    <tr>
                        <th>Name</th>
                        <th>Position</th>
                        <!--<th>Allocate</th>-->
                    </tr>
<%
    try{
    connection = DriverManager.getConnection(connectionUrl+database, userid, password);
    statement=connection.createStatement();
    String sql ="SELECT name,position FROM judges WHERE name NOT IN(SELECT j.name FROM judges j,allocated a WHERE j.name=a.referee OR j.name=a.judgeUmpier OR j.name=a.timeKeeper OR j.name=a.startTeam AND j.position LIKE 'referee%' OR 'judgeUmpier%' OR 'timeKeeper%' OR 'startTeam%')";
    res = statement.executeQuery(sql);
    while(res.next()){
%>
                    <tr>
                        <td><%=res.getString("name") %></td>
                        <td><%=res.getString("position") %></td>
                        <!--<td><input type="checkbox" name="judge&umpires" value="<%=res.getString("name") %>"></td>-->
                    </tr>            
<%
    }
    connection.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
                    </table>
                    <table border="0">
                        <td><a href="allocate.jsp"><button id="userEdit">ALLOCATE</button></a></td>
                        <td><a href="JudgeHome.jsp"><button id="userEdit">OK</button></a></td>
                        <br>            
                    </table>
            </center>
        </div>
    </body>
</html>