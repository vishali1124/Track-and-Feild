<%-- 
    Document   : schemain
    Created on : Aug 11, 2018, 7:35:36 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
       <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
       <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>

               
        <link href="CSS/calender.css" rel="stylesheet" type="text/css"/>
        <script src="JS/calendarize.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="secmain.css" rel="stylesheet" type="text/css"/>
        
        <script src="inventory/JS/calender.js" type="text/javascript"></script>
        <link href="inventory/CSS/calender.css" rel="stylesheet" type="text/css"/>
        <title>ScheduleSecondHome</title>
        
    </head>
    <body onload="displayCalendar()">
        <div class="header">
            <img class="header_img" src="header.png" alt="" width="100%" />
            
        </div>
        <br>
        <div class="container">
		<div class="row">
                    <div class="col-md-8">
				
                                
        <div class="backbox">
            <img  class="formimg" src="images/img.png" alt="">
            <h1><center>Choose Your Task </center></h1>
            
            <center><a href="view_cal.jsp">View Calendar</a></center>
            <br/>
            <br/>
            <br/>
            <br/>
            <center><a href="add_event.jsp">Add Event To Schedule</a></center>
            <br/>
            <br/>
            <br/>
            <br/>
            <center><a href="domore.jsp">View More & Do More</a></center>
            <br/>
            
            
            <center><button><a href="userRo.jsp" class="button">Go Back</a></button></center>
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
