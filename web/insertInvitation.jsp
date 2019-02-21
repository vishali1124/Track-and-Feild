<%@page import="java.sql.*,java.util.*"%>
<%
    String meet=request.getParameter("meet");
    String date=request.getParameter("date");
    String time=request.getParameter("time");
    String location=request.getParameter("location");

    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field", "root", "");
        Statement st=conn.createStatement();

        int a=st.executeUpdate("INSERT INTO invitation(meet,date,time,location)VALUES('"+meet+"','"+date+"','"+time+"','"+location+"')");
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Insert Invitation</title>
    </head>
    <body>
    <center>            
<%
        out.println("Data is successfully inserted!");
    }
    catch(Exception e){
        //System.out.print(e);
        e.printStackTrace();
    }
%>  
        <br><br><br><br><br><br><br><br><br>
        <a href="retrieveInvitation.jsp"><button>OK</button></a>
    </center>
    </body>
</html> 
