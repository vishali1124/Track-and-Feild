package org.apache.jsp.user;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.*;

public final class meetevents_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
Class.forName("com.mysql.jdbc.Driver");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Meet Manager Details For Allowances</title>\n");
      out.write("        \n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "userHome.jsp", out, false);
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("                <center><h1>Meet Manager Details For Allowances</h1></center>\n");
      out.write("<center></center>\n");
      out.write("\n");
      out.write("\n");
      out.write("<tr>\n");
      out.write("        \n");
      out.write("    </tr>\n");
      out.write("    <tr>\n");
      out.write("        <tr bgcolor=\"lightblue\">\n");
      out.write("        <td><b> User ID</b></td>\n");
      out.write("        <td><b> EID</b></td>\n");
      out.write("        <td><b> Events </b></td>\n");
      out.write("        <td><b> Grading </b></td>\n");
      out.write("        \n");
      out.write("    </tr>\n");
      out.write("    \n");
      out.write("        <!--getting the database connection-->\n");
      out.write("        ");
 String url="jdbc:mysql://localhost/track&field";
           String user="root";
           String pass="";
           String userid="";

            try{
               //getting all item details from database 
               Connection conn=DriverManager.getConnection(url,user,pass);
                Statement ss=conn.createStatement();
            String sql1="SELECT * from grading ";
            
            
            ResultSet rs1=ss.executeQuery(sql1);
            while(rs1.next()){
                
      out.write("\n");
      out.write("                 \n");
      out.write("                <td>");
      out.print(rs1.getString("userid"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs1.getString("eid"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs1.getString("nevents"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs1.getString("grading"));
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("            \n");
      out.write("            ");
   
                }

            conn.close();
           }catch(SQLException e){
               e.printStackTrace();
               
           }
        
      out.write("\n");
      out.write("\n");
      out.write("       \n");
      out.write("       \n");
      out.write("       <br><br><br>\n");
      out.write("        \n");
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
