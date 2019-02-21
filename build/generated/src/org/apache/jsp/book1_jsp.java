package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.*;

public final class book1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

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
      out.write(" \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
Class.forName("com.mysql.jdbc.Driver");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        \n");
      out.write("               ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "schedulehome.jsp", out, false);
      out.write("\n");
      out.write("               \n");
      out.write("               <link href=\"secmain.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("\t\t\n");
      out.write("                                      <center><h1>Get Ground Reserved Details</h1></center>\n");
      out.write("    <center><table align=\"center \" cellpadding=\"10\" cellspacing=\"20\" border=\"1\" ></center>\n");
      out.write("    \n");
      out.write("        \n");
      out.write("    \n");
      out.write("    <tr>\n");
      out.write("        <tr bgcolor=\"lightblue\">\n");
      out.write("        <!--<td><b> Schedule ID </b></td>-->\n");
      out.write("        <td><b> NIC of Client </b></td>\n");
      out.write("        <td><b>Client Name</b></td>\n");
      out.write("        <td><b> Date  </b></td>\n");
      out.write("        <td><b> Return Date </b></td>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <td><b>Edit</b></td>\n");
      out.write("        <td><b>Delete</b></td>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </tr>\n");
      out.write("    \n");
      out.write("        <!--getting the database connection-->\n");
      out.write("        ");
 String url="jdbc:mysql://localhost/track&field";
           String user="root";
           String pass="";
           
           
           try{
               //getting all item details from database 
               Connection con=DriverManager.getConnection(url,user,pass);
                Statement s=con.createStatement();
            String sql="SELECT * FROM ground";
            
            ResultSet rs=s.executeQuery(sql);
            while(rs.next()){
                
      out.write("\n");
      out.write("                        \n");
      out.write("            <tr>    \n");
      out.write("                \n");
      out.write("                <td>");
      out.print(rs.getString("nic"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("name"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("date"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("resdate"));
      out.write("</td>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                <td><a href=\"update.jsp?nic=");
      out.print(rs.getString("nic"));
      out.write("\">Edit</a></td>\n");
      out.write("                <td><a href=\"bdel.jsp?nic=");
      out.print(rs.getString("nic"));
      out.write("\">Delete</a></td>\n");
      out.write("            </tr>\n");
      out.write("            \n");
      out.write("            ");
   
                }
            con.close();
           }catch(SQLException e){
               e.printStackTrace();
               
           }
        
      out.write("\n");
      out.write("        </table>  \n");
      out.write("        <br><br><br>\n");
      out.write("        <center><button><a href=\"userRo.jsp\" class=\"button\">Go Back</a></button></center>\n");
      out.write("        \n");
      out.write("        <br><br>\n");
      out.write("        <center><button><a href=\"badd.jsp\" class=\"button\">Create a New Booking</a></button></center>\n");
      out.write("                                            \n");
      out.write("                               \n");
      out.write("                                            \n");
      out.write("                                        \n");
      out.write("                                      \n");
      out.write("    </body>\n");
      out.write("</html>");
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
