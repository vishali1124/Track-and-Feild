
<%@page import="java.sql.*,java.util.*"%>
<%
    String name=request.getParameter("name");
    String address=request.getParameter("address");
    String phone=request.getParameter("phone");
    String email=request.getParameter("email");
    String work=request.getParameter("work");
    String designation=request.getParameter("designation");
    String position=request.getParameter("position");
    String charge=request.getParameter("charge");

    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field", "root", "");
        Statement st=conn.createStatement();

        int i=st.executeUpdate("insert into judges(name,address,phone,email,work,designation,position,charge)values('"+name+"','"+address+"','"+phone+"','"+email+"','"+work+"','"+designation+"','"+position+"','"+charge+"')");
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Inserted Judges</title>
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
        <a href="retrieve.jsp"><button>OK</button></a>
    </center>
    </body>
</html> 
