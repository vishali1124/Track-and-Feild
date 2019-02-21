<%-- 
    Document   : expenses
    Created on : Aug 9, 2018, 1:42:23 PM
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
        <title>Expenses Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
       <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
       <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>

               <jsp:include page="fLayout.jsp"/>
               <link href="CSS/calender.css" rel="stylesheet" type="text/css"/>
              <script src="JS/calendarize.js" type="text/javascript"></script>
              <script type="text/javascript">
                  function formValidate(){
                                   
                      //var exid = document.getElementById('exid').value;
                      //var amount = document.getElementById('amount').value;
                    var exid = document.forms["myForms"]["exid"].value;
                    var amount = document.forms["myForms"]["amount"].value;
                   // var date = document.forms["myForms"]["date"].value;
                          
                      if(idValidation((exid, 5))
                          if(validateCurrency(amount))
                              return true;
                      else
                          return false;
                      else 
                          return false;
                      
            function idValidation(elemValue,num){
                      
            var exp = /^[0-9]+$/;

            if (!isEmpty(elemValue, "exid")) {
               if (exid.match(exp)) {
                   if (exid.length <num) {
                       return true;
                    } 
                     else {
                        alert("Enter expense ID including five characters");
                        return false;
                    }
                }
                 else
                    {
                        alert("You can use numbers only");
                        return false;
                    }
            }
             else
                    return false;
        }
                  
                  function validateCurrency(amount) {
                  var regex = /^[1-9]\d*(?:\.\d{0,2})?$/;
                  if (amount.match(regex)){
                  return true;
              }
                else{
                    alert("Please enter a valid amount");
                }
                    /*document.getElementById('p6').innerText = alertMsg;
                    inputtext.focus();*/
                    return false;
                }

    }
                  </script>
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
                    <br><br><br>
                 <%
        String exid = request.getParameter("exid");
        String description = request.getParameter("description");
        String amount = request.getParameter("amount");
        String date = request.getParameter("date");
    
    String url = "jdbc:mysql://localhost/track&field";
    String user = "root";
    String pass = "";
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(url,user,pass);
        Statement stmt = con.createStatement();
        
        int i = stmt.executeUpdate("INSERT INTO expenses(exid,description,amount,date)VALUES('"+exid+"','"+description+"','"+amount+"','"+date+"')");
        out.println("Data Is Successfully Inserted !");
    }catch(Exception e){
        System.out.println(e);
        e.printStackTrace();
    }
%>
<h1>INSERT EXPENSES DETAILS</h1>
        <form name="myForms" method="post"  onsubmit="return formValidate()">
            Expenses Id : <input type="text" name="exid" required="required">
            <br><br><br>
            Description      : <input type="text" name="description" required="required">
            <br><br><br>
            Amount      : <input type="text" name="amount" required="required">
            <br><br><br>
            Date      : <input type="date" name="date" required="required">
            <br><br><br>
            <input type="submit" name="Insert">
                      
            <br><br><br>
            <button><a href="expenses.jsp">View Expenses Details</a></button>
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
