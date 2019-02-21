
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
        <title>Annual Places</title>
        
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
                qry="SELECT * FROM (SELECT eid,faculty,SUM(points) as total FROM placesaf WHERE gender='male' AND type='Annual' GROUP BY faculty ORDER BY (SUM(points)) desc LIMIT 0,1) pp";
                result=stat.executeQuery(qry);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
    
    <body>
        
        <h1 align="center">Annual Sportsmeet</h1>
        <br><br>
        <h1 align='center'>Places</h1>
        <h2 align='center'>MEN</h2>

        <br><br>
       
        
        <table style="width:100%;align:center">
            <th style="background-color:lightblue" colspan="6">
                <h2>Champion</h2>
               
            </th>
            
            <tr>
               
                <th>
                    Faculty</th>
                
                <th>
                    Total Points</th>
                
                
                
            </tr>


                <%
                    while (result.next()){
                        eid=result.getInt("eid");
                %>

                
                     <tr>
                    

                    <td><%=result.getString("faculty")%></td>
                    <td><%=result.getString("total")%></td>

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
                stat1= conn1.createStatement();
                qry1="SELECT * FROM (SELECT eid,faculty,SUM(points) as total FROM placesaf WHERE gender='male' AND type='Annual' GROUP BY faculty ORDER BY (SUM(points)) desc LIMIT 1,1) pp";
                result1=stat1.executeQuery(qry1);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
    
      
    

        <br><br>
       
        
         <table style="width:100%;align:center">
            <th style="background-color:lightblue" colspan="6">
                <h2>Runner Up</h2>
               
            </th>
            
            <tr>
                
                <th>
                    Faculty</th>
                
                <th>
                    Total Points</th>
                
                
                
            </tr>


                <%
                    while (result1.next()){
                        eid=result1.getInt("eid");
                %>

                
                     <tr>
                   

                    <td><%=result1.getString("faculty")%></td>
                    <td><%=result1.getString("total")%></td>

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
                stat2= conn2.createStatement();
                qry2="SELECT * FROM (SELECT eid,faculty,SUM(points) as total FROM placesaf WHERE gender='male' AND type='Annual' GROUP BY faculty ORDER BY (SUM(points)) desc LIMIT 2,1) pp";
                result2=stat2.executeQuery(qry2);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
    
      
    

        <br><br>
       
        
        
         <table style="width:100%;align:center">
            <th style="background-color:lightblue" colspan="6">
                <h2>2nd Runner Up</h2>
               
            </th>
            
            <tr>
               
                <th>
                    Faculty</th>
                
                <th>
                    Total Points</th>
                
                
                
            </tr>


                <%
                    while (result2.next()){
                        eid=result2.getInt("eid");
                %>

                
                     <tr>
                   

                    <td><%=result2.getString("faculty")%></td>
                    <td><%=result2.getString("total")%></td>

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
                response.sendRedirect("./AnnualPMView.jsp");
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
            }
        %>
       
        <br><br><br><br>
        
        
      <form id="addDistributor" action="AnnualPlacesM.jsp" method="POST" name="" onsubmit="">

         <table border="0" cellspacing="5" cellpadding="5"> 
                <tbody>
                    
                  
                    
                     <tr>
                        <td align="center"><b>SportsMeet Type : </b></td></tr>
                    <tr>
                    
                        <td align="center">
                            <input type="checkbox" name="stype" value="Annual" checked >Annual
                        
                        <input type="checkbox" name="stype" value="freshers">Freshers</td>
                    </tr>
                    
                    <tr>
                          <td align="center"><b>Distribution Type:</b></td></tr>
                      <tr>
                        <td align="center">
                         
                        <select id = "dtype" name="dtype">
                            <option value = "Select" name="eid">Select</option>

                            <option value = "BestPerformance" name="dtype">Best Performance</option>
                            <option value = "RelayChampionOverall" name="dtype">Relay Champion Overall</option>
                            <option value = "RecordHolders" name="dtype">Record Holders</option>
                            <option value = "OutstandingAthlete" name="dtype">Outstanding Athlete Of The Meet</option>
                            <option value = "PlacesMen" name="dtype">Places-Men</option>
                            <option value = "PlacesWomen" name="dtype">Places-Women</option>                            <option value = "OverallPlaces" name="dtype">Overall Places</option>
                            <option value = "OverallPlaces" name="dtype">Overall Places</option>

                         </select>
                         </td>
                    </tr>
                    
                    
                    <tr>
                          <td align="center"><b>Distributor:</b></td></tr>
                      <tr>
                        <td align="center">
                         
                        <select id = "distributor" name="distributor">
                            <option value = "Select" name="eid">Select</option>

                            <option value = "A.Perera" name="distributor">Mr.Perera</option>
                            <option value = "I.Boteju" name="distributor">Mr.Boteju</option>
                            <option value = "L.Peiris" name="distributor">Mrs.Peiris</option>
                            <option value = "K.liyanage" name="distributor">Mrs.Liyanage</option>
                            <option value = "I.Kusuma" name="distributor">Mrs.Kusuma</option>
                            <option value = "J.Abeywickrema" name="distributor">Mr.Abeywickrema</option>
                            <option value = "X.Kalubowila" name="distributor">Mr.Kalubowila</option>
                           
                         </select>
                         </td>
                    </tr>
                    
                    <tr>
                        <td align="center"><input type="submit" name="btnAdd" value="Add Distributor" id="btnAdd"></td>
                        
                    </tr>
                    
                     </tbody>
            </table>
      </form>
                      
        
        
    
    </body>  
</html>
