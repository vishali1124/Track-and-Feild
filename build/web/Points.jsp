


<!DOCTYPE html>
<html>
    <head>
        <title>Points</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
         <link href="External/fontawesome/css/all.css" rel="stylesheet" type="text/css"/>
        <link href="External/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="External/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
         <script src="inventory/JS/calender.js" type="text/javascript"></script>
        
     
        <jsp:include page="Layout.jsp"/>

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
                            <img class="card-img-top" src="pictures/tdicon2.jpg" alt="Card image cap" style="width: 185px; height: 180px; margin-left: 70px; margin-top: 10px;">
                            <div class="card-body">
                                <h5 class="card-title" align="center"> <a href="PointsA.jsp" class="btn btn-primary" style="width: 165px;">Annual</a></h5>                                          </div>
                            </div>
                            <div class="card" style="margin-left: 20px;width: 5px; height: 300px">
                            <img class="card-img-top" src="pictures/tdicon2.jpg" alt="Card image cap" style="width: 185px; height: 180px; margin-left: 70px; margin-top: 10px;">
                            <div class="card-body">
                                <h5 class="card-title" align="center"> <a href="PointsF.jsp" class="btn btn-primary" style="width: 165px;">Freshers</a></h5>
                            </div>
                           </div>
                        
                        
                        
                        </div>
                        <br><br>
                        
                        
                        <div class="card-group">
                           
                            
                          
                        
                        </div>
                    
                    
                    </div>
		</div>
		<div class="col-md-4">
                    <div class="card mx-auto" style="width: 20em; height: 59em">
                        <img class="card-img-top mx-auto" style="width:70%;" src="pictures/humanicon2.jpg" alt="Card image cap">
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