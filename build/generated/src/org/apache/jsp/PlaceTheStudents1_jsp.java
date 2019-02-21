package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;

public final class PlaceTheStudents1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            Connection conn;
            Statement stat;
            ResultSet result;
            String qry;
            Integer eid;
        
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv =\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"External/fontawesome/css/all.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"External/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <script src=\"External/js/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js\" integrity=\"sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49\" crossorigin=\"anonymous\"></script>\n");
      out.write("        \n");
      out.write("        <title>Events Held</title>\n");
      out.write("        \n");
      out.write("          ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "LayoutR.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         \n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field","root","");
                stat= conn.createStatement();
                qry="SELECT * FROM placeaf";
                result=stat.executeQuery(qry);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        
      out.write("\n");
      out.write("  \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <center>\n");
      out.write("        \n");
      out.write("        <h1>EVENTS HELD</h1>\n");
      out.write("        \n");
      out.write("       \n");
      out.write("        \n");
      out.write("        </br>\n");
      out.write("        </br>\n");
      out.write("        <table class=\"table table-hover\" border=\"1\" cellspacing=\"5\" cellpadding=\"4\" style=\"border-style:solid;width:75%;\">\n");
      out.write("            <thead>\n");
      out.write("                <tr>\n");
      out.write("                    <th><b>Event ID</b></th>\n");
      out.write("                    <th><b>Event Name</b></th>\n");
      out.write("                    <th><b>Type</b></th>\n");
      out.write("                    <th><b>Event type</b></th>\n");
      out.write("                    <th><b>Gender</b></th>\n");
      out.write("                    <th><b>Date</b></th>\n");
      out.write("                    <th></th>\n");
      out.write("                </tr>\n");
      out.write("            </thead>\n");
      out.write("            <tbody>\n");
      out.write("                ");

                    while (result.next()){
                        eid=result.getInt("eid");
                
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td>");
      out.print(result.getString("eid"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(result.getString("ename"));
      out.write("</td>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <td>");
      out.print(result.getString("type"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(result.getString("etype"));
      out.write("</td>\n");
      out.write("\n");
      out.write("                    <td>");
      out.print(result.getString("gender"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(result.getString("date"));
      out.write("</td>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <td><a href=\"PlaceTheStudents2.jsp?id=");
      out.print(eid);
      out.write("\">Place the Students</a></td>\n");
      out.write("                </tr>\n");
      out.write("                ");

                    }
                
      out.write(" \n");
      out.write("                \n");
      out.write("            </tbody>\n");
      out.write("        </table>\n");
      out.write("\n");
      out.write("                \n");
      out.write("    </center>\n");
      out.write("   \n");
      out.write("   \n");
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
