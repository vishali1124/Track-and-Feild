<%-- 
    Document   : home
    Created on : Sep 9, 2018, 8:44:14 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Management Home</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        
      
               <jsp:include page="userHome.jsp"/>
               <script src="inventory/JS/calender.js" type="text/javascript"></script>
                <link href="inventory/CSS/calender.css" rel="stylesheet" type="text/css"/>

    </head>
    <body onload="displayCalendar()">
        <div class="container">
		<div class="row">
                    <div class="col-md-8">
				<div class="jumbotron" style="width:100%; height:100%;">
                                    <div class="card-group">
                                            <div class="card" style="width: 5px; height: 300px">
                                            <img class="card-img-top" src="user.png" alt="Card image cap" style="width: 250px; height: 200px; padding-left: 50px;">
                                            <div class="card-body">
                                                <h5 class="card-title" align="center"> <a href="deleteus.jsp" class="btn btn-primary" style="width: 165px;">Manage Users</a></h5>
                                          </div>
                                        </div>
                                            
                                        <div class="card" style="margin-left: 20px;width: 5px; height: 300px">
                                          <img class="card-img-top" src="inventory.png" alt="Card image cap" style="width: 300px; height: 210px; padding-left: 50px;">
                                          <div class="card-body">
                                             <h5 class="card-title" align="center"> <a href="counting.jsp" class="btn btn-primary " style="width: 165px;">Grading</a></h5>
                                          </div>
                                        </div>
                                      </div>
                                    
                                    <br><br>
                                    <div class="card-group">
                                            <div class="card" style="width: 5px; height: 300px">
                                            <img class="card-img-top" src="rep.png" alt="Card image cap" style="width: 300px; height: 200px; padding-left: 50px;">
                                            <div class="card-body">
                                            <h5 class="card-title" align="center"> <a href="event/MMhome.jsp" class="btn btn-primary" style="width: 220px;">Meet Manger Management</a></h5>
                                          </div>
                                        </div>
                                       
                                          
                                        <div class="card" style="margin-left: 20px;width: 5px; height: 300px">
                                          <img class="card-img-top" src="searchh.ico" alt="Card image cap" style="width: 300px; height: 210px; padding-left: 50px;">
                                          <div class="card-body">
                                           <h5 class="card-title" align="center"> <a href="retNew.jsp" class="btn btn-primary" style="width: 165px;">Search & Report</a></h5>
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
                                    <a href="registration.jsp" class="btn btn-info"><i class="fa fa-user-plus">&nbsp;</i>REGISTER</a><br><br>
                                    <a href="updprofile.jsp" class="btn btn-primary"><i class="fa fa-pencil-alt">&nbsp;</i>UPDATE PROFILE</a><br><br>
                                    <a href="change.jsp" class="btn btn-primary"><i class="fa fa-pencil-alt">&nbsp;</i>CHANGE PASSWORD</a><br><br>
                                    <a href="#" name="logout" id="logout" onclick="location.href='itpLogin.jsp'" class="btn btn-primary"><i class="fas fa-sign-out-alt">&nbsp;</i>Logout</a>
			    
                            
                                    
                                    <br><br>
				  
                                    <div id="calendar">
                                
                                    </div>
                                        
                                  </div>
                                  
                                  </div>                                  
				</div>
			</div>
                </div>
        </div>
    </body>
</html>
