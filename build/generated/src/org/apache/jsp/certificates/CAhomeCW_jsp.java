package org.apache.jsp.certificates;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class CAhomeCW_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("       <head>\n");
      out.write("<title>CA Home CW</title>\n");
      out.write("<meta charset=\"utf-8\">\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<style>\n");
      out.write("* {\n");
      out.write("    box-sizing: border-box;\n");
      out.write("}\n");
      out.write("\n");
      out.write("body {\n");
      out.write("    font-family: Arial, Helvetica, sans-serif;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Style the header */\n");
      out.write("\n");
      out.write("\n");
      out.write("a.n{\n");
      out.write("\tcolor:white;\n");
      out.write("\tbackground-color:blue;\n");
      out.write("\ttext-decoration:none;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("/* Create two columns/boxes that floats next to each other */\n");
      out.write("nav {\n");
      out.write("    float: left;\n");
      out.write("    width: 30%;\n");
      out.write("    height: 750px; /* only for demonstration, should be removed */\n");
      out.write("    background:white;\n");
      out.write("    padding: 20px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Style the list inside the menu */\n");
      out.write("nav ul {\n");
      out.write("    list-style-type: none;\n");
      out.write("    padding: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write("article {\n");
      out.write("    float: left;\n");
      out.write("    padding: 20px;\n");
      out.write("    width: 70%;\n");
      out.write("    background-color: #DEDEDE;\n");
      out.write("    height: 750px; /* only for demonstration, should be removed */\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Clear floats after the columns */\n");
      out.write("section:after {\n");
      out.write("    content: \"\";\n");
      out.write("    display: table;\n");
      out.write("    clear: both;\n");
      out.write("\t\n");
      out.write("}\n");
      out.write(".icon{\n");
      out.write("\tbackground-color:white;\n");
      out.write("\theight:300px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("/* Style the footer */\n");
      out.write("footer {\n");
      out.write("    background-color: #777;\n");
      out.write("    padding: 10px;\n");
      out.write("    text-align: center;\n");
      out.write("    color: white;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Responsive layout - makes the two columns/boxes stack on top of each other instead of next to each other, on small screens */\n");
      out.write("@media (max-width: 600px) {\n");
      out.write("    nav, article {\n");
      out.write("        width: 100%;\n");
      out.write("        height: auto;\n");
      out.write("    }\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("\n");
      out.write("<header>\n");
      out.write("    <img src=\"pictures/mainHeader.png\" width=\"100%\" height=\"20%\">\n");
      out.write("</header>\n");
      out.write("\n");
      out.write("<section>\n");
      out.write(" \n");
      out.write("  <nav>\n");
      out.write("\t<div align=\"center\">\n");
      out.write("  \n");
      out.write("\t\t<ul>\n");
      out.write("\t\t\t\n");
      out.write("                    <li><img src=\"pictures/humanicon2.jpg\" height=\"80%\" width=\"80%\"></li>\n");
      out.write("\t\t\t<li><h3>User Information</h3></li>\n");
      out.write("                        <br>\n");
      out.write("\t\t\t<li><input type=\"text\" value=\"Janadi\"></li>\n");
      out.write("                        \n");
      out.write("\t\t\t<li><input type=\"text\" value=\"Certificate Writer\"></li>\n");
      out.write("\t\t\t\n");
      out.write("                       \n");
      out.write("                        <br>\n");
      out.write("\t\t\t<li> <a class=\"n\" href=\"\"> Edit Profile</a>\n");
      out.write("                            \n");
      out.write("\t\t             <a class=\"n\" href=\"\">Register</a> \n");
      out.write("\t\t    </li>\n");
      out.write("\t\t</ul>\n");
      out.write("\t</div>\n");
      out.write("\t  \n");
      out.write("\t  <br><br>\n");
      out.write("\t<div align=\"center\">'\n");
      out.write("\t\t<ul>\n");
      out.write("\t\t\t<li><a href=\"schedule.html\">\n");
      out.write("                        <img src=\"pictures/calendar1.jpg\" height=\"30%\" width=\"50%\"></a></li>\n");
      out.write("\t\t</ul>\n");
      out.write("\t </div>\n");
      out.write("\t\n");
      out.write("  </nav>\n");
      out.write("  \n");
      out.write("  \n");
      out.write("  \n");
      out.write("  \n");
      out.write("  <article>\n");
      out.write("  \n");
      out.write("  <br><br><br>\n");
      out.write("  \n");
      out.write("  <table align=\"center\">\n");
      out.write("  <tr>\n");
      out.write("    \n");
      out.write("\t\n");
      out.write("\t\n");
      out.write("\t<td align=\"center\">\n");
      out.write("\t<div class=\"icon\">\n");
      out.write("\t<br><br>\n");
      out.write("\t<a href=\"Records.jsp\">\n");
      out.write("\t<img src=\"pictures/tdicon2.jpg\" height=\"70%\" width=\"80%\"></a>\n");
      out.write("\t<br>\n");
      out.write("    <h4>Records</h4>\n");
      out.write("\t</div>\n");
      out.write("\t</td>\n");
      out.write("\t\n");
      out.write("\t\n");
      out.write("\t<td align=\"center\">\n");
      out.write("\t<div class=\"icon\">\n");
      out.write("\t<br><br>\n");
      out.write("\t<a href=\"ResultsCW.jsp\">\n");
      out.write("\t<img src=\"pictures/tdicon2.jpg\" height=\"70%\" width=\"80%\"></a>\n");
      out.write("\t<br>\n");
      out.write("    <h4>Results</h4>\n");
      out.write("\t</div>\n");
      out.write("\t</td>\n");
      out.write("        \n");
      out.write("       \n");
      out.write("\t<td align=\"center\">\n");
      out.write("\t<div class=\"icon\">\n");
      out.write("\t<br><br>\n");
      out.write("\t<a href=\"Results1.jsp\">\n");
      out.write("\t<img src=\"pictures/tdicon2.jpg\" height=\"70%\" width=\"80%\"></a>\n");
      out.write("\t<br>\n");
      out.write("    <h4>Student Performance</h4>\n");
      out.write("\t</div>\n");
      out.write("\t</td>\n");
      out.write("\t\n");
      out.write("  </tr>\n");
      out.write("\t\n");
      out.write("\t\t\n");
      out.write("\t<tr>\n");
      out.write("    \n");
      out.write("\t<td align=\"center\">\n");
      out.write("\t<div class=\"icon\">\n");
      out.write("\t<br><br>\n");
      out.write("\t<a href=\"CWFaculty.jsp\">\n");
      out.write("\t<img src=\"pictures/tdicon2.jpg\" height=\"70%\" width=\"80%\"></a>\n");
      out.write("\t<br>\n");
      out.write("    <h4>Faculty Performance</h4>\n");
      out.write("\t</div>\n");
      out.write("\t</td>\n");
      out.write("\t\n");
      out.write("        <td align=\"center\">\n");
      out.write("\t<div class=\"icon\">\n");
      out.write("\t<br><br>\n");
      out.write("\t<a href=\"PrizeListCW.jsp\">\n");
      out.write("\t<img src=\"pictures/tdicon2.jpg\" height=\"70%\" width=\"80%\"></a>\n");
      out.write("\t<br>\n");
      out.write("    <h4>Prize List</h4>\n");
      out.write("\t</div>\n");
      out.write("\t</td>\n");
      out.write("\t\n");
      out.write("\t</tr>\n");
      out.write("\t\n");
      out.write("</article>\n");
      out.write("</section>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
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
