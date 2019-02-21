<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>



<!DOCTYPE html>
<html>
    <head
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Event Management</title>
        
        <link rel="stylesheet" type="text/css" href="css/forms.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        
        <jsp:include page="eventhome.jsp"/>
        
        <link href="../inventory/CSS/calender.css" rel="stylesheet" type="text/css"/>         
        <script src="../inventory/JS/calender.js" type="text/javascript"></script>
        
        <script type="text/javascript">
            function regValidate(){

            var ID = document.forms["registerForm"]["ID"].value;
            var name = document.forms["registerForm"]["name"].value;
            var MID = document.forms["registerForm"]["MID"].value;
            

            if(idValidation(ID, 5))
                if(isAlphebaticf(name))
                    if(maxNumber())
                        if(selectType())
                            if(MidValidation(MID, 5))
                                return true;
                            else
                                return false;
                        else
                            return false;
                    else
                        return false;
                else
                    return false;
            else
                return false;

        }


        function isEmpty(elemValue, field){
            if(elemValue ==""  || elemValue == null){
                alert("You cannot have " + field + " field empty");
                return true;
            }
            else
                return false;
        }
        
        
        function idValidation(elemValue,num){
            var exp = /^[0-9a-zA-Z]+$/;

            if (!isEmpty(elemValue, "ID")) {
                if (elemValue.match(exp)) {
                    if (elemValue.length == num) {
                        return true;
                    }
                    else {
                        alert("Enter event ID including five characters");
                        return false;
                    }
                }
                else
                    {
                        alert("You can use numbers and letters only");
                        return false;
                    }
                }

                else
                    return false;
            }


        function isAlphebaticf(elemValue){
            var exp = /^[0-9a-zA-Z]+$/;
            if(!isEmpty(elemValue, "Name"))
            {
                if(elemValue.match(exp))
                {
                    return true;
                }
                else
                {
                    alert("Enter only numbers and letters for Event Name");
                    return false;
                }
            }
            else
                return false;
        }


        function maxNumber(){
            var listBoxSelection=document.getElementById("select_num").value;
            if(listBoxSelection=="Select")
            {
                alert("Please select a field");
                return false;
            }
            else
                return true;
        }

        
        function selectType(){
            var listBoxSelection=document.getElementById("select_type").value;
            if(listBoxSelection=="Select")
            {
                alert("Please select a field");
                return false;
            }
            else
                return true;
        }
        
        function MidValidation(elemValue,num){
            var exp = /^[0-9a-zA-Z]+$/;

            if (!isEmpty(elemValue, "MID")) {
                if (elemValue.match(exp)) {
                    if (elemValue.length == num) {
                        return true;
                    }
                    else {
                        alert("Enter Meet Manager ID including five characters");
                        return false;
                    }
                }
                else
                    {
                        alert("You can use numbers and letters only");
                        return false;
                    }
                }

                else
                    return false;
            }




        </script>
    </head>
    
    <body onload="displayCalendar()">
        
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Navbar</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="events.jsp">Event Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="eventForm.jsp">Add Events</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="eventShow.jsp">Update Events</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Event Chart</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="MMhome.jsp">Meet Manager</a>
                    </li>
                </ul>
            </div>
        </nav>
        
        <br><br><br><br><br>
       
        <div class="container">
            <div class="row">
                <div class="col-md-8">
            
                    <h1 style="color: darkslateblue" align="center">Event Registration Form</h1>
            
                    <form name="registerForm" action="eventAdd.jsp" method="post" onsubmit="return regValidate()" >
                        <table align="center">
                            <tr>
                                <td>Event ID :</td>
                                <td><input type="text" name="ID"></td>
                            </tr>
                            <tr>
                                <td>Event Name :</td>
                                <td><input type="text" name="name" ></td>
                            </tr>
                            <tr>
                                <td>Maximum number of students :</td>
                                <td><select id="select_num" name="select_num">
                                    <option value="Select">Select</option>
                                    <option>10</option>
                                    <option>20</option>
                                    <option>30</option>
                                    <option>40</option>
                                    </select> 
                                </td>
                            </tr>
                            <tr>
                                <td>Event Type :</td>
                                <td><select id="select_type" name="select_type">
                                    <option value="Select">Select</option>
                                    <option>Male</option>
                                    <option>Female</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>Meet Manager ID :</td>
                                <td><input type="text" name="MID"></td>
                            </tr>                            
                            <tr>
                                <td><button  type="submit" name="submit">Submit</button></td>
                                <td><button  type="reset" name="">Reset</button></td>                        
                            </tr>
                        </table>
                    </form>
                </div>
        
                <div class="col-md-4">
                    <div class="card mx-auto" style="width: 20em; height: 51em">
                        <img class="card-img-top mx-auto" style="width:60%" src="pics/user.png" alt="Card image cap"/>
                        <div class="card-body">
                             <h5 class="card-title">User Information</h5>
                            <p class="card-text"><i class="fas fa-user">&nbsp;</i>${adminId}</p>
                            <p class="card-text"><i class="fas fa-user">&nbsp;</i>${adminName}</p>
                            <p class="card-text"><i class="fa fa-user-cog">&nbsp;</i>${type}</p>
        		    
                            <a href="#" name="logout" id="logout" onclick="location.href='../itpLogin.jsp'" class="btn btn-primary"><i class="fas fa-sign-out-alt">&nbsp;</i>Logout</a>
			    
                            
                            
                            <br><br><br><br>
                            
                            
                            <div id="calendar">
                                
                            </div> </div>                                  
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>