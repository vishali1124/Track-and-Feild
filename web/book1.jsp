<%-- 
    Document   : book1
    Created on : Aug 25, 2018, 2:35:01 PM
    Author     : lenovo
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%> 
<%@page import="java.sql.DriverManager"%>
<%--@page import="com.mysql.jdbc.Connection"--%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.*"%>
<%Class.forName("com.mysql.jdbc.Driver");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
               <jsp:include page="schedulehome.jsp"/>
                
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
                <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
                <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        
               <link href="secmain.css" rel="stylesheet" type="text/css"/>
               <link href="inventory/CSS/Layout.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>
        <div align="center">
        <nav class="navbar navbar-light" style="background-color: #e3f2fd; width: 1300px;">
                <a class="nav-link" href="userRo.jsp">Home <span class="sr-only"></span></a>
                
                <a class="nav-link" href="badd.jsp">Add-Event to schedule <span class="sr-only"></span></a>
                

                
            </nav>
        </div>
		
     <center><h1>Get Ground Reserved Details</h1></center>
    <center><table align="center " cellpadding="10" cellspacing="20" border="1" ></center>
    
        
    
    <tr>
        <tr bgcolor="lightblue">
        <!--<td><b> Schedule ID </b></td>-->
        <td><b> NIC of Client </b></td>
        <td><b>Client Name</b></td>
        <td><b> Date  </b></td>
        <td><b> Return Date </b></td>
        
        
        
        <td><b>Edit</b></td>
        <td><b>Delete</b></td>
        
        
        
        
    </tr>
    
        <!--getting the database connection-->
        <% String url="jdbc:mysql://localhost/track&field";
           String user="root";
           String pass="";
           
           
           try{
               //getting all item details from database 
               Connection con=DriverManager.getConnection(url,user,pass);
                Statement s=con.createStatement();
            String sql="SELECT * FROM ground";
            
            ResultSet rs=s.executeQuery(sql);
            while(rs.next()){
                %>
                        
            <tr>    
                
                <td><%=rs.getString("nic")%></td>
                <td><%=rs.getString("name")%></td>
                <td><%=rs.getString("date")%></td>
                <td><%=rs.getString("resdate")%></td>
                
                
                <td><a href="update.jsp?nic=<%=rs.getString("nic")%>">Edit</a></td>
                <td><a href="bdel.jsp?nic=<%=rs.getString("nic")%>">Delete</a></td>
            </tr>
            
            <%   
                }
            con.close();
           }catch(SQLException e){
               e.printStackTrace();
               
           }
        %>
        </table>  
        <br><br><br>
        <center><button><a href="userRo.jsp" class="button">Go Back</a></button></center>
        
        <br><br>
        <center><button><a href="badd.jsp" class="button">Create a New Booking</a></button></center>
                                            
                               
                                            
                                        
                                      
    </body>
</html>