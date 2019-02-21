<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost/track&field";%>
<%!String user = "root";%>
<%!String psw = "";%>

<!DOCTYPE html>
<html>
    <head>
        <title>Updated Judges</title>
    </head>
    <body>
    <center>  
<%
    String name = request.getParameter("name");
    String address=request.getParameter("address");
    String phone=request.getParameter("phone");
    String email=request.getParameter("email");
    String work=request.getParameter("work");
    String designation=request.getParameter("designation");
    String position=request.getParameter("position");
    String charge=request.getParameter("charge");
    
    session.setAttribute("user",name);

    if(name != null)
    {
        Connection con = null;
        PreparedStatement ps = null;
//        int personID = Integer.parseInt(name);
        
        try{
            Class.forName(driverName);
            con = DriverManager.getConnection(url,user,psw);
            String sql="UPDATE judges SET address=?,phone=?,email=?,work=?,designation=?,position=?,charge=? where name='"+name+"'";
            ps = con.prepareStatement(sql);
            
            ps.setString(1, address);
            ps.setString(2, phone);
            ps.setString(3, email);
            ps.setString(4, work);
            ps.setString(5, designation);
            ps.setString(6, position);
            ps.setString(7, charge);

            int i = ps.executeUpdate();
            if(i > 0){
                out.print("Record Updated Successfully");
            }else{
                out.print("There is a problem in updating Record.");
                } 
        }catch(SQLException sql){
            request.setAttribute("error", sql);
            out.println(sql);
        }
    }
%>        
            <br><br>
            <a href="retrieve.jsp"><button>OK</button></a>
        </center> 
</body>
</html>
