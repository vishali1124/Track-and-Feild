<%@page import="java.sql.*,java.util.*"%>
<%
    String event=request.getParameter("event");
    String meet=request.getParameter("meet");
    String gender=request.getParameter("gender");
    String njudges=request.getParameter("njudges");
    String referee=request.getParameter("referee");
    String judgeUmpier=request.getParameter("judge&umpires");
    String timeKeeper=request.getParameter("timeKeeper");
    String startTeam=request.getParameter("startTeam");
    
    
            /*String RefereeLi=null;
            String referee[]=request.getParameterValues("referee");
            for(int i=0;i<referee.length;i++){
                RefereeLi=referee[i];
            }*/

    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field", "root", "");
        Statement st=conn.createStatement();

        int a=st.executeUpdate("INSERT INTO allocated(event,meet,gender,njudges,referee,judgeUmpier,timeKeeper,startTeam)VALUES('"+event+"','"+meet+"','"+gender+"','"+njudges+"','"+referee+"','"+judgeUmpier+"','"+timeKeeper+"','"+startTeam+"')");

%>
<!DOCTYPE html>
<html>
    <head>
        <title>Allocated Judges</title>
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
        <a href="retrieveAllocated.jsp"><button>OK</button></a>
    </center>
    </body>
</html> 
