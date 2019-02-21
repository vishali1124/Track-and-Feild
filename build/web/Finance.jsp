<%-- 
    Document   : Finance
    Created on : Aug 9, 2018, 3:29:21 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
       <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
       <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
 <script src="inventory/JS/calender.js" type="text/javascript"></script>
        <link href="inventory/CSS/calender.css" rel="stylesheet" type="text/css"/>
               <jsp:include page="fLayout.jsp"/>
             

    </head>
    <body onload="displayCalendar()">
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
				<div class="jumbotron" style="width:100%; height:100%;">
                                    <div class="card-group">
                                            <div class="card" style="width: 5px; height: 300px">
                                            <img class="card-img-top" src="expenses.png" alt="Card image cap">
                                            <div class="card-body">
                                                <h5 class="card-title" align="center"> <a href="income.jsp" class="btn btn-primary" style="width: 165px;">Income</a></h5>
                                          </div>
                                        </div>
                                            
                                        <div class="card" style="margin-left: 20px;width: 5px; height: 300px">
                                          <img class="card-img-top" src="expenses.png" alt="Card image cap">
                                          <div class="card-body">
                                             <h5 class="card-title" align="center"> <a href="expenses.jsp" class="btn btn-primary " style="width: 165px;">Expenses</a></h5>
                                          </div>
                                        </div>
                                      </div>
                                    
                                    <br><br>
                                    <div class="card-group">
                                            <div class="card" style="width: 5px; height: 300px">
                                            <img class="card-img-top" src="expenses.png" alt="Card image cap">
                                            <div class="card-body">
                                            <h5 class="card-title" align="center"> <a href="sponsor.jsp" class="btn btn-primary" style="width: 165px;">Sponserships</a></h5>
                                          </div>
                                        </div>
                                            
                                        <div class="card" style="margin-left: 20px;width: 5px; height: 300px">
                                          <img class="card-img-top" src="expenses.png" alt="Card image cap">
                                          <div class="card-body">
                                           <h5 class="card-title" align="center"> <a href="#" class="btn btn-primary" style="width: 165px;">Profit/Deficit</a></h5>
                                           </div>
                                        </div>
                                      </div>
				</div>
			</div>
                                
                        <div class="col-md-4">
				<div class="card mx-auto" style="width: 20em; height: 51em">
				  <img class="card-img-top mx-auto" style="width:60%" src="user.png" alt="Card image cap"/>
				  <div class="card-body">
				   <h5 class="card-title">User Information</h5>
        		   <p class="card-text"><i class="fas fa-user">&nbsp;</i>${adminId}</p>
                           <p class="card-text"><i class="fas fa-user">&nbsp;</i>${adminName}</p>
			   <p class="card-text"><i class="fa fa-user-cog">&nbsp;</i>${type}</p>
			    <a href="#" name="logout" id="logout" onclick="location.href='itpLogin.jsp'" class="btn btn-primary"><i class="fas fa-sign-out-alt">&nbsp;</i>Logout</a>
			      
                            <br><br><br><br><Br>
                            
                            <div id="calendar">
                                
                            </div>
                                  </div>                                  
				</div>
			</div>
                </div>
        </div>
    </body>
</html>
