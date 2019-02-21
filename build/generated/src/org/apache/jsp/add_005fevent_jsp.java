package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Connection;

public final class add_005fevent_jsp extends org.apache.jasper.runtime.HttpJspBase
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
 int sid = 0; 
      out.write('\n');

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field", "root", "");
    ResultSet rs = con.createStatement().executeQuery("SELECT COUNT(`sid`) FROM `schedule`");
    if (rs.next()) {
        sid = rs.getInt(1)+1;
    }

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <!--<link href=\"CSS/layout.css\" rel=\"stylesheet\" type=\"text/css\"/>-->\n");
      out.write("        \n");
      out.write("        <link href=\"form.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <title>Add Schedule</title>\n");
      out.write("        \n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            \n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"header\">\n");
      out.write("            <img class=\"header_img\" src=\"hp.png\" alt=\"\" width=\"100%\" />\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("         <br><br><br>\n");
      out.write("         \n");
      out.write("        \n");
      out.write("        <div class=\"l\">\n");
      out.write("            <img  src=\"images/book.png\" alt=\"\"/>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <br><br><br>\n");
      out.write("         \n");
      out.write("        <div class=\"formbox\" >\n");
      out.write("            \n");
      out.write("            <h2><center>Add Event to Schedule Plan</center></h2>\n");
      out.write("            \n");
      out.write("        \n");
      out.write("       \n");
      out.write("            <form name=\"add\" action=\"event_servlet\" method=\"POST\"  align=\"center\"  onsubmit=\"return addValidate()\" >\n");
      out.write("            <p>Schedule ID</p>\n");
      out.write("            <input type=\"text\" name=\"sid\" value=\"");
      out.print(sid);
      out.write("\" readonly=\"\"/>\n");
      out.write("            <p>Event Name</p>\n");
      out.write("            <input type=\"text\" name=\"title\" value=\"\" placeholder=\"Enter event Name\" required=\"\"/>\n");
      out.write("            <p>Start Day</p>\n");
      out.write("            <input type=\"date\" name=\"start\" value=\"\" required=\"\"/>\n");
      out.write("            <p>End Day</p>\n");
      out.write("            <input type=\"date\" name=\"end\" value=\"\" required=\"\"/>\n");
      out.write("            <p>Location</p>\n");
      out.write("            <input type=\"text\" name=\"location\" value=\"\" required=\"\"/>\n");
      out.write("            <p>Start Time</p>\n");
      out.write("            <input type=\"time\" name=\"starttime\" value=\"\" placeholder=\"Enter appopriate time\" required=\"\"/>\n");
      out.write("            <p>Duration</p>\n");
      out.write("            <input type=\"text\" name=\"duration\" value=\"\" required=\"\"/>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            <input type=\"submit\" name=\"submit\" value=\"Submit\" >\n");
      out.write("            <a href=\"view_cal.jsp\">View</a>\n");
      out.write("           \n");
      out.write("            \n");
      out.write("               \n");
      out.write("\n");
      out.write("        </form>\n");
      out.write("                    \n");
      out.write("        \n");
      out.write("        \n");
      out.write("         ");
      out.print( request.getParameter("message") );
      out.write("\n");
      out.write("                   <!--<a href=\"viewCal.jsp\">view</a>-->\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("                   \n");
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
