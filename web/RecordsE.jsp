
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<%@page import ="java.util.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv ="Content-Type" content="text/html; charset=UTF-8">
        <link href="External/fontawesome/css/all.css" rel="stylesheet" type="text/css"/>
        <link href="External/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="External/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <title>Display Places with events</title>
        
        <jsp:include page="Layout.jsp"/>

    </head>
    <body>
        <div>
      
    </div>         
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
        
        
    
    <center>
        <h1 align="center">RECORDS</h1>
        
       
        
        </br>
        </br>
        <table class="table table-hover" border="1px" style="border-style:solid;width:90%;">
            <thead>
                <tr>
                    
                    <th><b>Sportsmeet Type</b></th>

                    <th><b>Student ID</b></th>

                    
                    <th><b>Student Name</b></th>
                    
                    <th><b>Faculty</b></th>
                    
                    <th><b>Event Name</b></th>

                    <th><b>Record</b></th>
                    <th><b>Unit</b></th>

                    <th><b>Date</b></th>


                </tr>
            </thead>
            <tbody>
                <%
                    while (result.next()){
                        sid=result.getInt("sid");
                %>
                <tr>
                    <td><%=result.getString("type")%></td>
                    <td><%=result.getString("sid")%></td>

                    <td><%=result.getString("sname")%></td>
                    <td><%=result.getString("faculty")%></td>

                    <td><%=result.getString("ename")%></td>

                    <td><%=result.getString("record")%></td>
                    <td><%=result.getString("unit")%></td>

                    <td><%=result.getString("date")%></td>
                   

                </tr>
                <%
                    }
                %> 
                
            </tbody>
        </table>
                
                               
    </center>
   
   
    </body>
</html>