<%-- 
    Document   : eventUpdate
    Created on : Jul 28, 2018, 9:28:52 AM
    Author     : Erandi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Event Management</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        
        <jsp:include page="eventhome.jsp"/>
       
        <link href="../inventory/CSS/calender.css" rel="stylesheet" type="text/css"/>         
        <script src="../inventory/JS/calender.js" type="text/javascript"></script>
        
        <link rel="stylesheet" type="text/css" href="css/updateForm.css">
        
        <script type="text/javascript">
            function regValidate(){

            var name = document.forms["registerForm"]["name"].value;            

            
                if(isAlphebaticf(name))
                    if(MType())
                        if(selectEType())
                            if(maxNumber())
                                return true;
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


        function MType(){
            var listBoxSelection=document.getElementById("select_Mtype").value;
            if(listBoxSelection=="Select")
            {
                alert("Please select a field");
                return false;
            }
            else
                return true;
        }
        
        function selectEType(){
            var listBoxSelection=document.getElementById("select_Etype").value;
            if(listBoxSelection=="Select")
            {
                alert("Please select a field");
                return false;
            }
            else
                return true;
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
        
</script>
    </head>
    <body onload="displayCalendar()">
        
        
        <%
String ID = request.getParameter("ID");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "track&field";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from newevent where eId='"+ID+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

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

    <h1 align="center" style="color: darkslateblue">Update Events</h1>
    <br><br>
    
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <form method="post" action="updatePro.jsp" onsubmit="return regValidate()">
                    <table>
                        <tr>
                            <td>Event ID :</td>
                                <input type="hidden" name="ID" value="<%=resultSet.getString("eId") %>">
                            <td><input type="text" name="ID" value="<%=resultSet.getString("eId") %>"></td>
                        </tr>
                        <tr>
                            <td>Event Name :</td>
                            <td><input type="text" name="name" value="<%=resultSet.getString("eName") %>"></td>
                        </tr>
                        <tr>
                            <td>Maximum number of Participants :</td>
                            <td><input type="text" name="select_Mtype" value="<%=resultSet.getString("meetType") %>"></td>
                        </tr>
                        <tr>
                            <td>Participant type:</td>
                            <td><input type="text" name="select_Etype" value="<%=resultSet.getString("eType") %>"></td>
                        </tr>
                        <tr>
                            <td>Participant type:</td>
                            <td><input type="text" name="select_num" value="<%=resultSet.getString("maxNo") %>"></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><button type="submit" value="submit">Update</button></td>
                        </tr>
                    </table>
                </form>
                    
                    <table>
                        <br><br>
                        <td><button type="submit" name="back" align="center" onclick="location.href='eventShow.jsp">Back</button></td>
                    </table>
            </div>       
            

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

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
