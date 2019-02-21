



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
        <br><br>
        <%!
            Connection conn4;
            Statement stat4;
            ResultSet result4;
            String qry4;
            Integer did;
        %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field","root","");
                stat= conn.createStatement();
                qry="SELECT * FROM distribution WHERE stype='Annual' AND dtype='RecordHolders'";
                result=stat.executeQuery(qry);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
         <%
                    while (result.next()){
                        did=result.getInt("did");
         %>
                
         <h2>Distributed By...<%=result.getString("distributor")%></h2>
         <br><br>
        <%
                    }
        %> 
    
    
        
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
       
    
</div>
        
        
        
        
        
        
     
        
      
    </body>
</html>
