

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inventory</title> 
    </head>
    
    <body>
        <%! String driverName = "com.mysql.jdbc.Driver";%>
        <%!String url = "jdbc:mysql://localhost:3306/track&field";%>
        <%!String user = "root";%>
        <%!String psw = "";%>
          
        <%
            Connection  con = DriverManager.getConnection(url,user,psw);
            PreparedStatement ps = null;
            String inventoryID = request.getParameter("inventoryID");
            String itype=request.getParameter("itype");
            String iName=request.getParameter("iName");
            String quantity=request.getParameter("quantity");
            String conditionStatement=request.getParameter("conditionStatement");
          

            if(inventoryID != null)
            {
                try
                {
                    Class.forName(driverName);
            
                    String sql="Update inventory set inventoryID=?,itype=?,iName=?,quantity=?,conditionStatement=? where  inventoryID='"+inventoryID+"'";
                    ps = con.prepareStatement(sql);
                    ps.setString(1,inventoryID);
                    ps.setString(2, itype);
                    ps.setString(3, iName);
                    ps.setString(4, quantity);
                    ps.setString(5, conditionStatement);
                    response.sendRedirect("inventory.jsp");

                    int i = ps.executeUpdate();
                    
                    if(i > 0)
                    {
                        out.print("Record Updated Successfully");
                    }
                    else
                    {
                        out.print("There is a problem in updating Record.");
                    } 
                }
                catch(SQLException sql)
                {
                    request.setAttribute("error", sql);
                    out.println(sql);
                }
            }
        %>
    </body>
</html>
