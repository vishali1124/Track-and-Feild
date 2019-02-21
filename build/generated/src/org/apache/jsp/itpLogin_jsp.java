package org.apache.jsp;

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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Login</title>\n");
      out.write("        \n");
      out.write("         <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\" integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\" crossorigin=\"anonymous\">\n");
      out.write("         <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.2.0/css/all.css\" integrity=\"sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ\" crossorigin=\"anonymous\">\n");
      out.write("         <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js\" integrity=\"sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy\" crossorigin=\"anonymous\"></script>\n");
      out.write("         <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("         <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js\" integrity=\"sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49\" crossorigin=\"anonymous\"></script>\n");
      out.write("        \n");
      out.write("         \n");
      out.write("         <link href=\"login.css\" rel=\"stylesheet\" type=\"text/css\"/>            \n");
      out.write("        <link href=\"CSS/Layout.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Uni.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <script src=\"Uni.js\" type=\"text/javascript\"></script>\n");
      out.write("         ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "userHome.jsp", out, false);
      out.write("\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       \n");
      out.write("        <div class=\"l\">\n");
      out.write("            <img  src=\"images/book.png\" alt=\"\"/>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("         <div class=\"container\">\n");
      out.write("             <div class=\"animate one\" >\n");
      out.write("            <span>S</span><span>p</span><span>o</span><span>r</span><span>t</span><span>s</span>&nbsp;\n");
      out.write("            <span>U</span><span>n</span><span>i</span> <span>t</span>   \n");
      out.write("          </div>\n");
      out.write("             \n");
      out.write("            <div class=\"container\" style=\"width: 400px;\" > \n");
      out.write("\n");
      out.write("            <form id=\"contact\" name=\"myForm\" method=\"post\" action=\"login\">\n");
      out.write("                <h3>Login Here........</h3>             \n");
      out.write("\n");
      out.write("                <fieldset>                    \n");
      out.write("                     <input type=\"text\" name=\"email\" placeholder=\"Enter Your Email\" tabindex=\"1\"  required >     \n");
      out.write("                   </select>\n");
      out.write("                </fieldset>\n");
      out.write("               \n");
      out.write("               <fieldset>\n");
      out.write("                   <input type=\"password\" class=\"border\" name=\"password\" placeholder=\"&nbsp;&nbsp;&nbsp;&nbsp;Enter Password\" style=\"width: 350px; height: 40px;\" tabindex=\"2\"  required  >\n");
      out.write("                </fieldset>\n");
      out.write("                \n");
      out.write("                <fieldset>\n");
      out.write("                    <input type=\"submit\" name=\"action\"  class=\"btn btn-primary \" style=\"width: 100px;\" value=\"Login\">\n");
      out.write("                     <input type=\"reset\" value=\"Reset\" name=\"action\"  class=\"btn btn-primary \" style=\"width: 100px;\" >\n");
      out.write("                </fieldset>\n");
      out.write("                \n");
      out.write("                <fieldset>\n");
      out.write("                    <button  class=\"btn btn-primary \" type=\"submit\" name=\"forgot password\" onclick=\"location.href='forgot.jsp'\">\n");
      out.write("                        Forgot Password\n");
      out.write("                    </button>\n");
      out.write("                </fieldset>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("             \n");
      out.write("             \n");
      out.write("       </div>\n");
      out.write("      \n");
      out.write("\n");
      out.write("       \n");
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
