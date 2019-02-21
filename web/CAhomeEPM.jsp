<%-- 
    Document   : CAhomeEPM
    Created on : Sep 30, 2018, 5:58:12 AM
    Author     : vishali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>CA Home EPM</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href="External/fontawesome/css/all.css" rel="stylesheet" type="text/css"/>
        <link href="External/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="External/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
     <script src="inventory/JS/calender.js" type="text/javascript"></script>
        <link href="inventory/CSS/calender.css" rel="stylesheet" type="text/css"/>
    </head>

    <body onload="displayCalendar()">
        <br/><br/>       
        <img src="pictures/mainHeader.png" width="100%">

        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="jumbotron" style="width:100%; height:100%;">
                        <div>            


                            <form action="sidSearch.jsp" method="POST">

                                <div class="col-12">
                                    <div class="row">
                                        <div class="col-7 px-0">
                                            <input class="form-control" type="search" name="searchValue" placeholder="Search" aria-label="Search">
                                        </div>
                                        <div class="col-3 pl-1 pr-1">
                                            <select class="form-control rounded-0" name="searchType">
                                                <option>Student</option>
                                                <option>Faculty</option>
                                            </select>
                                        </div>
                                        <div class="col pl-1 pr-0">
                                            <button class="btn btn-outline-success rounded-0 btn-block" type="submit">Search</button>
                                        </div>
                                    </div>
                                </div>


                            </form>


                        </div>
                        <br>

                        <div class="card-group">
                            <div class="card" style="width: 5px; height: 300px">
                                <img class="card-img-top" src="pictures/tdicon2.jpg"  alt="Card image cap"  style="width: 185px; height: 180px;margin-left: 12px; margin-top: 10px;" >
                                <div class="card-body">
                                    <h5 class="card-title" align="center"> <a href="#" class="btn btn-primary" style="width: 165px;" onclick="location.href = 'RecordsE.jsp'">Records</a></h5>
                                </div>
                            </div>
                            <div class="card" style="margin-left: 20px;width: 5px; height: 300px">
                                <img class="card-img-top" src="pictures/tdicon2.jpg" alt="Card image cap"  style="width: 185px; height: 180px; margin-left: 12px; margin-top: 10px;">
                                <div class="card-body">
                                    <h5 class="card-title" align="center"> <a href="#popup1" onclick="document.location.href = 'ResultsEPM.jsp'" class="btn btn-primary" style="width: 165px;">Results</a></h5>
                                </div>
                            </div>
                            <div class="card" style="margin-left: 20px;width: 5px; height: 300px">
                                <img class="card-img-top"  src="pictures/tdicon2.jpg"  alt="Card image cap"  style="width: 185px; height: 180px; margin-left: 12px; margin-top: 10px;">
                                <div class="card-body">
                                    <h5 class="card-title" align="center"> <a href="#" onclick="document.location.href = 'PrizeListEPM.jsp'"  class="btn btn-primary " style="width: 165px;">Prize List</a></h5>
                                </div>
                            </div>
                        </div>
                        <br><br>
                        <div class="card-group">
                            <div class="card" style="width: 5px; height: 300px">
                                <img class="card-img-top" src="pictures/tdicon2.jpg" alt="Card image cap" style="width: 185px; height: 180px; margin-left: 70px; margin-top: 10px;">
                                <div class="card-body">
                                    <h5 class="card-title" align="center"> <a href="StudentPerformance1.jsp" class="btn btn-primary" style="width: 165px;">Student Performance</a></h5>                                          </div>
                            </div>
                            <div class="card" style="margin-left: 20px;width: 5px; height: 300px">
                                <img class="card-img-top" src="pictures/tdicon2.jpg" alt="Card image cap" style="width: 185px; height: 180px; margin-left: 70px; margin-top: 10px;">
                                <div class="card-body">
                                    <h5 class="card-title" align="center"> <a href="Points.jsp" class="btn btn-primary" style="width: 165px;">Faculty Performance</a></h5>
                                </div>
                            </div>
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
                                
                            </div> </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>