<%-- 
    Document   : insertSponsor
    Created on : Aug 11, 2018, 2:39:10 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Income Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
       <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
       <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>

               <jsp:include page="fLayout.jsp"/>
               <link href="CSS/calender.css" rel="stylesheet" type="text/css"/>
              <script src="JS/calendarize.js" type="text/javascript"></script>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <br><br><br>
                 <%
        String sid = request.getParameter("sid");
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
    
    String url = "jdbc:mysql://localhost/track&field";
    String user = "root";
    String pass = "";
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(url,user,pass);
        Statement stmt = con.createStatement();
        
        int i = stmt.executeUpdate("INSERT INTO sponsor(sid,name,address,email,phone)VALUES('"+sid+"','"+name+"','"+address+"','"+email+"','"+phone+"')");
        out.println("Data Is Successfully Inserted !");
    }catch(Exception e){
        System.out.println(e);
        e.printStackTrace();
    }
%>
<h1>INSERT SPONSORS DETAILS</h1>
        <form method="post" name="insertForm"  onsubmit="">
            Sponsor Id : <input type="text" name="sid" required="required">
            <br><br><br>
            Name  : <input type="text" name="name" required="required">
            <br><br><br>
            Address      : <input type="text" name="address" required="required">
            <br><br><br>
            Email      : <input type="text" name="email" required="required">
            <br><br><br>
            Phone Number      : <input type="text" name="phone" required="required">
            <br><br><br>
            <input type="submit" name="Insert">
                      
            <br><br><br>
            <button><a href="sponsor.jsp">View Sponsors Details</a></button>
        </form>
                </div>
				<div class="card mx-auto" style="width: 20em; height: 51em">
				  <img class="card-img-top mx-auto" style="width:60%" src="user.png" alt="Card image cap"/>
				  <div class="card-body">
				    <h5 class="card-title">User Information</h5>
				    <p class="card-text"><i class="fas fa-user">&nbsp;</i>Chathurika</p>
				    <p class="card-text"><i class="fa fa-user-cog">&nbsp;</i>Meet Manager</p>
				    <a href="#" class="btn btn-primary"><i class="fa fa-pencil-alt">&nbsp;</i>Edit Profile</a>
				    <a href="includes/register.php" class="btn btn-info"><i class="fa fa-user-plus">&nbsp;</i>Register</a>
				  
                                    <br><br><br><br>
                                 
                                    <img src="calender.png" alt="calender" style="width: 250px; height: 250px;margin-left: 15px;"/>
                                  
                                  
                                  </div>                                  
				</div>
			</div>
            </div>
            </div>
    </body>
</html>


