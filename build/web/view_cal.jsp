<%-- 
    Document   : view_event
    Created on : Aug 11, 2018, 2:34:47 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>University of Jaffna Sports Meet Event Calendar</title>
        <link href="layout.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.4.0/fullcalendar.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.6/css/bootstrap.css" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.4.0/fullcalendar.min.js"></script>

        <script>
            $(document).ready(function () {
                $('#eventcalendar').fullCalendar({
                    header:{
                            right:'prev,today,next',
                            center:'title',
                            left:'month,agendaDay'
       },
                   
                    selectable:true,
                    selectHelper:true,
                    editable: true,
                    eventLimit: true, // allow "more" link when too many events
                    events: "CalJServlet",
                    
                });
            });
        </script>
    </head>
    <body>
        <div class="header">
            <img class="header_img" src="hp.png" alt="" />
        </div>
        <br />
            <h2 align="center" ><font color="Darkblue">Sports meet Event Calendar University Of Jaffna<img src="sche.jpg" width="10%" height="15%" align="left"/></font></h2>
            
        <div class="container">
     
            <div id="eventcalendar"></div>
        </div>
    </body>
</html>
