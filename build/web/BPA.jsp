
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
        <title> BPA</title>
        
        <style>
            table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
            
        </style>
                            <jsp:include page="Layout.jsp"/>

    </head>
   
    
    
    
    
    
    <%!
            Connection conn;
            Statement stat;
            ResultSet result;
            String qry;
            Integer eid;
        %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field","root","");
                stat= conn.createStatement();
                qry="SELECT * FROM (SELECT eid,sname,faculty,ename,record,points FROM placesaf WHERE type='Annual' AND etype='track' AND gender='male' ORDER BY record asc LIMIT 0,1) pp";
                result=stat.executeQuery(qry);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
    
    <body>
     
       
        <br><br>
        <h2 align="center">
   Track Events</h2>
        
        
        <table class="table table-hover" style="width:100%;align:center">
            <th style="background-color:lightblue" colspan="6">
                <h2>Men</h2>
               
            </th>
            
         <tr>
                <th>
                    Student Name</th>
                
                <th>
                    Faculty</th>
                
                <th>
                    Event name</th>
                
                <th>
                    Record</th>
                
                <th>
                    Points</th>
                
                
                
            </tr>
                <%
                    while (result.next()){
                        eid=result.getInt("eid");
                %>

                
                     <tr>
                    <td><%=result.getString("sname")%></td>      
                    <td><%=result.getString("faculty")%></td>
                    <td><%=result.getString("ename")%></td>
                    <td><%=result.getString("record")%></td>
                    <td><%=result.getString("points")%></td>

                     </tr>
                      <%
                    }
                      %> 
            

       </table>
       
   
    
    
    
    
    
                      
                      
        <%!
            Connection conn1;
            Statement stat1;
            ResultSet result1;
            String qry1;
            
        %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field","root","");
                stat1= conn.createStatement();
                qry1="SELECT * FROM (SELECT eid,sname,faculty,ename,record,points FROM placesaf WHERE type='Annual' AND etype='track' AND gender='female' ORDER BY record asc LIMIT 0,1) pp";
                result1=stat.executeQuery(qry1);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
    
        <br><br><br>
            <table class="table table-hover" style="width:100%;align:center">
            <th style="background-color:lightblue" colspan="6">
                <h2>Women</h2>
               
            </th>
            
           <tr>
                <th>
                    Student Name</th>
                
                <th>
                    Faculty</th>
                
                <th>
                    Event name</th>
                
                <th>
                    Record</th>
                
                <th>
                    Points</th>
                
                
                
            </tr>


                <%
                    while (result1.next()){
                        eid=result1.getInt("eid");
                %>

                
                     <tr>
                    <td><%=result1.getString("sname")%></td>      
                    <td><%=result1.getString("faculty")%></td>
                    <td><%=result1.getString("ename")%></td>
                    <td><%=result1.getString("record")%></td>
                    <td><%=result1.getString("points")%></td>

                     </tr>
                      <%
                    }
                      %> 
            
           
       </table>
                      
                      
                      
                      
                      
                      
                      
               
                      
                      
                      
                      
                      
                      
                       <%!
            Connection conn2;
            Statement stat2;
            ResultSet result2;
            String qry2;
           
        %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field","root","");
                stat2= conn.createStatement();
                qry2="SELECT * FROM (SELECT eid,sname,faculty,ename,record,points FROM placesaf WHERE type='Annual' AND etype='field' AND gender='male' ORDER BY record desc LIMIT 0,1) pp";
                result2=stat.executeQuery(qry2);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
    
    <body>
              
        <br><br><br>

        <h2 align="center">
       Field Events</h2>
        <br><br><br><br>
      

        
        <table class="table table-hover" style="width:100%;align:center">
            <th style="background-color:lightblue" colspan="6">
                <h2>Men</h2>
               
            </th>
            
           <tr>
                <th>
                    Student Name</th>
                
                <th>
                    Faculty</th>
                
                <th>
                    Event name</th>
                
                <th>
                    Record</th>
                
                <th>
                    Points</th>
                
                
                
            </tr>
                <%
                    while (result2.next()){
                        eid=result2.getInt("eid");
                %>

                
                     <tr>
                    <td><%=result2.getString("sname")%></td>      
                    <td><%=result2.getString("faculty")%></td>
                    <td><%=result2.getString("ename")%></td>
                    <td><%=result2.getString("record")%></td>
                    <td><%=result2.getString("points")%></td>

                     </tr>
                      <%
                    }
                      %> 
            

       </table>
       
   
    
    
    
    
    
                      
                      
        <%!
            Connection conn3;
            Statement stat3;
            ResultSet result3;
            String qry3;
            
        %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn3 = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field","root","");
                stat3= conn.createStatement();
                qry3="SELECT * FROM (SELECT eid,sname,faculty,ename,record,points FROM placesaf WHERE type='Annual' AND etype='field' AND gender='female' ORDER BY record desc LIMIT 0,1) pp";
                result3=stat3.executeQuery(qry3);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
    
        <br><br><br>
            <table class="table table-hover" style="width:100%;align:center">
            <th style="background-color:lightblue" colspan="6">
                <h2>Women</h2>
               
            </th>
            
            <tr>
                <th>
                    Student Name</th>
                
                <th>
                    Faculty</th>
                
                <th>
                    Event name</th>
                
                <th>
                    Record</th>
                
                <th>
                    Points</th>
                
                
                
            </tr>


                <%
                    while (result3.next()){
                        eid=result3.getInt("eid");
                %>

                
                     <tr>
                    <td><%=result3.getString("sname")%></td>      
                    <td><%=result3.getString("faculty")%></td>
                    <td><%=result3.getString("ename")%></td>
                    <td><%=result3.getString("record")%></td>
                    <td><%=result3.getString("points")%></td>

                     </tr>
                      <%
                    }
                      %> 
                      
                      
                      
                      
                      
                    
        <%!
            Connection conn4;
            PreparedStatement pstmt4;
            String qry4;  
            Integer did;
            
        %>
        <%
            if(request.getParameter("btnAdd")!=null){
                try{
                Class.forName("com.mysql.jdbc.Driver");
                conn4 = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field","root","");
                qry4="INSERT INTO distribution(did,stype,dtype,distributor) VALUES (?,?,?,?)";
                pstmt4= conn.prepareStatement(qry4);
                pstmt4.setString(1, request.getParameter("did"));

                pstmt4.setString(2, request.getParameter("stype"));
                pstmt4.setString(3, request.getParameter("dtype"));

                pstmt4.setString(4, request.getParameter("distributor"));
                


                pstmt4.executeUpdate();
                response.sendRedirect("./BP1A.jsp");
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
            }
        %>
       
        
        
      <div class="container">
     <form id="addDistributor" action="BPA.jsp" method="POST" name="" onsubmit="">

   <div class="form-group">
       <label for="email"><b>Sportsmeet Type:</b></label>
    <input type="checkbox" class="form-control" name="stype" value="Annual" id="stype" >Annual
    <input type="checkbox" class="form-control" name="stype" value="freshers" id="stype" checked>Freshers

  </div>
        
   
    <div class="form-group">
        <label for="email"><b>Distribution Type:</b></label>
   
     <select class="form-control" id = "dtype" name="dtype">
                            <option value = "Select" name="eid">Select</option>

                            <option value = "BestPerformance" name="dtype">Best Performance</option>
                            <option value = "RelayChampionOverall" name="dtype">Relay Champion Overall</option>
                            <option value = "RecordHolders" name="dtype">Record Holders</option>
                            <option value = "OutstandingAthlete" name="dtype">Outstanding Athlete Of The Meet</option>
                            <option value = "PlacesMen" name="dtype">Places-Men</option>
                            <option value = "PlacesWomen" name="dtype">Places-Women</option>
                            <option value = "OverallPlaces" name="dtype">Overall Places</option>
                           
                         </select>
   </div>               
                    
                    
    <div class="form-group">
        <label for="email"><b>Distributor:</b></label>
                         
    
                        <select class="form-control" id = "distributor" name="distributor">
                            <option value = "Select" name="eid">Select</option>

                            <option value = "A.Perera" name="distributor">Mr.Perera</option>
                            <option value = "I.Boteju" name="distributor">Mr.Boteju</option>
                            <option value = "L.Peiris" name="distributor">Mrs.Peiris</option>
                            <option value = "K.liyanage" name="distributor">Mrs.Liyanage</option>
                            <option value = "I.Kusuma" name="distributor">Mrs.Kusuma</option>
                            <option value = "J.Abeywickrema" name="distributor">Mr.Abeywickrema</option>
                            <option value = "X.Kalubowila" name="distributor">Mr.Kalubowila</option>
                           
                         </select>                   
                       
    </div>              
                    
                       
          <div class="form-group">            
                   
                 <input type="submit" name="btnAdd" value="Add Distributor" id="btnAdd">
                        
          </div>       
                    
                     
      </form>
                      
    
</div>
            
            </body>  
</html>
