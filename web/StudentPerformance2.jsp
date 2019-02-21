
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
        <title>Student Performance 2</title>
        
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
                qry="SELECT sid,sname,gender,faculty from placesaf WHERE sid='"+request.getParameter("sid")+"' GROUP BY '"+request.getParameter("sid")+"',sname";

                result=stat.executeQuery(qry);  

            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
        
        
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
                qry1="SELECT sid,ename from placesaf WHERE sid='"+request.getParameter("sid")+"' ";

                result1=stat1.executeQuery(qry1);  

            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
        
        
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
                qry2="SELECT sid,sname,SUM(points) AS POINTS from placesaf WHERE sid='"+request.getParameter("sid")+"' GROUP BY '"+request.getParameter("sid")+"',sname";

                result2=stat2.executeQuery(qry2);  

            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
    
    <body>
        <br><br><br>
        <h2 align="center">
             STUDENT PERFORMANCE SHEET
        </h2>
          <br><br>

        
        <div class="form-group">

                    
                
                <div class="container" style="background-color: #DEDEDE;border-color: black;border-radius: 1">
                    <div class="form-group">
                           
           
                        <label for="ename"><h3>STUDENT ID:</h3></label>  
                        
                        <%
                            while (result.next()){
                            sid=result.getInt("sid");
                    %>

                        
                        
                    <h4><b><%=result.getString("sid")%></b></h4>  
                        <br><br>
                    <div class="form-group">

                        <label for="ename"><h3>STUDENT NAME:</h3></label>  

                        <h4><b><%=result.getString("sname")%></b></h4>  
                        <br><br>
                        
                        <label for="faculty"><h3>FACULTY:</h3></label>  

                        <h4><b><%=result.getString("faculty")%></b></h4>  
                        <br><br>
                        
                        
                        <label for="gender"><h3>GENDER</h3></label>  

                        <h4><b><%=result.getString("gender")%></b></h4>  
                        <br><br>
                        
                      <%
                    }
                      %>  
                 </div>
                 
                 
                  
                    <div class="form-group">

            
                        <label for="ename"><h3>EVENTS:</h3></label>   
                        
                           <%
                            while (result1.next()){
                            sid=result1.getInt("sid");
                    %>
                        
                    <h4><b><%=result1.getString("ename")%></b></h4>  
                        <br>
                         <%
                    }
                      %>  
             
                    </div>
                     
                      
                      
                       <div class="form-group">

            
                        <label for="ename"><h3>TOTAL POINTS:</h3></label>   
                        
                           <%
                            while (result2.next()){
                            sid=result2.getInt("sid");
                    %>
                        
                    <h4><b><%=result2.getString("POINTS")%></b></h4>  
                         <br><br>
                         <%
                    }
                      %>  
             
                    </div>
                      
                      
                      
                      
                      </div>
       </table>
       
    </body>
</html>