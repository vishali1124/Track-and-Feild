<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String name = request.getParameter("name");
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
        <title>Update Judges</title>
    </head>
    <body>
    <center>
        <h1>Update Judges</h1>
    </center>
<%
    try{
        connection = DriverManager.getConnection(connectionUrl+database, userid, password);
        statement=connection.createStatement();
        String sql ="select * from judges";
        resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
%>
    <form method="post" action="updateProJ.jsp" name="updateForm">
            <input type="hidden" name="id" value="<%=resultSet.getString("name") %>">            
            <table border="0">
            <tr>
                <th>Name</th>
                <th>City</th>
                <th>Contact Number</th>
                <th>E-mail</th>
                <th>Place Of Work</th>
                <th>Designation</th>
                <th>Position In The Meet</th>
                <th>Charge</th>
                <th>Action</th>
            </tr>
            <tr>
                <td><input name="name" type="text" value="<%=resultSet.getString("name") %>"></td>
                <td><input type="text" name="address" value="<%=resultSet.getString("address") %>"></td>
                <td><input type="text" name="phone" value="<%=resultSet.getString("phone") %>"></td>
                <td><input type="email" name="email" value="<%=resultSet.getString("email") %>"></td>
                <td><input type="text" name="work" value="<%=resultSet.getString("work") %>"></td>
                <td><input type="text" name="designation" value="<%=resultSet.getString("designation") %>"></td>
                <td><input type="text" name="position" value="<%=resultSet.getString("position") %>"></td>
                <td><input type="text" name="charge" value="<%=resultSet.getString("charge") %>"></td>
                <td><input type="submit" value="Update"></td>
            </tr>            
        </form>
<%
    }
    connection.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
    </body>
</html>