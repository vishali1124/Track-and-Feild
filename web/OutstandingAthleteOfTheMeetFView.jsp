
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
        <title>OAOTM Freshers' View</title>
        
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
            Integer sid;
        %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field","root","");
                stat= conn.createStatement();
                qry="SELECT * FROM (SELECT sid,sname,faculty,SUM(points) as total FROM placesaf WHERE type='freshers' GROUP BY sid ORDER BY (SUM(points)) desc LIMIT 0,1) pp";
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
                qry7="SELECT * FROM distribution WHERE stype='freshers' AND dtype='OutstandingAthlete'";
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
       
        <br><br><br><br>
        
        
        <table class="table table-hover" style="width:100%;align:center">
            <th style="background-color:lightblue" colspan="6">
                <h2 align='center'>Outstanding Athlete Of The Meet</h2>
               
            </th>
            
            <tr>
                 <td align='center'>
                    <b>Student ID</b></td>
                
                <td align='center'>
                    <b>Student Name</b></td>
                
                <td align='center'>
                    <b>Faculty</b></td>
                
                <td align='center'>
                    <b>Total Points</b></td>
                
                
                
            </tr>


                <%
                    while (result.next()){
                        sid=result.getInt("sid");
                %>

                
                     <tr>
                    <td align='center'><%=result.getString("sid")%></td>
                    <td align='center'><%=result.getString("sname")%></td>

                    <td align='center'><%=result.getString("faculty")%></td>
                    <td align='center'><%=result.getString("total")%></td>

                     </tr>
                      <%
                    }
                      %> 
          </table>
       

       
    </body>  
</html>
