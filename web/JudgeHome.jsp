<!DOCTYPE html>
<html>
    <head>
        <title>Judges Management</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" charset="UTF-8">        
        <link type="text/css" rel="stylesheet" href="pika.css">
        <link type="text/css" rel="stylesheet" href="function.css">
        <link href="inventory/CSS/calender.css" rel="stylesheet" type="text/css"/>
        <script src="inventory/JS/calender.js" type="text/javascript"></script>
        </head>
    <body onload="displayCalendar()" >
        <div>
           <img  src="jimages/pikz.png"  alt=""/>            
        
        </div>
        <div id="body">
            <div id="leftbody">
                <table>
                    <br>
                  
                    <tr>
                        <td>&nbsp;</td>
                        <td><a href="retrieve.jsp"><img src="jimages/view1.png" alt="" id="viewImg"></a></td>
                        <td>&nbsp;&nbsp;&nbsp;</td>
                        <td><a href="addJudge.jsp"><img src="jimages/add.jpg" alt="" id="addImg"></a></td>
                        <td>&nbsp;&nbsp;&nbsp;</td>
                        <td><a href="updateJ.jsp"><img src="jimages/update.jpg" alt="" id="updateImg"></a></td>
                        <td>&nbsp;&nbsp;&nbsp;</td>
                        <td><a href="deleteProJ.jsp"><img src="jimages/delete.jpg" alt="" id="deleteImg"></a></td>
                        <td>&nbsp;</td>
                    </tr>
                    <br>
                    <tr>
                        <td>&nbsp;</td>
                        <td><a href="invitation.html"><img src="jimages/invite.png" alt="" id="inviteImg"></a></td>
                        <td>&nbsp;&nbsp;&nbsp;</td>
                        <td><a href="availability.jsp"><img src="jimages/available.jpg" alt="" id="availableImg"></a></td>
                        <td>&nbsp;&nbsp;&nbsp;</td>
                        <td><a href="retrieveAllocated.jsp"><img src="jimages/allocate.png" alt="" id="allocateImg"></a></td>
                        <td>&nbsp;&nbsp;&nbsp;</td>
                        <td><a href="reportJ.jsp"><img src="jimages/report1.jpg" alt="" id="reportImg"></a></td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </div>
            <div id="rightbody">
                <center>
                    <img src="jimages/user1.png" alt="" id="userImg">
                  
                    <h2>User Information</h2>
                     <h5 class="card-title">User Information</h5>
                            <p class="card-text"><i class="fas fa-user">&nbsp;</i>${adminId}</p>
                            <p class="card-text"><i class="fas fa-user">&nbsp;</i>${adminName}</p>
                            <p class="card-text"><i class="fa fa-user-cog">&nbsp;</i>${type}</p>
        		    
                     <a href="#" name="logout" id="logout" onclick="location.href='../HomeTrackAndField.html'" class="btn btn-primary"><i class="fas fa-sign-out-alt">&nbsp;</i>Logout</a>
			    
                   <div id="calendar">
                                
                            </div>
                    <a href="jsp/DBconnection.jsp">DB connetion</a> 
                    <!--<a href="pika.jsp">pika</a>-->
                </center>
            </div>
        </div>
    </body>
</html>
