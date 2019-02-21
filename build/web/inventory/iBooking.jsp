<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 

<%@page import="inventory.Inventory" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String inventoryID = request.getParameter("eiID");
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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inventory</title>
        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        
        <link href="CSS/booking.css" rel="stylesheet" type="text/css"/>
        <jsp:include page="Layout.jsp"/>
    </head>
    
    <body>
        
        <%     
            String itype=request.getParameter("itype");
            String itemName=request.getParameter("itemName");
            String EventName=request.getParameter("EventName");
            String date=request.getParameter("date");
            String qut=request.getParameter("qut");
            String handOverDate=request.getParameter("handOverDate");

            String url = "jdbc:mysql://localhost:3306/track&field";
            String user = "root";
            String pass = "";

            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url,user,pass);
                Statement stmt = con.createStatement();

                int i = stmt.executeUpdate("INSERT INTO inventoryBooking(itype,itemName,EventName,date,qut,handOverDate)VALUES('"+itype+"','"+itemName+"','"+EventName+"','"+date+"','"+qut+"','"+handOverDate+"')");
                out.println("Data Is Successfully Inserted !");

            }
            catch(SQLException e)
            {
                System.out.println(e);
                e.printStackTrace();
            }
        %>
        
        <div class="l">
            <img  src="images/book.png" alt=""/>
        </div>
        <div class="container" style="width: 400px;"> 
            
            <form id="contact" action="" method="post" onsubmit="return checkQuantity()" >
                <h3>Booking Items & Equipments</h3>             
     
                <fieldset>                    
                    <select name="itype" tabindex="1" class="btn btn-secondary dropdown-toggle" required>
                    <option >Choose Type...</option>    
                    <option value="Hurdles">Hurdles</option>
                    <option value="Starting-Blocks">Starting Blocks</option>
                    <option value="Relay-Batons-Spikes">Relay Batons and Spikes</option>
                    <option value="Throwing-Equipment">Throwing Equipment</option>
                    <option value="Discus-Implements">Discus Implements</option>
                    <option value="Pole-Vault-Equipment">Pole Vault Equipment</option>
                    <option value="High-Jump-Equipment">High Jump Equipment</option>
                    <option value="Long-Jump-Equipment">Long Jump Equipment</option>
                    <option value="Gates-and-Markers">Gates and Markers</option>
                    <option value="Aluminum-Track-Curbing">Aluminum Track Curbing</option>
                    <option value="Equipment-Storage">Equipment Storage</option>
                    <option value="Meet-Essentials">Meet Essentials</option>
                    <option value="Stopwatches-and-Timing-Systems">Stopwatches & Timing Systems</option>
                   </select>
                </fieldset>
                <br>
                <fieldset>
                    <input name="itemName"  placeholder="Item Name" type="text" tabindex="2" required>
                </fieldset>
                <br>
                <fieldset>
                    <select name="EventName" tabindex="3" class="btn btn-secondary dropdown-toggle" required>
                        <option >Choose Event...</option>    
                        <option value="100m">100m</option>
                        <option value="200m">200m</option>
                        <option value="1000m">1000m</option>
                        <option value="5000m">5000m</option>
                        <option value="hurdles">hurdles</option>
                        <option value="relay-100m">relay-100m</option>
                        <option value="relay-400m">relay-400m</option>
                        <option value="Long-Jump">Long Jump </option>
                        <option value="High-Jump">High-Jump</option>
                         <option value="Disk">High-Jump</option>
                   </select>
                </fieldset>
                <br>
                <fieldset>
                    <input name="date" id="date"   class="border" placeholder="Date" type="date" tabindex="4"  required>
                </fieldset>
                <br>
                <fieldset>
                    <input name="qut" placeholder="Quantity" id="date"   type="number"  class="border" tabindex="5" required>
                </fieldset>          
                <br>
                <fieldset>
                    <input name="handOverDate" id="date" name="handOverDate" class="border" placeholder="Hand OVer Date" type="date" tabindex="6" required>
                </fieldset>
                <br>
                <fieldset align="center">
                    <input type="submit" name="book" onclick="return confirm('confirm?')" class="btn btn-primary " style="width: 100px;" value="Book">
                </fieldset>
                
             </form>
        </div>
        
        <br><br><br><br><br><br>
        
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
                qry="SELECT * FROM inventorybooking";
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
        
        <center>

            <div style="width: 1330px;" >       
                <table class="table">
                    <thead class="table-primary">
                        <tr>
                           <th scope="col">Booking-ID</th>
                           <th scope="col">Equipment Type</th>
                           <th scope="col">Item Name </th>
                           <th scope="col">Event Name</th> 
                           <th scope="col">Date</th>
                           <th scope="col">Quantity</th>
                           <th scope="col">Hand Over Date</th>
                           <th scope="col">Update</th> 
                           <th scope="col">Delete</th> 
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
                            <td scope="row"><%=resultSet.getString("eiID") %></td>
                            <td><%=resultSet.getString("itype") %></td>
                            <td><%=resultSet.getString("itemName") %></td>
                            <td><%=resultSet.getString("EventName") %></td>
                            <td><%=resultSet.getString("date") %></td>
                            <td><%=resultSet.getString("qut") %></td>
                            <td><%=resultSet.getString("handOverDate") %></td>
                            <td><a  href="BookingEdit.jsp?eiID=<%=resultSet.getString("eiID")%>" class="btn btn-primary " onclick="return confirm('are you sure ?')" style="width: 100px;">Update</a></td>
                            <td><a href="DeleteBooking.jsp?eiID=<%=resultSet.getString("eiID")%>"  class="btn btn-primary " onclick="return confirm('Are you sure to delete?')" style="width: 100px;">Delete</a></td>
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
        </center>
        
    </body>
</html>
