
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
        <title>Annual Places Female View</title>
        
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
                qry="SELECT * FROM (SELECT eid,faculty,SUM(points) as total FROM placesaf WHERE gender='female' AND type='Annual' GROUP BY faculty ORDER BY (SUM(points)) desc LIMIT 0,1) pp";
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
                qry7="SELECT * FROM distribution WHERE stype='Annual' AND dtype='PlacesWomen'";
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
        <h1 align="center">Annual Sportsmeet</h1>
        <br><br>
        <h1 align='center'>Places</h1>
        <h2 align='center'>WOMEN</h2>

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
                qry1="SELECT * FROM (SELECT eid,faculty,SUM(points) as total FROM placesaf WHERE gender='female' AND type='Annual' GROUP BY faculty ORDER BY (SUM(points)) desc LIMIT 1,1) pp";
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
                qry2="SELECT * FROM (SELECT eid,faculty,SUM(points) as total FROM placesaf WHERE gender='female' AND type='Annual' GROUP BY faculty ORDER BY (SUM(points)) desc LIMIT 2,1) pp";
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
       
          
          
     
    </body>  
</html>
