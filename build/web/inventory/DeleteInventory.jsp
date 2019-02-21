
<!DOCTYPE html>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>

<!-- java variable declaration-->
<% 
    String driverName="com.mtsql.jdbc.Driver";
    String driver = "com.mysql.jdbc.Driver";
    
    String connectionUrl = "jdbc:mysql://localhost:3306/";
    String database = "track&field";
    String userid = "root";
    String password = "";
    
    String inventoryID=request.getParameter("inventoryID");

%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inventory</title>
    </head>
    
    <body>
        
        <%        
            session.setAttribute("userid",inventoryID);
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/track&field", "root", "");
                Statement st=conn.createStatement();
                int i=st.executeUpdate("DELETE FROM inventory WHERE inventoryID='"+inventoryID+"'");
                out.println("Data Deleted Successfully!");
                response.sendRedirect("inventory.jsp");
            }
            catch(Exception e)
            {
                System.out.print(e);
                e.printStackTrace();
            }
        %>
    </body>
</html>
