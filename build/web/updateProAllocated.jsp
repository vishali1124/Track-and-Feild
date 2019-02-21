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
    String event=request.getParameter("event");
    String meet=request.getParameter("meet");
    String gender=request.getParameter("gender");
    String njudges=request.getParameter("njudges");
    String referee=request.getParameter("referee");
    String judgeUmpier=request.getParameter("judgeUmpier");
    String timeKeeper=request.getParameter("timeKeeper");
    String startTeam=request.getParameter("startTeam");
    
    session.setAttribute("user",event);

    if(event != null)
    {
        Connection con = null;
        PreparedStatement ps = null;
//        int personID = Integer.parseInt(name);
        
        try{
            Class.forName(driverName);
            con = DriverManager.getConnection(url,user,psw);
            String sql="UPDATE allocated SET meet=?,gender=?,njudges=?,referee=?,judgeUmpier=?,timeKeeper=?,startTeam=? where event='"+event+"'";
            ps = con.prepareStatement(sql);
            
            ps.setString(1, meet);
            ps.setString(2, gender);
            ps.setString(3, njudges);
            ps.setString(4, referee);
            ps.setString(5, judgeUmpier);
            ps.setString(6, timeKeeper);
            ps.setString(7, startTeam);

            int i = ps.executeUpdate();
            if(i > 0){
                out.print("Record Updated Successfully!");
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
            <a href="retrieveAllocated.jsp">OK</a>
        </center> 
</body>
</html>
