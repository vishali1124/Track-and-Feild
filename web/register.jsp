<%-- 
    Document   : register
    Created on : Aug 10, 2018, 11:15:52 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    
    <body>
       
        <%@page import="java.sql.*" %>
         <%
             try{
                 
         Class.forName("com.mysql.jdbc.Driver");
         
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/track&field","root","");
        
          Statement ps=conn.createStatement();
          
        String userid=request.getParameter("userid");        
        String username=request.getParameter("username");               
        String password=request.getParameter("password");
        String phone=request.getParameter("phone");
        String email=request.getParameter("email");
         String type=request.getParameter("type"); 
        
        
       session.setAttribute(userid,"userid");
         
           ps.executeUpdate( "Insert into userlogin(userid,username,password,phone,email,type) values('"+userid+"','"+username+"','"+password+"','"+phone+"','"+email+"','"+type+"')");
           
            
       response.sendRedirect("itpLogin.jsp");   
       // out.println("Your Registration Successfull..");
            }
            catch(Exception e){
                out.println(e);
            }
        %>
        
    </body>
</html>
