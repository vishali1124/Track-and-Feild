


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<%@page import ="java.util.*" %><!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Record Holders</title>\
        
        <style>
            th{
                background-color:lightgray;
            }
        </style>
        <link href="External/fontawesome/css/all.css" rel="stylesheet" type="text/css"/>
        <link href="External/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="External/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    
        <jsp:include page="Layout.jsp"/>

    </head>
    <body>
         
        <br><br>
        <h1 align="center">RECORD HOLDERS</h1>        
        
         <%!
            Connection conn;
            Statement stat;
            ResultSet result;
            String qry;
            Integer sid;
        %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field","root","");
                stat= conn.createStatement();
                qry="SELECT * FROM records";
                result=stat.executeQuery(qry);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
        
         <table class="table table-hover" style="width:100%;align:center">
           
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
                    Date</th>
                
                
                
            </tr>
                <%
                    while (result.next()){
                        sid=result.getInt("sid");
                %>

                
                     <tr>
                    <td><%=result.getString("sname")%></td>      
                    <td><%=result.getString("faculty")%></td>
                    <td><%=result.getString("ename")%></td>
                    <td><%=result.getString("record")%></td>
                    <td><%=result.getString("date")%></td>

                     </tr>
                      <%
                    }
                      %> 
            

       </table>
       
   
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
                response.sendRedirect("./RecordHoldersView.jsp");
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
            }
        %>
       
        
        <br><br><br>
      <div class="container">
     <form id="addDistributor" action="RecordHolders.jsp" method="POST" name="" onsubmit="">

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
