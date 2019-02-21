
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<%@page import ="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update PTS 3</title>
        <head>
        <meta http-equiv ="Content-Type" content="text/html; charset=UTF-8">
        <link href="External/fontawesome/css/all.css" rel="stylesheet" type="text/css"/>
        <link href="External/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="External/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <title>Display Places with events</title>
        
        <jsp:include page="LayoutR.jsp"/>

    </head>
    </head>
    <body>
         <%!
            Connection conn;
            PreparedStatement pstmt;
            ResultSet result;
            String qry;
            Integer eid;
          
        %>
        <%
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field","root","");
            if(request.getParameter("btnUpd")!= null){
                eid = Integer.parseInt(request.getParameter("hiddenId"));
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    qry="UPDATE  placesaf SET  eid=? ,ename =? , type =?, etype=? ,gender =? ,date =? ,place =?,sid =? ,sname=? ,faculty =?,record =?, unit=? , points=? WHERE eid =?" ;
                    pstmt = conn.prepareStatement(qry);
                    pstmt.setString(1, request.getParameter("eid"));
                    pstmt.setString(2, request.getParameter("ename"));

                    pstmt.setString(3, request.getParameter("type"));
                    pstmt.setString(4, request.getParameter("etype"));
                    pstmt.setString(5, request.getParameter("gender"));
                    pstmt.setString(6, request.getParameter("date"));
                    pstmt.setString(7, request.getParameter("place"));
                    pstmt.setString(8, request.getParameter("sid"));
                    pstmt.setString(9, request.getParameter("sname"));
                    pstmt.setString(10, request.getParameter("faculty"));
                    pstmt.setString(11, request.getParameter("record"));
                    pstmt.setString(12, request.getParameter("unit"));
                    pstmt.setString(13, request.getParameter("points"));
                    pstmt.setInt(14, eid);
                    pstmt.executeUpdate();
                    response.sendRedirect("./PlaceTheStudents3.jsp");
                
                } catch(ClassNotFoundException cnfe){
                   System.out.println("Class not found exception" + cnfe.toString());
                } catch(SQLException sqle){
                    out.println("SQL eCXCEPTION " + sqle);
                }
            }
            if(request.getParameter("id")!=null && request.getParameter("id") != ""){
                eid = Integer.parseInt(request.getParameter("id"));
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    qry="SELECT * FROM placesaf WHERE Eid =?";
                    pstmt = conn.prepareStatement(qry);
                    pstmt.setInt(1, eid);
                    result=pstmt.executeQuery(); 
                    result.first();
                
                } catch(ClassNotFoundException cnfe){
                   System.out.println("Class not found exception" + cnfe.toString());
                } catch(SQLException sqle){
                    out.println("SQL eCXCEPTION " + sqle);
                }
            }else{
                response.sendRedirect("./PlaceTheStudents3.jsp");
            }
            
        %>

  <div>
      
    </div>         
    

        <center>
        <h1>Update Places Of Students</h1>
        
        <div class="container" style="width:50%">
        <form id="editForm" action="" method="POST">
            
             <div class="form-group">

           
                        
                            <input type="text" name="eid"  hidden class="form-control" id="eid" value ='<%=result.getString("eid")%>' /></td>
            </div>
                    
            
            
            
            
            <div class="form-group">

           
                <label for="ename"><b>Event Name:</b></label>
                             <input type="hidden" id="hiddenId" name="hiddenId" value ="<%=eid%>"/>

                            <input type="text" name="ename" class="form-control" id="ename" value ='<%=result.getString("ename")%>' /></td>
            </div>
                    
            <div class="form-group">

           
                <label for="type"><b>Sportsmeet Type:</b></label>

                            <input type="text" name="type" id="type" class="form-control" value ='<%=result.getString("type")%>' /></td>
            </div>
                       
            <div class="form-group">

           
                <label for="ename"><b>Event Type:</b></label>

                            <input type="text" name="etype" id="etype" class="form-control" value ='<%=result.getString("etype")%>' /></td>
            </div>
            
            <div class="form-group">

           
                <label for="gender"><b>Gender:</b></label>

                            <input type="text" name="gender" id="gender" class="form-control" value ='<%=result.getString("gender")%>' /></td>
            </div>
            
            <div class="form-group">

           
                <label for="date"><b>Date:</b></label>

                            <input type="text" name="date" id="date" class="form-control" value ='<%=result.getString("date")%>' /></td>
                   
            
            
            <div class="form-group">

           
                <label for="place"><b>Place:</b></label>

                            <input type="text" name="place" id="place" class="form-control" value ='<%=result.getString("place")%>' /></td>
            </div>
            
            <div class="form-group">

           
                <label for="sid"><b>Student ID:</b></label>

                            <input type="text" name="sid" id="sid" class="form-control" value ='<%=result.getString("sid")%>' /></td>
            </div>
             
            <div class="form-group">

           
                <label for="sname"><b>Student Name:</b></label>

                            <input type="text" name="sname" id="sname" class="form-control" value ='<%=result.getString("sname")%>' /></td>
            </div>
                    
            <div class="form-group">

           
                <label for="faculty"><b>Faculty:</b></label>

                            <input type="text" name="faculty" id="faculty" class="form-control" value ='<%=result.getString("faculty")%>' /></td>
            </div>
            
            <div class="form-group">

           
                <label for="record"><b>Record:</b></label>

                            <input type="text" name="record" id="record" class="form-control" value ='<%=result.getString("record")%>' /></td>
            </div>
            
            <div class="form-group">

           
                <label for="unit"><b>Unit:</b></label>

                            <input type="text" name="unit" id="unit" class="form-control" value ='<%=result.getString("unit")%>' /></td>
            </div>
            
            <div class="form-group">

           
                <label for="points"><b>Points:</b></label>
            

                            <input type="text" name="points" id="points" class="form-control" value ='<%=result.getString("points")%>' /></td>
            </div>
            
             
            <div class="form-group">

                            <input type="submit" name="btnUpd" value="Edit Details" id="btnUpd"></td>
            </div>
        </form>
        </div>
    </center>
        

    </body>
</html>