<%-- 
    Document   : badd
    Created on : Aug 25, 2018, 3:34:15 PM
    Author     : lenovo
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="form.css" rel="stylesheet" type="text/css"/>
        
    </head>
    <body>
        <div class="header">
            <img class="header_img" src="hp.png" alt="" width="100%" />
        </div>
      <div class="l">
            <img  src="images/book.png" alt=""/>
        </div>
        <div class="formbox" >
            
            <h2><center>Add Booking</center></h2>
            
        
       
        <form name="badd" action="addfun.jsp" method="POST"  align="center" >
            
            <p>NIC of Client</p>
            <input type="text" name="nic" value="" placeholder="9 digits and end with V" required/>
            <p>Name of Client</p>
            <input type="text" name="name" value="" placeholder="Enter Client Name" required=""/>
            <p>Date</p>
            <input type="date" name="date" value="" required=""/>
            <p>Return Date</p>
            <input type="date" name="resdate" value="" required=""/>
            
            
            
            <input type="submit" name="submit" value="Submit" >
           
           
            
               

        </form>
                    
        
        
         
                   <!--<a href="viewCal.jsp">view</a>-->
        </div>
        
        
                   
    </body>
</html>
