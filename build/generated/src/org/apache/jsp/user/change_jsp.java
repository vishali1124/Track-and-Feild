package org.apache.jsp.user;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class change_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title></title>\n");
      out.write("         ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "userHome.jsp", out, false);
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <center>\n");
      out.write("            <br><br><br><br>\n");
      out.write("<form action=\"changepwd.jsp\" method=\"post\">\n");
      out.write("<table>\n");
      out.write("<tr><td>User ID</td><td><input type=\"text\" name=\"userid\" ></td></tr>   \n");
      out.write("<tr><td>Current Password</td><td><input type=\"password\" name=\"password\" ></td></tr>\n");
      out.write("<tr><td>New Password</td><td><input type=\"password\" name=\"newpassword\"></td></tr>\n");
      out.write("<tr><td>Confirm Password</td><td><input type=\"password\" name=\"confirm\"></td></tr>\n");
      out.write("<tr></tr>\n");
      out.write("<tr></tr>\n");
      out.write("<tr></tr>\n");
      out.write("<tr></tr>\n");
      out.write("<tr></tr>\n");
      out.write("<tr></tr>\n");
      out.write("<tr></tr>\n");
      out.write("<tr></tr>\n");
      out.write("<tr><td><input type=\"submit\" value=\"Change Password\"></td><td><input type=\"reset\" value=\"Cancel\"></td></tr>\n");
      out.write("</table>\n");
      out.write("</form>\n");
      out.write("    </center>\n");
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
