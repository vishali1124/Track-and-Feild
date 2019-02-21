

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%> 
<%@page import="java.sql.DriverManager"%>
<%--@page import="com.mysql.jdbc.Connection"--%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.*"%>
<%Class.forName("com.mysql.jdbc.Driver");%>
<!DOCTYPE html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<jsp:include page="schedulehome.jsp"/>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
    <center><h1>Final Report (Schedule Management)- Inter Faculty Track & Field Championship-2018</h1></center>

    <br><br><br>

    
    <br><br>
    <center><div>
            <h3>Schedule Plan</h3>
            <table style="width: 50%" border="1">
                <tr class="table-info">
                <b>
                   
                    <td ><b>Date</b></td>
                    <td><b>Event Name </b></td>
                    
                </b>
                </tr>
                <% String url="jdbc:mysql://localhost/track&field";
           String user="root";
           String pass="";
           
           
           try{
               //getting all item details from database 
               Connection con=DriverManager.getConnection(url,user,pass);
                Statement s=con.createStatement();
            String sql="SELECT start,title from schedule group by start,title";
          
            
            ResultSet rs=s.executeQuery(sql);
             
            while(rs.next()){
                %>
                <tr class="table-active">
                                    <td><%=rs.getString("start")%></td>
                <td><%=rs.getString("title")%></td>
                </tr>


                <%   
                }
            con.close();
           }catch(SQLException e){
               e.printStackTrace();
               
           }
        %>

            </table></div></center>
    
</body>
</html>
