<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
   String userid = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "track&field";
String user = "root";
String password = "";
session.setAttribute("user",userid);
Class.forName(driver);
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


<center><h1>Final Report & Search</h1></center>
<center>
    <form action="userSearch.jsp" method="POST">

    <input class="form-control" type="search" name="searchValue" placeholder="search user details here" aria-label="Search">
</center><br>
<center><table border="1">
<tr>
<td>User ID</td>
<td>User Name</td>
<td>Password</td>
<td>Phone Number</td>
<td>Email</td>
<td>Type</td>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, user, password);
statement=connection.createStatement();
String sql ="select * from userlogin";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
<tr>
<td><%= resultSet.getString("userid") %></td>
<td><%=resultSet.getString("username") %></td>
<td><%= resultSet.getString("password") %></td>
<td><%=resultSet.getString("phone") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("type") %></td>
</tr>
<%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
    </table>
    <br><br>
    
    
    </center>

</body>
</html>