package org.apache.jsp.user;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;

public final class itpLogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Login</title>\n");
      out.write("        \n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "userHome.jsp", out, false);
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("    <center>\n");
      out.write("        \n");
      out.write("        <form name=\"myForm\" method=\"post\" action=\"login\" >\n");
      out.write("            \n");
      out.write("            <h1>Please login here..</h1>\n");
      out.write("            \n");
      out.write("            <table>\n");
      out.write("\n");
      out.write("                <tr>\n");
      out.write("            <td><lable>Email</lable></td>\n");
      out.write("            <td><input type=\"text\" name=\"email\" placeholder=\"Enter Your Email\" required=\"required\" ></td>\n");
      out.write("            \n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("             <td><lable>Password</lable></td>\n");
      out.write("             <td><input type=\"password\" name=\"password\" placeholder=\"Enter Password\"  required=\"required\"></td>\n");
      out.write("             </tr>\n");
      out.write("             <tr></tr>\n");
      out.write("             <tr></tr>\n");
      out.write("             <tr>\n");
      out.write("                 <td><input type=\"submit\" name=\"action\" value=\"Login\"/>&nbsp;&nbsp;&nbsp;\n");
      out.write("                 <input type=\"reset\" value=\"Reset\" /></td>\n");
      out.write("             </tr>\n");
      out.write("             \n");
      out.write("             <tr></tr>\n");
      out.write("             <tr></tr>\n");
      out.write("             <tr><td><button style=\"width:100px;height:50px;color: black\" type=\"submit\" name=\"forgot password\" onclick=\"location.href='forgot.jsp'\">Forgot Password</button></td></tr>\n");
      out.write("             \n");
      out.write("             </table>\n");
      out.write("        </form>\n");
      out.write("        \n");
      out.write("        \n");
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
