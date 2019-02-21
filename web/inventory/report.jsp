<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
    String inventoryID = request.getParameter("inventoryID");
    String driver = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost/";
    String database = "track&field";
    String userid = "root";
    String password = "";
    
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
    
    try 
    {
        Class.forName(driver);
    } 
    catch (ClassNotFoundException e) 
    {
        e.printStackTrace();
    }
   
%>

<html>
    <head>        
        <title>Inventory</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    
        <link href="CSS/booking.css" rel="stylesheet" type="text/css"/>
        <jsp:include page="Layout.jsp"/>
    </head>
    
    <body>
    <center>
        <h3 style="color: #000033;"><span class="badge badge-primary" style="width: 500px;">Report for Track & Field</span></h3> 
        <br><br>    
    </center>
         <%!
            Connection conn;
            Statement stat;
            ResultSet result;
            String qry;          
            Integer inventoryID;
        %>
        <%
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field","root","");
                stat= conn.createStatement();
                qry="SELECT * FROM inventory";
                result=stat.executeQuery(qry);  
            } 
            catch(ClassNotFoundException cnfe)
            {
               System.out.println("Class not found exception" + cnfe.toString());
            } 
            catch(SQLException sqle)
            {
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
        <form>
        <center>
            <!--inventory table start-->
           <div style="width: 600px; float: left;" > 
            <h3 style="color: #000033;"><span class="badge badge-primary">Good Condition Inventory</span></h3>            
            
                <table class="table">
                    <thead class="table-primary">
                        <tr>
                           <th scope="col">Equipment Type</th>
                           <th scope="col">Item Name </th>
                           <th scope="col">Total Quantity</th> 
                        </tr>  
                    </thead>
                    <%
                        try{
                        connection = DriverManager.getConnection(connectionUrl+database, userid, password);
                        statement=connection.createStatement();
                        String sql ="select * from inventory where conditionStatement like '%good%' ";
                        resultSet = statement.executeQuery(sql);
                        while(resultSet.next()){
                    %>
                    <tbody>
                        <tr>
                            <td><%=resultSet.getString("itype") %></td>
                            <td><%=resultSet.getString("iName") %></td>
                            <td><%=resultSet.getString("quantity") %></td>
                        </tr>

                        <%
                            }
                            connection.close();
                            } catch (Exception e) {
                            e.printStackTrace();
                            }
                        %>
                    </tbody>    
                </table>
                    
            </div>
                    
                    
            <div style="width: 600px; float: right;" > 
                <h3 style="color: #000033;"><span class="badge badge-primary">Bad Condition Inventory</span></h3>            
            
                <table class="table">
                    <thead class="table-primary">
                        <tr>
                           <th scope="col">Equipment Type</th>
                           <th scope="col">Item Name </th>
                           <th scope="col">Total Quantity</th> 
                           </tr>  
                    </thead>
                    <%
                        try{
                        connection = DriverManager.getConnection(connectionUrl+database, userid, password);
                        statement=connection.createStatement();
                        String sql ="select * from inventory where conditionStatement like '%need%' or conditionStatement like '%bad%'";
                        resultSet = statement.executeQuery(sql);
                        while(resultSet.next()){
                    %>
                    <tbody>
                        <tr>
                            <td><%=resultSet.getString("itype") %></td>
                            <td><%=resultSet.getString("iName") %></td>
                            <td><%=resultSet.getString("quantity") %></td>
                        </tr>

                        <%
                            }
                            connection.close();
                            } catch (Exception e) {
                            e.printStackTrace();
                            }
                        %>
                    </tbody>    
                </table>
                    
            </div>
             <!--inventory table end-->  
             
             <br><br><br><br><br> <br><br><br><br><br> <br><br><br><br><br><br><br><br><br><br> <br><br><br><br><br>
             <!--Issued-Items table start--> 
             <div style="width: 600px; float: left; " >  
                 <h3 style="color: #000033;"><span class="badge badge-primary">Inventory Items use for this Event</span></h3>
             
                <table class="table">
                    <thead class="table-primary">
                        <tr>
                           <th scope="col">Equipment Type</th>
                           <th scope="col">Item Name </th>
                          
                           <th scope="col">Total Quantity</th>
                           
                        </tr>  
                    </thead>
                    <%
                        try{
                        connection = DriverManager.getConnection(connectionUrl+database, userid, password);
                        statement=connection.createStatement();
                        String sql ="select * from inventorybooking";
                        resultSet = statement.executeQuery(sql);
                        while(resultSet.next()){
                    %>
                    <tbody>
                        <tr>
                            <td><%=resultSet.getString("itype") %></td>
                            <td><%=resultSet.getString("itemName") %></td>
                            
                            <td><%=resultSet.getString("qut") %></td>
                           
                        </tr>

                        <%
                            }
                            connection.close();
                            } catch (Exception e) {
                            e.printStackTrace();
                            }
                        %>
                    </tbody>    
                </table>
            </div>
             
             <!--Issued-Items  table end--> 
                        
             <!--Pending-Items  table start-->
             <h3 style="color: #000033;"><span class="badge badge-primary">Pending Items</span></h3>
             <div style="width: 600px; float: right;" >       
                <table class="table">
                    <thead class="table-primary">
                        <tr>
                           <th scope="col">Item Name </th>
                           <th scope="col">Booking Date</th>
                           <th scope="col">Total Quantity</th>
                           <th scope="col">hand Over Date</th>                           
                        </tr>  
                    </thead>
                    <%
                        try
                        {
                            connection = DriverManager.getConnection(connectionUrl+database, userid, password);
                            statement=connection.createStatement();
                            String sql ="select * from eihas where handOverDate>=CURDATE() ";
                            resultSet = statement.executeQuery(sql);
                            while(resultSet.next()){
                        %>
                    <tbody>
                        <tr>
                            <td><%=resultSet.getString("itemName") %></td>
                            <td><%=resultSet.getString("date") %></td>
                            <td><%=resultSet.getString("qut") %></td>
                            <td><%=resultSet.getString("handOverDate") %></td>
                        </tr>

                        <%
                            }
                            connection.close();
                            } catch (Exception e) {
                            e.printStackTrace();
                            }
                        %>
                    </tbody>    
                </table>
            </div>
             <!--Pending-Items  table end--> 
            
        </center>  
        </form>           
        
    </body>
</html>
