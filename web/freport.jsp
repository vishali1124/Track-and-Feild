<%-- 
    Document   : report
    Created on : Sep 29, 2018, 12:08:26 AM
    Author     : User
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<jsp:include page="fLayout.jsp"/>
<%
    String exid = request.getParameter("meetid");
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
    <center><h1>Final Report (Finance Management)- Inter Faculty Track & Field Championship-2018</h1></center>

    <br><br><br>

    <center><table class="table table-bordered" style="width: 70%" >


            <!-- On cells (`td` or `th`) -->
            <tr>
                <td class="table-active"><h4>Meeet ID</h4></td>

                <td class="table-primary"><h4>Total Amount of Income</h4></td>
                <td class="table-danger"><h4>Total Amount of Expenses</h4></td>
                <td class="table-success"><h4>Profit or Loss</h4></td>


            </tr>
            <%
                try {
                    connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                    statement = connection.createStatement();
                    String sql = "select * from meet";
                    resultSet = statement.executeQuery(sql);
                    while (resultSet.next()) {
            %>
            <tr>
                <td class="table-active"><h5><%=resultSet.getString("meetid")%></h5></td>

                <td class="table-primary"><h5><%=resultSet.getString("totalIncome")%></h5></td>
                <td class="table-danger"><h5><%=resultSet.getString("totalExpenses")%></h5></td>
                <td class="table-success"><h5><%=resultSet.getString("balance")%></h5></td>

            </tr>
            <%
                    }
                    connection.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
        </table></center>
    <br><br>
    <center><div>
            <h3>EVENT INCOME DETAILS</h3>
            <table style="width: 50%" border="1">
                <tr class="table-info">
                <b>
                    <td ><b>Income Type</b></td>
                    <td><b>Name </b></td>
                    <td><b>Amount</b></td>
                    <td><b>Date</b></td>
                </b>
                </tr>
                <%
                    try {
                        connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                        statement = connection.createStatement();
                        String sql = "select * from income";
                        resultSet = statement.executeQuery(sql);
                        while (resultSet.next()) {
                %>
                <tr class="table-active">

                    <td><%=resultSet.getString("incomeType")%></td>
                    <td><%=resultSet.getString("name")%></td>
                    <td><%=resultSet.getString("amount")%></td>
                    <td><%=resultSet.getString("date")%></td>
                </tr>


                <%
                        }
                        connection.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>


            </table></div></center>
    <br><br>
    <center><div>
            <h3>EVENT EXPENSE DETAILS</h3>
            <table style="width: 50%" border="1">
                <tr class="table-info">
                    <td><b>Description </b></td>
                    <td><b>amount</b></td>
                    <td><b>date</b></td>
                </tr>
                <%
                    try {
                        connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                        statement = connection.createStatement();
                        String sql = "select * from expenses";
                        resultSet = statement.executeQuery(sql);
                        while (resultSet.next()) {
                %>
                <tr class="table-active">
                    <td><%=resultSet.getString("description")%></td>
                    <td><%=resultSet.getString("amount")%></td>
                    <td><%=resultSet.getString("date")%></td>
                </tr>


                <%
                        }
                        connection.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>

            </table></div></center>

    <br><br>
    <center><div>
            <h3>ALLOWANCES FOR MEET MANAGERS</h3>
            <table style="width: 50%" border="1">
                <tr class="table-info">
                    <td><b>ID of Meet Manager </b></td>
                    <td><b>No of Events</b></td>
                    <td><b>Grade</b></td>
                    <td><b>Allowance</b></td>
                </tr>
                <%
                    try {
                        connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                        statement = connection.createStatement();
                        String sql = "select * from grading";
                        resultSet = statement.executeQuery(sql);
                        while (resultSet.next()) {
                %>
                <tr class="table-active">
                    <td><%=resultSet.getString("userid")%></td>
                    <td><%=resultSet.getString("nevents")%></td>
                    <td><%=resultSet.getString("grading")%></td>
                    <td><%=resultSet.getString("allowance")%></td>
                </tr>


                <%
                        }
                        connection.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>

            </table></div></center>
</body>
</html>
