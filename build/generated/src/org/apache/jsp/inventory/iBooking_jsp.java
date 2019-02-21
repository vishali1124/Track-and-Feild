package org.apache.jsp.inventory;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.*;
import java.io.*;
import inventory.Inventory;

public final class iBooking_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            Connection conn;
            Statement stat;
            ResultSet result;
            String qry;
            Integer inventoryID;
        
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(" \n");
      out.write(" \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

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
   

      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 3.2 Final//EN\">\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Inventory</title>\n");
      out.write("        \n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\" integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.2.0/css/all.css\" integrity=\"sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ\" crossorigin=\"anonymous\">\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js\" integrity=\"sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js\" integrity=\"sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49\" crossorigin=\"anonymous\"></script>\n");
      out.write("        \n");
      out.write("        <link href=\"CSS/booking.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Layout.jsp", out, false);
      out.write("\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        ");
     
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
        
      out.write("\n");
      out.write("        \n");
      out.write("        <div class=\"l\">\n");
      out.write("            <img  src=\"images/book.png\" alt=\"\"/>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"container\" style=\"width: 400px;\"> \n");
      out.write("            \n");
      out.write("            <form id=\"contact\" action=\"Inventory\" method=\"post\" onsubmit=\"return checkQuantity()\" >\n");
      out.write("                <h3>Booking Items & Equipments</h3>             \n");
      out.write("     \n");
      out.write("                <fieldset>                    \n");
      out.write("                    <select name=\"itype\" tabindex=\"1\" class=\"btn btn-secondary dropdown-toggle\" required>\n");
      out.write("                    <option >Choose Type...</option>    \n");
      out.write("                    <option value=\"Hurdles\">Hurdles</option>\n");
      out.write("                    <option value=\"Starting-Blocks\">Starting Blocks</option>\n");
      out.write("                    <option value=\"Relay-Batons-Spikes\">Relay Batons and Spikes</option>\n");
      out.write("                    <option value=\"Throwing-Equipment\">Throwing Equipment</option>\n");
      out.write("                    <option value=\"Discus-Implements\">Discus Implements</option>\n");
      out.write("                    <option value=\"Pole-Vault-Equipment\">Pole Vault Equipment</option>\n");
      out.write("                    <option value=\"High-Jump-Equipment\">High Jump Equipment</option>\n");
      out.write("                    <option value=\"Long-Jump-Equipment\">Long Jump Equipment</option>\n");
      out.write("                    <option value=\"Gates-and-Markers\">Gates and Markers</option>\n");
      out.write("                    <option value=\"Aluminum-Track-Curbing\">Aluminum Track Curbing</option>\n");
      out.write("                    <option value=\"Equipment-Storage\">Equipment Storage</option>\n");
      out.write("                    <option value=\"Meet-Essentials\">Meet Essentials</option>\n");
      out.write("                    <option value=\"Stopwatches-and-Timing-Systems\">Stopwatches & Timing Systems</option>\n");
      out.write("                   </select>\n");
      out.write("                </fieldset>\n");
      out.write("                <br>\n");
      out.write("                <fieldset>\n");
      out.write("                    <input name=\"itemName\"  placeholder=\"Item Name\" type=\"text\" tabindex=\"2\" required>\n");
      out.write("                </fieldset>\n");
      out.write("                <br>\n");
      out.write("                <fieldset>\n");
      out.write("                    <select name=\"EventName\" tabindex=\"3\" class=\"btn btn-secondary dropdown-toggle\" required>\n");
      out.write("                        <option >Choose Event...</option>    \n");
      out.write("                        <option value=\"100m\">100m</option>\n");
      out.write("                        <option value=\"200m\">200m</option>\n");
      out.write("                        <option value=\"1000m\">1000m</option>\n");
      out.write("                        <option value=\"5000m\">5000m</option>\n");
      out.write("                        <option value=\"hurdles\">hurdles</option>\n");
      out.write("                        <option value=\"relay-100m\">relay-100m</option>\n");
      out.write("                        <option value=\"relay-400m\">relay-400m</option>\n");
      out.write("                        <option value=\"Long-Jump\">Long Jump </option>\n");
      out.write("                        <option value=\"High-Jump\">High-Jump</option>\n");
      out.write("                         <option value=\"Disk\">High-Jump</option>\n");
      out.write("                   </select>\n");
      out.write("                </fieldset>\n");
      out.write("                <br>\n");
      out.write("                <fieldset>\n");
      out.write("                    <input name=\"date\" id=\"date\"   class=\"border\" placeholder=\"Date\" type=\"date\" tabindex=\"4\"  required>\n");
      out.write("                </fieldset>\n");
      out.write("                <br>\n");
      out.write("                <fieldset>\n");
      out.write("                    <input name=\"qut\" placeholder=\"Quantity\" id=\"date\"   type=\"number\"  class=\"border\" tabindex=\"5\" required>\n");
      out.write("                </fieldset>          \n");
      out.write("                <br>\n");
      out.write("                <fieldset>\n");
      out.write("                    <input name=\"handOverDate\" id=\"date\" name=\"handOverDate\" class=\"border\" placeholder=\"Hand OVer Date\" type=\"date\" tabindex=\"6\" required>\n");
      out.write("                </fieldset>\n");
      out.write("                <br>\n");
      out.write("                <fieldset align=\"center\">\n");
      out.write("                    <input type=\"submit\" name=\"book\" onclick=\"return confirm('confirm?')\" class=\"btn btn-primary \" style=\"width: 100px;\" value=\"Book\">\n");
      out.write("                </fieldset>\n");
      out.write("                \n");
      out.write("             </form>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <br><br><br><br><br><br>\n");
      out.write("        \n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

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
        
      out.write("\n");
      out.write("        \n");
      out.write("        <center>\n");
      out.write("\n");
      out.write("            <div style=\"width: 1330px;\" >       \n");
      out.write("                <table class=\"table\">\n");
      out.write("                    <thead class=\"table-primary\">\n");
      out.write("                        <tr>\n");
      out.write("                           <th scope=\"col\">Booking-ID</th>\n");
      out.write("                           <th scope=\"col\">Equipment Type</th>\n");
      out.write("                           <th scope=\"col\">Item Name </th>\n");
      out.write("                           <th scope=\"col\">Event Name</th> \n");
      out.write("                           <th scope=\"col\">Date</th>\n");
      out.write("                           <th scope=\"col\">Quantity</th>\n");
      out.write("                           <th scope=\"col\">Hand Over Date</th>\n");
      out.write("                           <th scope=\"col\">Update</th> \n");
      out.write("                           <th scope=\"col\">Delete</th> \n");
      out.write("                        </tr>  \n");
      out.write("                    </thead>\n");
      out.write("                    ");

                        try{
                        connection = DriverManager.getConnection(connectionUrl+database, userid, password);
                        statement=connection.createStatement();
                        String sql ="select * from inventorybooking";
                        resultSet = statement.executeQuery(sql);
                        while(resultSet.next()){
                    
      out.write("\n");
      out.write("                    <tbody>\n");
      out.write("                        <tr>\n");
      out.write("                            <td scope=\"row\">");
      out.print(resultSet.getString("eiID") );
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(resultSet.getString("itype") );
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(resultSet.getString("itemName") );
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(resultSet.getString("EventName") );
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(resultSet.getString("date") );
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(resultSet.getString("qut") );
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(resultSet.getString("handOverDate") );
      out.write("</td>\n");
      out.write("                            <td><a  href=\"BookingEdit.jsp?eiID=");
      out.print(resultSet.getString("eiID"));
      out.write("\" class=\"btn btn-primary \" onclick=\"return confirm('are you sure ?')\" style=\"width: 100px;\">Update</a></td>\n");
      out.write("                            <td><a href=\"DeleteBooking.jsp?eiID=");
      out.print(resultSet.getString("eiID"));
      out.write("\"  class=\"btn btn-primary \" onclick=\"return confirm('Are you sure to delete?')\" style=\"width: 100px;\">Delete</a></td>\n");
      out.write("                        </tr>\n");
      out.write("\n");
      out.write("                        ");

                            }
                            connection.close();
                            } catch (Exception e) {
                            e.printStackTrace();
                            }
                        
      out.write("\n");
      out.write("                    </tbody>    \n");
      out.write("                </table>\n");
      out.write("            </div>\n");
      out.write("        </center>\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
