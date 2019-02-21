
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
        <title>Freshers Women Results</title>
        
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
                qry="SELECT * FROM placesaf WHERE gender='female' AND type='Freshers'";
                result=stat.executeQuery(qry);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
    
    <body>
           
    
        <h2 align="center">
            INTER FACULTY FRESHERS' TRACK & FIELD CHAMPIONSHIP
        </h2>
        <br>
        <h1 align="center">Certificates</h1>
        <br><br>
        <table class="table table-hover" style="width:100%;align:center">
            <th style="background-color:lightblue" colspan="6">
                <h2>Women</h2>
               
            </th>
            
           <tr>
                <th>
                    Event</th>
                
                <th>
                    Place</th>
                
                <th>
                    Name</th>
                
                <th>
                    Faculty</th>
                
                
            </tr>


                <%
                    while (result.next()){
                        eid=result.getInt("eid");
                %>

                
                     <tr>
                    <td><%=result.getString("ename")%></td>      
                    <td><%=result.getString("place")%></td>
                    <td><%=result.getString("sname")%></td>
                    <td><%=result.getString("faculty")%></td>
                     </tr>
                      <%
                    }
                      %> 

       </table>
       
    </body>
</html>
