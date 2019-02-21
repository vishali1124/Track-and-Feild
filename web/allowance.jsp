<%-- 
    Document   : allowance
    Created on : Sep 28, 2018, 3:56:35 PM
    Author     : User
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script><!DOCTYPE html>
<jsp:include page="fLayout.jsp"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Home</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="Finance.jsp">Finance Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="income.jsp">Event Income</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="expenses.jsp">Event Expenses</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="sponsor.jsp">Sponsors</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="profit.jsp">profit/loss</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="freport.jsp">Reports</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="container">
            <div class="row">
                <div class="col-md-8">

                    <h1>Allowances for Meet Managers (According to Gradings)</h1>

                    <%

                        String driver = "com.mysql.jdbc.Driver";
                        String connectionUrl = "jdbc:mysql://localhost/";
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

                    <br> <%=(request.getAttribute("m") == null) ? "" : request.getAttribute("m")%></b>


                    <center>
                    <form action="search" method="post">
                        <table style="padding: 5%">
                            <tr>
                                <td>ID</td>
                                <td><input type="text" name="id" ></td>
                            <input type="hidden" name="balance" value="<%=request.getAttribute("balance")%>"/>
                            <td><input type="submit" value="search"></td>
                            </tr>

                        </table>
                    </form>
                    </center>


                <%
                    try {
                        connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                        statement = connection.createStatement();
                        String sql = "select * from grading where userid= '" + request.getAttribute("id") + "'";
                        resultSet = statement.executeQuery(sql);
                        while (resultSet.next()) {
                %>
                
                <br><br>
                <div class="p-3 mb-2 bg-info text-white" ><tr><h4>ID of Meet Manager :
                        <td><%=resultSet.getString("userid")%></td></h4><br><br></tr></div>
                <div class="p-3 mb-2 bg-secondary text-white" ><tr><h4>Grade :
                        <td><%=resultSet.getString("grading")%></td></h4><br><br></tr></div>
                <div class="p-3 mb-2 bg-warning text-dark" ><tr><h4>Allowance :Rs.
                        <td><%=resultSet.getString("allowance")%></td></h4><br><br></tr></div><br><br>
                <div ><tr><h4><a href="freport.jsp">Click here to Final Report</a>
                        </h4><br><br</tr></div>


                <%
                        }
                        connection.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>

                </div>

               
                
                <div class="card mx-auto" style="width: 20em; height: 51em">
                    <img class="card-img-top mx-auto" style="width:60%" src="user.png" alt="Card image cap"/>
                    <div class="card-body">
                        <h5 class="card-title">User Information</h5>
                        <p class="card-text"><i class="fas fa-user">&nbsp;</i>Chathurika</p>
                        <p class="card-text"><i class="fa fa-user-cog">&nbsp;</i>Meet Manager</p>
                        <a href="#" class="btn btn-primary"><i class="fa fa-pencil-alt">&nbsp;</i>Edit Profile</a>
                        <a href="includes/register.php" class="btn btn-info"><i class="fa fa-user-plus">&nbsp;</i>Register</a>

                        <br><br><br><br>

                        <img src="calender.png" alt="calender" style="width: 250px; height: 250px;margin-left: 15px;"/>


                    </div>                                  
                </div>
            </div>
        </div>











    </body>
</html>
