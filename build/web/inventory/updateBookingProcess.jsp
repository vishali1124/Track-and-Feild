

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
            String eiID = request.getParameter("eiID");
            String itype=request.getParameter("itype");
            String itemName=request.getParameter("itemName");
            String EventName=request.getParameter("EventName");
            String date=request.getParameter("date");
            String qut=request.getParameter("qut");
            String handOverDate=request.getParameter("handOverDate");
          

            if(eiID != null)
            {
                try
                {
                    Class.forName(driverName);
                
                    String sql="Update inventorybooking set eiID=?,itype=?,itemName=?,EventName=?,date=?,qut=?,handOverDate=? where  eiID='"+eiID+"'";
                    ps = con.prepareStatement(sql);
                    ps.setString(1,eiID);
                    ps.setString(2, itype);
                    ps.setString(3, itemName);
                    ps.setString(4, EventName);
                    ps.setString(5, date);
                    ps.setString(6, qut);
                    ps.setString(7, handOverDate);
                    response.sendRedirect("iBooking.jsp");

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
