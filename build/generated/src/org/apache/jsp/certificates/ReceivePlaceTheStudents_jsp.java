package org.apache.jsp.certificates;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;

public final class ReceivePlaceTheStudents_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            Connection conn;
            Statement stat;
            ResultSet result;
            String qry;
            Integer EID;
        
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
      out.write("        <title>Receive Place the students</title>\n");
      out.write("        \n");
      out.write("    \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div>\n");
      out.write("      <nav class=\"nav\">\n");
      out.write("       \n");
      out.write("        \n");
      out.write("   <!-- part with logo and login-->\n");
      out.write("        \n");
      out.write(" \n");
      out.write("        </nav>\n");
      out.write("    </div>         \n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field","root","");
                stat= conn.createStatement();
                qry="SELECT * FROM places";
                result=stat.executeQuery(qry);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        
      out.write("\n");
      out.write("    <center>\n");
      out.write("        <h1>results</h1>\n");
      out.write("        \n");
      out.write("       \n");
      out.write("        \n");
      out.write("        </br>\n");
      out.write("        </br>\n");
      out.write("        <table border=\"1\" cellspacing=\"5\" cellpadding=\"4\" style=\"border-style:solid;\">\n");
      out.write("            <thead>\n");
      out.write("                <tr>\n");
      out.write("                    <th><b>EID</b></th>\n");
      out.write("                    <th><b>DAte</b></th>\n");
      out.write("                    <th><b>Time</b></th>\n");
      out.write("                    <th><b>Place</b></th>\n");
      out.write("                    <th><b>SID</b></th>\n");
      out.write("                    <th><b>Fac Id</b></th>\n");
      out.write("                    <th><b>Record</b></th>\n");
      out.write("\n");
      out.write("                                        \n");
      out.write("                    <th colspan=\"2\">Actions</th>\n");
      out.write("                </tr>\n");
      out.write("            </thead>\n");
      out.write("            <tbody>\n");
      out.write("                ");

                    while (result.next()){
                        EID=result.getInt("EID");
                
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    \n");
      out.write("                    <td>");
      out.print(result.getString("EID"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(result.getString("date"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(result.getString("time"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(result.getString("place"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(result.getString("SID"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(result.getString("FacId"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(result.getString("Record"));
      out.write("</td>\n");
      out.write("\n");
      out.write("                    \n");
      out.write("                    <td><a href=\"editTrainee.jsp?id=");
      out.print(EID);
      out.write("\">Update</a></td>\n");
      out.write("                    <td><a href=\"deleteTrainee.jsp?id=");
      out.print(EID);
      out.write("\" onclick=\"return confirm('Are you Sure?')\">Delete</a></td>\n");
      out.write("                </tr>\n");
      out.write("                ");

                    }
                
      out.write(" \n");
      out.write("                \n");
      out.write("            </tbody>\n");
      out.write("        </table>\n");
      out.write("\n");
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
