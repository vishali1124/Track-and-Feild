
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        <link href="CSS/Layout.css" rel="stylesheet" type="text/css"/>
        <jsp:include page="Layout.jsp"/>
        
    </head>
    <body>
        <div class="l">
            <img  src="images/book.png" alt=""/>
        </div>
        
        <%     
            String itype=request.getParameter("itype");
            String iName=request.getParameter("iName");
            String quantity=request.getParameter("quantity");
            String conditionStatement=request.getParameter("conditionStatement");

            String url = "jdbc:mysql://localhost:3306/track&field";
            String user = "root";
            String pass = "";

            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url,user,pass);
                Statement stmt = con.createStatement();

                int i = stmt.executeUpdate("INSERT INTO inventory(itype,iName,quantity,conditionStatement)VALUES('"+itype+"','"+iName+"','"+quantity+"','"+conditionStatement+"')");
                out.println("Data Is Successfully Inserted !");

            }
            catch(SQLException e)
            {
                System.out.println(e);
                e.printStackTrace();
            }
        %>

        <div class="container" style="width: 400px;" > 

            <form id="contact" action="" method="post">
                <h3>Add Items & Equipments</h3>             

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
                    <input placeholder="Item Name" name="iName" type="text" tabindex="2" required>
                </fieldset>
                <br>
                <fieldset>
                    <input placeholder="Quantity" name="quantity" type="text" tabindex="3"  required>
                </fieldset>
                <br>
                <fieldset>
                    <input placeholder="Condition" name="conditionStatement" type="text" tabindex="4"  required>
                </fieldset>
                <br>
                <fieldset>
                    <input type="submit" name="add"  class="btn btn-primary " style="width: 100px;" value="Add">
                </fieldset>
            </form>
        </div>
    </body>
</html>
