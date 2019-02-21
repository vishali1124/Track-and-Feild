
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<%@page import ="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="External/fontawesome/css/all.css" rel="stylesheet" type="text/css"/>
        <link href="External/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="External/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <title>Place the Students - event declaration</title>
        
       
      
        <style>
            .A{
                height: 700px;
                width: 100%;
                
            }
            
            thbody{
                text-color:white;
            }
        </style>
        
        
        
         <script type="text/javascript">
            function regValidate(){


            var ename = document.forms["addForm"]["ename"].value;
            var type = document.forms["addForm"]["type"].value;
            var gender = document.forms["addForm"]["gender"].value;
            var date = document.forms["addForm"]["date"].value;
            var etype = document.forms["addForm"]["etype"].value;
            
           
            var d = new Date(date);
            var cur_date = new Date();
            
            
            if (ename == "Select") {
                alert("Please select an event");
                return false;
            }
            else if (etype == "Select") {
                alert("Please select an event type");
                return false;
            }
            else if (type == "Select") {
                alert("Please select a sportsmeet");
                return false;
            }
            else if (gender === ""){
                alert("Please select a gender");
                return false;
            }
            else if (date == "") {
                alert("Please select a date");
                return false;
            }
            else if (d.getTime() > cur_date.getTime()) {
                alert("Please enter a valid date");
                return false;
            }
            else
                return false;
            }
            
      
        </script>
        
        
       <jsp:include page="LayoutR.jsp"/>

    </head>
    <body>
        <%!
            Connection conn;
            PreparedStatement pstmt;
            String qry;           
            Integer eid;
        %>
        <%
            if(request.getParameter("btnAdd")!=null){
                try{
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field","root","");
                qry="INSERT INTO placeaf(eid,ename,type,etype,gender,date) VALUES (?,?,?,?,?,?)";
                pstmt= conn.prepareStatement(qry);
                pstmt.setString(1, request.getParameter("eid"));
                pstmt.setString(2, request.getParameter("ename"));

                pstmt.setString(3, request.getParameter("type"));
                pstmt.setString(4, request.getParameter("etype"));

                pstmt.setString(5, request.getParameter("gender"));
                pstmt.setString(6, request.getParameter("date"));


                pstmt.executeUpdate();
                
                response.sendRedirect("./PlaceTheStudents1.jsp");
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
            }
        %>
   
        
        <div>
   
  <section class="A">
         
                
        <h1 align="center">INSERT EVENT DETAILS</h1>
        
        <br><br>
        <div class='container' style="width:50%">
        <form id="addForm" action="PlaceTheStudents.jsp"  method="POST" name="" onsubmit="return regValidate()">
             
            <div class="form-group">

           
                <label for="ename"><b>Event Name:</b></label>
                         
                        <select class="form-control" id = "ename" name="ename">
                             <option value = "Select" name="ename">Select</option>

                            <option value = "100m" name="ename">100m</option>
                            <option value = "200m" name="ename">200m</option>
                            <option value = "400m" name="ename">400m</option>
                            <option value = "800m" name="ename">800m</option>
                            <option value = "1500m" name="ename">1500m</option>
                            <option value = "3000m" name="ename">3000m</option>
                            <option value = "5000m" name="ename">5000m</option>
                            <option value = "10000m" name="ename">10000m</option>
                            <option value = "110mHurdles" name="ename">110mHurdles</option>
                            <option value = "4X100Relay" name="ename">4 X 100 Relay</option>
                            <option value = "4X400Relay" name="ename">4 X 400 Relay</option>
                            <option value = "400mHurdles" name="ename">400mHurdles</option>
                            <option value = "HighJump" name="ename">HighJump</option>
                            <option value = "LongJump" name="ename">LongJump</option>
                            <option value = "TripleJump" name="ename">TripleJump</option>
                            <option value = "PoleVault" name="ename">PoleVault</option>
                            <option value = "ShotPut" name="ename">ShotPut</option>
                            <option value = "DiscusThrow" name="ename">DiscusThrow</option>
                            <option value = "JavellinThrow" name="ename">JavellinThrow</option>
                         </select>
                       
                 </div>

                 <div class="form-group">

                    
                     <label for="type"><b>SportsMeet Type:</b></label>
                    
                       <select class="form-control" id = "type" name="type">
                             <option value = "Select" name="type">Select</option>

                            <option value = "Annual" name="type">Annual</option>
                            <option value = "freshers" name="type">Freshers</option>
                        </select>

                 </div>
                    
                  <div class="form-group">
                      <label for="etype"><b>Event Type:</b></label>
                    
                        
                        
                       <select class="form-control" id = "etype" name="etype">
                             <option value = "Select" name="etype">Select</option>

                            <option value = "track" name="etype">Track</option>
                            <option value = "field" name="etype">Field</option>
                            <option value = "relay" name="etype">Relay</option>

                        </select>


                    
                  </div>
                   
            
                  <div class="form-group">

                      <label for="gender"><b>Gender:</b></label>
                     
                     <div class="radio">
                    <input type="radio" name="gender" value="male"> Male<br>
                     </div>
                     <div class="radio">
                    <input type="radio" name="gender" value="female" > Female<br>  
                     </div>
                      
                  </div>
                 
                 <div class="form-group">

                      <label for="date"><b>Date:</b></label>
                     
                     
                     
                    <input type="date" class="form-control" name="date" value="date" >
                     
                      
                  </div>
                
                    
                 <div class="form-group">     
                      <input type="submit" name="btnUpd" value="Place the Students " id="btnUpd">
                </div>                       
                
        </form>
        </div>

        </div>
        
      </section>
  </body>
</html>