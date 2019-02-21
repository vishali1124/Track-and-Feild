<%-- 
    Document   : add_event
    Created on : Aug 9, 2018, 10:26:40 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>

<% int sid = 0; %>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field", "root", "");
    ResultSet rs = con.createStatement().executeQuery("SELECT COUNT(`sid`) FROM `schedule`");
    if (rs.next()) {
        sid = rs.getInt(1)+1;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--<link href="CSS/layout.css" rel="stylesheet" type="text/css"/>-->
        
        <link href="form.css" rel="stylesheet" type="text/css"/>
        <title>Add Schedule</title>
        
        <script type="text/javascript">
            
        </script>
    </head>
    <body>
        <div class="header">
            <img class="header_img" src="hp.png" alt="" width="100%" />
        </div>
        
         <br><br><br>
         
        
        <div class="l">
            <img  src="images/book.png" alt=""/>
        </div>
        
        <br><br><br>
         
        <div class="formbox" >
            
            <h2><center>Add Event to Schedule Plan</center></h2>
            
        
       
            <form name="add" action="event_servlet" method="POST"  align="center"  onsubmit="return addValidate()" >
            <p>Schedule ID</p>
            <input type="text" name="sid" value="<%=sid%>" readonly=""/>
            <p>Event Name</p>
            <input type="text" name="title" value="" placeholder="Enter event Name" required=""/>
            <p>Start Day</p>
            <input type="date" name="start" value="" required=""/>
            <p>End Day</p>
            <input type="date" name="end" value="" required=""/>
            <p>Location</p>
            <input type="text" name="location" value="" required=""/>
            <p>Start Time</p>
            <input type="time" name="starttime" value="" placeholder="Enter appopriate time" required=""/>
            <p>Duration</p>
            <input type="text" name="duration" value="" required=""/>
            
            
            <input type="submit" name="submit" value="Submit" >
            <a href="view_cal.jsp">View</a>
           
            
               

        </form>
                    
        
        
         <%= request.getParameter("message") %>
                   <!--<a href="viewCal.jsp">view</a>-->
        </div>
        
        
                   
    </body>
</html>
