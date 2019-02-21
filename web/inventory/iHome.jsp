<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% 
        String name=request.getParameter("username");
        session.setAttribute("user",name);
        name = (String)session.getAttribute("user");                        
%>

<!DOCTYPE html>
<html>
    <head>
        <title>Inventory</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        
        <jsp:include page="homeLayout.jsp"/>
        <link href="CSS/calender.css" rel="stylesheet" type="text/css"/>
        <script src="JS/calender.js" type="text/javascript"></script>
    </head>
    
    <body onload="displayCalendar()">
        <br/><br/>       
     
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="jumbotron" style="width:100%; height:100%;">
                        <div align="center">            
                            <form class="form-inline">
                                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" style="width: 580px;">
                                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                            </form>
                        </div>
                        <br>
                                    
			<div class="card-group">
                            <div class="card" style="width: 5px; height: 300px">
                                <img class="card-img-top" src="images/inventory.png"  alt="Card image cap"  style="width: 210px; height: 190px;" >
                                <div class="card-body">
                                    <h5 class="card-title" align="center"> <a href="#" class="btn btn-primary" style="width: 165px;" onclick="document.location.href='inventory.jsp'">Inventory</a></h5>
                                </div>
                            </div>
                            <div class="card" style="margin-left: 20px;width: 5px; height: 300px">
                                <img class="card-img-top" src="images/add.png" alt="Card image cap"  style="width: 185px; height: 180px; margin-left: 12px; margin-top: 10px;">
                                <div class="card-body">
                                    <h5 class="card-title" align="center"> <a href="#popup1" onclick="document.location.href='iAdd.jsp'" class="btn btn-primary" style="width: 165px;">Add Items</a></h5>
                                </div>
                            </div>
                            <div class="card" style="margin-left: 20px;width: 5px; height: 300px">
                                <img class="card-img-top"  src="images/booking.png"  alt="Card image cap"  style="width: 185px; height: 180px; margin-left: 12px; margin-top: 10px;">
                                <div class="card-body">
                                    <h5 class="card-title" align="center"> <a href="#" onclick="document.location.href='iBooking.jsp'"  class="btn btn-primary " style="width: 165px;">Booking Items</a></h5>
                                </div>
                            </div>
                        </div>
                        <br><br>
                        <div class="card-group">
                            <div class="card" style="width: 5px; height: 300px">
                            <img class="card-img-top" src="images/issue.png" alt="Card image cap" style="width: 185px; height: 180px; margin-left: 15px; margin-top: 10px;">
                            <div class="card-body">
                                <h5 class="card-title" align="center"> <a href="#" onclick="document.location.href='issuedItem.jsp'" class="btn btn-primary" style="width: 165px;">Issued Items</a></h5>                                          </div>
                            </div>
                        <div class="card" style="margin-left: 20px;width: 5px; height: 300px">
                            <img class="card-img-top" src="images/pending.png" alt="Card image cap" style="width: 210px; height: 190px; margin-left: -2px; margin-top: 0px;">
                            <div class="card-body">
                                <h5 class="card-title" align="center"> <a href="#" onclick="document.location.href='pendingItem.jsp'"   class="btn btn-primary" style="width: 165px;">Pending Items</a></h5>
                            </div>
                        </div>
                        <div class="card" style="margin-left: 20px;width: 5px; height: 300px">
                            <img class="card-img-top" src="images/report.png" alt="Card image cap" style="width: 185px; height: 180px; margin-left: 12px; margin-top: 10px;">
                            <div class="card-body">
                                <h5 class="card-title" align="center"> <a href="#" onclick="document.location.href='report.jsp'"  class="btn btn-primary" style="width: 165px;">Report</a></h5>
                            </div>
                        </div>                                   </div>
                    </div>
		</div>
		<div class="col-md-4">
                    <div class="card mx-auto" style="width: 20em; height: 59em">
                        <img class="card-img-top mx-auto" style="width:60%" src="images/user.png" alt="Card image cap">
			<div class="card-body">
			    <h5 class="card-title">User Information</h5>
                            <p class="card-text"><i class="fas fa-user">&nbsp;</i>${adminId}</p>
                            <p class="card-text"><i class="fas fa-user">&nbsp;</i>${adminName}</p>
                            <p class="card-text"><i class="fa fa-user-cog">&nbsp;</i>${type}</p>
        		    
                            <a href="#" name="logout" id="logout" onclick="location.href='../itpLogin.jsp'" class="btn btn-primary"><i class="fas fa-sign-out-alt">&nbsp;</i>Logout</a>
			    
                            
                            
                            <br><br><br><br><Br><br>
                            
                            <div id="calendar">
                                
                            </div>
                                 
                        </div>
                    </div>
                </div>
            </div>
	</div>
    </body>
</html>
