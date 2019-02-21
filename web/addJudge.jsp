
-<%-- 
    Document   : addJudge
    Created on : Sep 30, 2018, 9:55:22 AM
    Author     : vishali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Add Judges</title>
        <meta charset="UTF-8">
        <link type="text/css" rel="stylesheet" href="pika.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
       
        <div id="body">
            <div id="leftbody">
                <center>
                    <h1>Add Judges</h1>
                    <form action="insert.jsp" method="post" name="addJudge">
                        <table>
                            <tr>
                                <td>Name</td>
                                <td>&nbsp;*<input type="text" name="name" placeholder="L.M.Nadeesh Kumara" required></td>                               
                            </tr>
                            <tr>
                                <td>City</td>
                                <td>&nbsp;*<input type="text" name="address" placeholder="Ja Ela" required></td>
                            </tr><br>
                            <tr>
                                <td>Contact Number</td>
                                <td>&nbsp;*<input type="text" name="phone" placeholder="0717696500" required></td>
                            </tr><br>
                            <tr>
                                <td>E-mail Address</td>
                                <td>&nbsp;*<input type="email" name="email" placeholder="nKumara@gmail.com" required></td>
                            </tr><br>
                            <tr>
                                <td>Place Of Work</td>
                                <td>&nbsp;*<input type="text" name="work" placeholder="Jaffna University" required></td>
                            </tr>
                            <tr>
                                <td>Designation</td>
                                <td>&nbsp;*<input type="text" name="designation" placeholder="PT Instructor" required></td>
                            </tr>
                            <tr>
                                <td>Position In The Meet</td>
                                <td>&nbsp;*<select name="position">
                                        <option value="Referee">Referee</option>
                                        <option value="Chief Judge">Chief Judge</option>
                                        <option value="Judges & Umpires">Judges & Umpires</option>
                                        <option value="Time Keeper">Time Keeper</option>
                                        <option value="Chief Time Keeper">Chief Time Keeper</option>
                                        <option value="Start Team">Start Team</option>
                                        <option value="Start Coordinator">Start Coordinator</option>
                                        <option value="Announcer">Announcer</option>
                                        <option value="Recorder">Recorder</option>
                                        <option value="Call room Judge">Call room Judge</option>
                                        <option value="Call Room Chief Judge">Call Room Chief Judge</option>
                                        <option value="Call Room Referee">Call Room Referee</option>
                                        <option value="Marshal">Marshal</option>
                                        <option value="Competition Secretary">Competition Secretary</option>
                                        <option value="Event Presentation Manager">Event Presentation Manager</option>
                                        <option value="Asst. Technical Manager">Asst. Technical Manager</option>
                                        <option value="Technical Manager">Technical Manager</option>
                                        <option value="Asst. Meeting Manager">Asst. Meeting Manager</option>
                                        <option value="Meet Manager">Meet Manager</option>
                                        <option value="Competition Director">Competition Director</option>
                                        <option value="National Technical Delegate">National Technical Delegate</option>
                                        <option value="Jury Of Appeal">Jury Of Appeal</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>Charge</td>
                                <td>&nbsp;*<input type="text" name="charge" placeholder="Rs." required></td>
                            </tr>
                        </table><br><br>
                        
                        <input type="reset" value="Reset" id="userEdit">
                        <input type="submit" value="Submit" id="userEdit">                                               
                    </form>
                </center>
            </div>
            <div id="rightbody">
                <center>
                    <br><br>
                    <img src="jimages/user1.png" alt="" id="userImg">
                    <br>
                    <h2>User Information</h2>
                     <h5 class="card-title">User Information</h5>
                            <p class="card-text"><i class="fas fa-user">&nbsp;</i>${adminId}</p>
                            <p class="card-text"><i class="fas fa-user">&nbsp;</i>${adminName}</p>
                            <p class="card-text"><i class="fa fa-user-cog">&nbsp;</i>${type}</p>
        		    
                     <a href="#" name="logout" id="logout" onclick="location.href='itpLogin.jsp'" class="btn btn-primary"><i class="fas fa-sign-out-alt">&nbsp;</i>Logout</a>
			    
                   <div id="calendar">
                                
                            </div>
                   
                </center>
            </div>
        </div>
    </body>
</html>

