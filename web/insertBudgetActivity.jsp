<%-- 
    Document   : insertIncome
    Created on : Aug 11, 2018, 9:03:07 AM
    Author     : User
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Budget Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
       <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
       <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>

               <jsp:include page="Layout.jsp"/>
               <link href="CSS/calender.css" rel="stylesheet" type="text/css"/>
              <script src="JS/calendarize.js" type="text/javascript"></script>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Navbar</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="Finance.jsp">Finance Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="expenses.jsp">Expenses</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="income.jsp">Event Income</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="sponsor.jsp">Sponsors</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">profit/loss</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <br><br><br>
                 <%
        String activityId = request.getParameter("activityId");
        String activity = request.getParameter("activity");
        String amount = request.getParameter("amount");
            
    String url = "jdbc:mysql://localhost/track&field";
    String user = "root";
    String pass = "";
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(url,user,pass);
        Statement stmt = con.createStatement();
        
        int i = stmt.executeUpdate("INSERT INTO budget(activityId,activity,amount)VALUES('"+activityId+"','"+activity+"','"+amount+"')");
        out.println("Data Is Successfully Inserted !");
    }catch(Exception e){
        System.out.println(e);
        e.printStackTrace();
    }
%>
<h1>INSERT INCOME DETAILS</h1>
        <form method="post" name="insertForm"  onsubmit="">
            Activity Id : <input type="text" name="activityId" required="required">
            <br><br><br>
            Activity Description  : <input type="text" name="activity" required="required">
            <br><br><br>
            Amount      : <input type="text" name="amount" required="required">
            <br><br><br>
            <input type="submit" name="Insert">
                      
            <br><br><br>
            <button><a href="budget.jsp">View Budget Details</a></button>
        </form>
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
            </div>
    </body>
</html>

