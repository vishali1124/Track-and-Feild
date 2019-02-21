package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class JudgeHome_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <head>\n");
      out.write("        <title>Judges Management</title>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" charset=\"UTF-8\">        \n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"pika.css\">\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"function.css\">\n");
      out.write("        <link href=\"inventory/CSS/calender.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <script src=\"inventory/JS/calender.js\" type=\"text/javascript\"></script>\n");
      out.write("        </head>\n");
      out.write("    <body onload=\"displayCalendar()\" >\n");
      out.write("        <div>\n");
      out.write("           <img  src=\"jimages/pikz.png\"  alt=\"\"/>            \n");
      out.write("        \n");
      out.write("        </div>\n");
      out.write("        <div id=\"body\">\n");
      out.write("            <div id=\"leftbody\">\n");
      out.write("                <table>\n");
      out.write("                    <br>\n");
      out.write("                  \n");
      out.write("                    <tr>\n");
      out.write("                        <td>&nbsp;</td>\n");
      out.write("                        <td><a href=\"retrieve.jsp\"><img src=\"jimages/view1.png\" alt=\"\" id=\"viewImg\"></a></td>\n");
      out.write("                        <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                        <td><a href=\"addJudge.jsp\"><img src=\"jimages/add.jpg\" alt=\"\" id=\"addImg\"></a></td>\n");
      out.write("                        <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                        <td><a href=\"updateJ.jsp\"><img src=\"jimages/update.jpg\" alt=\"\" id=\"updateImg\"></a></td>\n");
      out.write("                        <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                        <td><a href=\"deleteProJ.jsp\"><img src=\"jimages/delete.jpg\" alt=\"\" id=\"deleteImg\"></a></td>\n");
      out.write("                        <td>&nbsp;</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <br>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>&nbsp;</td>\n");
      out.write("                        <td><a href=\"invitation.html\"><img src=\"jimages/invite.png\" alt=\"\" id=\"inviteImg\"></a></td>\n");
      out.write("                        <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                        <td><a href=\"availability.jsp\"><img src=\"jimages/available.jpg\" alt=\"\" id=\"availableImg\"></a></td>\n");
      out.write("                        <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                        <td><a href=\"retrieveAllocated.jsp\"><img src=\"jimages/allocate.png\" alt=\"\" id=\"allocateImg\"></a></td>\n");
      out.write("                        <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                        <td><a href=\"reportJ.jsp\"><img src=\"jimages/report1.jpg\" alt=\"\" id=\"reportImg\"></a></td>\n");
      out.write("                        <td>&nbsp;</td>\n");
      out.write("                    </tr>\n");
      out.write("                </table>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"rightbody\">\n");
      out.write("                <center>\n");
      out.write("                    <img src=\"jimages/user1.png\" alt=\"\" id=\"userImg\">\n");
      out.write("                  \n");
      out.write("                    <h2>User Information</h2>\n");
      out.write("                     <h5 class=\"card-title\">User Information</h5>\n");
      out.write("                            <p class=\"card-text\"><i class=\"fas fa-user\">&nbsp;</i>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${adminId}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</p>\n");
      out.write("                            <p class=\"card-text\"><i class=\"fas fa-user\">&nbsp;</i>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${adminName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</p>\n");
      out.write("                            <p class=\"card-text\"><i class=\"fa fa-user-cog\">&nbsp;</i>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${type}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</p>\n");
      out.write("        \t\t    \n");
      out.write("                     <a href=\"#\" name=\"logout\" id=\"logout\" onclick=\"location.href='../HomeTrackAndField.html'\" class=\"btn btn-primary\"><i class=\"fas fa-sign-out-alt\">&nbsp;</i>Logout</a>\n");
      out.write("\t\t\t    \n");
      out.write("                   <div id=\"calendar\">\n");
      out.write("                                \n");
      out.write("                            </div>\n");
      out.write("                    <a href=\"jsp/DBconnection.jsp\">DB connetion</a> \n");
      out.write("                    <!--<a href=\"pika.jsp\">pika</a>-->\n");
      out.write("                </center>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
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
