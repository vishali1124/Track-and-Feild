
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
        <title>RCF View</title>
        
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
                qry="SELECT * FROM (SELECT eid,faculty,ename,record,points FROM placesaf WHERE type='freshers' AND ename='4X100Relay' and etype='relay' ORDER BY record asc LIMIT 0,1) pp";
                result=stat.executeQuery(qry);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
    
    <body>
         
        
        <%!
            Connection conn7;
            Statement stat7;
            ResultSet result7;
            String qry7;
            Integer did;
        %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn7 = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field","root","");
                stat7= conn7.createStatement();
                qry7="SELECT * FROM distribution WHERE stype='freshers' AND dtype='RelayChampionOverall'";
                result7=stat7.executeQuery(qry7);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
         <%
                    while (result7.next()){
                        did=result7.getInt("did");
         %>
                
         <h2>Distributed By...<%=result7.getString("distributor")%></h2>
        <%
                    }
        %> 
    
        
        
        
        
        
        
        <h1 align="center">Freshers' Sportsmeet</h1>
        <br><br>
        <h1 align='center'>4 X 100 Relay</h1>
        <br><br>
        <h2 align="center">Champion
      </h2>
        
        
        <table class="table table-hover" style="width:100%;align:center">
            <th style="background-color:lightblue" colspan="6">
                <h2>Men & Women</h2>
               
            </th>
            
            <tr>
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
                stat1= conn1.createStatement();
                qry1="SELECT * FROM (SELECT eid,faculty,ename,record,points FROM placesaf WHERE type='freshers' AND ename='4X100Relay' and etype='relay' ORDER BY record asc LIMIT 1,1) pp";
                result1=stat1.executeQuery(qry1);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
    
      
    

        <br><br>
        <h2 align="center"> Runner Up
      </h2>
        
        
        <table class="table table-hover" style="width:100%;align:center">
            <th style="background-color:lightblue" colspan="6">
                <h2>Men & Women</h2>
               
            </th>
            
            <tr>
                
                
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
                stat2= conn2.createStatement();
                qry2="SELECT * FROM (SELECT eid,faculty,ename,record,points FROM placesaf WHERE type='freshers' AND ename='4X100Relay' and etype='relay' ORDER BY record asc LIMIT 2,1) pp";
                result2=stat2.executeQuery(qry2);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
    
      
    

        <br><br>
        <h2 align="center"> 2nd Runner Up
      </h2>
        
        
        <table class="table table-hover" style="width:100%;align:center">
            <th style="background-color:lightblue" colspan="6">
                <h2>Men & Women</h2>
               
            </th>
            
            <tr>
                
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
                stat3= conn3.createStatement();
                qry3="SELECT * FROM (SELECT eid,faculty,ename,record,points FROM placesaf WHERE type='freshers' AND ename='4X400Relay' and etype='relay' ORDER BY record asc LIMIT 0,1) pp";
                result3=stat3.executeQuery(qry3);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
    
    

        <br><br>
        <h1 align='center'> 4 X 400 Relay</h1>
        <br><br>
        <h2 align="center">Champion
      </h2>
        
        
        <table class="table table-hover" style="width:100%;align:center">
            <th style="background-color:lightblue" colspan="6">
                <h2>Men & Women</h2>
               
            </th>
            
            <tr>
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
                    <td><%=result3.getString("faculty")%></td>
                    <td><%=result3.getString("ename")%></td>
                    <td><%=result3.getString("record")%></td>
                    <td><%=result3.getString("points")%></td>

                     </tr>
                      <%
                    }
                      %> 
          </table>
       
   

          
          
           <%!
            Connection conn5;
            Statement stat5;
            ResultSet result5;
            String qry5;
           
            
        %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn5 = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field","root","");
                stat5= conn5.createStatement();
                qry5="SELECT * FROM (SELECT eid,faculty,ename,record,points FROM placesaf WHERE type='freshers' AND ename='4X400Relay' and etype='relay' ORDER BY record asc LIMIT 1,1) pp";
                result5=stat5.executeQuery(qry5);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
    
      
    

        <br><br>
        <h2 align="center"> Runner Up
      </h2>
        
        
        <table class="table table-hover" style="width:100%;align:center">
            <th style="background-color:lightblue" colspan="6">
                <h2>Men & Women</h2>
               
            </th>
            
            <tr>
                
                
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
                    while (result5.next()){
                        eid=result5.getInt("eid");
                %>

                
                     <tr>
                    <td><%=result5.getString("faculty")%></td>
                    <td><%=result5.getString("ename")%></td>
                    <td><%=result5.getString("record")%></td>
                    <td><%=result5.getString("points")%></td>

                     </tr>
                      <%
                    }
                      %> 
          </table>
                      
                    
      
         <%!
            Connection conn6;
            Statement stat6;
            ResultSet result6;
            String qry6;
           
            
        %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn6 = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field","root","");
                stat6= conn6.createStatement();
                qry6="SELECT * FROM (SELECT eid,faculty,ename,record,points FROM placesaf WHERE type='freshers' AND ename='4X400Relay' and etype='relay' ORDER BY record asc LIMIT 2,1) pp";
                result6=stat6.executeQuery(qry6);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
    
      
    

        <br><br>
        <h2 align="center"> 2nd Runner Up
      </h2>
        
        
        <table class="table table-hover" style="width:100%;align:center">
            <th style="background-color:lightblue" colspan="6">
                <h2>Men & Women</h2>
               
            </th>
            
            <tr>
                
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
                    while (result6.next()){
                        eid=result6.getInt("eid");
                %>

                
                     <tr>
                    <td><%=result6.getString("faculty")%></td>
                    <td><%=result6.getString("ename")%></td>
                    <td><%=result6.getString("record")%></td>
                    <td><%=result6.getString("points")%></td>

                     </tr>
                      <%
                    }
                      %> 
          </table>
                              
 
    
    </body>  
</html>
