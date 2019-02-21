<%@page import="java.sql.*,java.util.*"%>
<% String driverName="com.mysql.jdbc.Driver";%>
<% String url="jdbc:mysql://localhost:3306/";%>
<%String database = "track&field";%>
<% String user="root";%>
<%String psw="";%>

<%
    String name=request.getParameter("name");
    session.setAttribute("user",name);
%>    

<!DOCTYPE html>
<html>
    <head>
        <title>Deleted Judges</title>
    </head>
    <body>       
        <center>
<%    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field", "root", "");
        Statement st=conn.createStatement();
        int i=st.executeUpdate("DELETE FROM judges WHERE name='"+name+"'");
        out.println("Data Deleted Successfully!");
    }catch(Exception e){
        System.out.print(e);
        e.printStackTrace();
    }
%>

            <br><br><br><br><br><br><br><br><br>
            <a href="retrieve.jsp"><button>OK</button></a>
            <br><br>            
        </center>
    </body>
</html>