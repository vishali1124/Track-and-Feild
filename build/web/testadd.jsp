
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
        
        
        
        <link href="inventory/CSS/add.css" rel="stylesheet" type="text/css"/>
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
        
        
        
        <div id="contact-form" style="width: 400px;">
	
            <form method="post" action="/">
                <h3>Add Items & Equipments</h3>  
                <div>		          
		<label for="itype">
		    <span>Equipmentt Type: </span>
               	        <select name="itype" tabindex="1" required>   
			    <option> Choose Type...</option>    
                            <option value="Track"> Track Equipment</option>
                            <option value="Field"> Field Equipment</option>
                   </select>
			</select>
		      </label>
                </div>
                <div>
                    <label for="Item Name">
                        <span class="required">Item Name: *</span> 
                        <input name="iName" placeholder="Enter the item name" type="text" tabindex="2" required>                    
                    </label> 
		</div>
		<div>
		    <label for="Quantity">
		    <span class="required">Quantity: *</span>
                    <input placeholder="Enter how many quantity" name="quantity" type="text" tabindex="3"  required>		     </label>  
		</div>
                <div>
		    <label for="Condition">
		    <span class="required">Condition: *</span>
                    <input placeholder="Item condition" name="conditionStatement" type="text" tabindex="4"  required>		     </label>  
		</div>
                <div>
		    <label for="add">
		    <input type="submit" name="add"  class="btn btn-primary " style="width: 100px;" value="Add">		     </label>  
		</div>
			
			
            </form>
	</div>
        
        
        
    </body>
</html>
