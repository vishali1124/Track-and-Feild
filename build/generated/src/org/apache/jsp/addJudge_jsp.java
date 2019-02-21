package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class addJudge_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\n');
      out.write('-');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Add Judges</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"pika.css\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       \n");
      out.write("        <div id=\"body\">\n");
      out.write("            <div id=\"leftbody\">\n");
      out.write("                <center>\n");
      out.write("                    <h1>Add Judges</h1>\n");
      out.write("                    <form action=\"insert.jsp\" method=\"post\" name=\"addJudge\">\n");
      out.write("                        <table>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Name</td>\n");
      out.write("                                <td>&nbsp;*<input type=\"text\" name=\"name\" placeholder=\"L.M.Nadeesh Kumara\" required></td>                               \n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>City</td>\n");
      out.write("                                <td>&nbsp;*<input type=\"text\" name=\"address\" placeholder=\"Ja Ela\" required></td>\n");
      out.write("                            </tr><br>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Contact Number</td>\n");
      out.write("                                <td>&nbsp;*<input type=\"text\" name=\"phone\" placeholder=\"0717696500\" required></td>\n");
      out.write("                            </tr><br>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>E-mail Address</td>\n");
      out.write("                                <td>&nbsp;*<input type=\"email\" name=\"email\" placeholder=\"nKumara@gmail.com\" required></td>\n");
      out.write("                            </tr><br>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Place Of Work</td>\n");
      out.write("                                <td>&nbsp;*<input type=\"text\" name=\"work\" placeholder=\"Jaffna University\" required></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Designation</td>\n");
      out.write("                                <td>&nbsp;*<input type=\"text\" name=\"designation\" placeholder=\"PT Instructor\" required></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Position In The Meet</td>\n");
      out.write("                                <td>&nbsp;*<select name=\"position\">\n");
      out.write("                                        <option value=\"Referee\">Referee</option>\n");
      out.write("                                        <option value=\"Chief Judge\">Chief Judge</option>\n");
      out.write("                                        <option value=\"Judges & Umpires\">Judges & Umpires</option>\n");
      out.write("                                        <option value=\"Time Keeper\">Time Keeper</option>\n");
      out.write("                                        <option value=\"Chief Time Keeper\">Chief Time Keeper</option>\n");
      out.write("                                        <option value=\"Start Team\">Start Team</option>\n");
      out.write("                                        <option value=\"Start Coordinator\">Start Coordinator</option>\n");
      out.write("                                        <option value=\"Announcer\">Announcer</option>\n");
      out.write("                                        <option value=\"Recorder\">Recorder</option>\n");
      out.write("                                        <option value=\"Call room Judge\">Call room Judge</option>\n");
      out.write("                                        <option value=\"Call Room Chief Judge\">Call Room Chief Judge</option>\n");
      out.write("                                        <option value=\"Call Room Referee\">Call Room Referee</option>\n");
      out.write("                                        <option value=\"Marshal\">Marshal</option>\n");
      out.write("                                        <option value=\"Competition Secretary\">Competition Secretary</option>\n");
      out.write("                                        <option value=\"Event Presentation Manager\">Event Presentation Manager</option>\n");
      out.write("                                        <option value=\"Asst. Technical Manager\">Asst. Technical Manager</option>\n");
      out.write("                                        <option value=\"Technical Manager\">Technical Manager</option>\n");
      out.write("                                        <option value=\"Asst. Meeting Manager\">Asst. Meeting Manager</option>\n");
      out.write("                                        <option value=\"Meet Manager\">Meet Manager</option>\n");
      out.write("                                        <option value=\"Competition Director\">Competition Director</option>\n");
      out.write("                                        <option value=\"National Technical Delegate\">National Technical Delegate</option>\n");
      out.write("                                        <option value=\"Jury Of Appeal\">Jury Of Appeal</option>\n");
      out.write("                                    </select>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Charge</td>\n");
      out.write("                                <td>&nbsp;*<input type=\"text\" name=\"charge\" placeholder=\"Rs.\" required></td>\n");
      out.write("                            </tr>\n");
      out.write("                        </table><br><br>\n");
      out.write("                        \n");
      out.write("                        <input type=\"reset\" value=\"Reset\" id=\"userEdit\">\n");
      out.write("                        <input type=\"submit\" value=\"Submit\" id=\"userEdit\">                                               \n");
      out.write("                    </form>\n");
      out.write("                </center>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"rightbody\">\n");
      out.write("                <center>\n");
      out.write("                    <br><br>\n");
      out.write("                    <img src=\"jimages/user1.png\" alt=\"\" id=\"userImg\">\n");
      out.write("                    <br>\n");
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
      out.write("                     <a href=\"#\" name=\"logout\" id=\"logout\" onclick=\"location.href='../itpLogin.jsp'\" class=\"btn btn-primary\"><i class=\"fas fa-sign-out-alt\">&nbsp;</i>Logout</a>\n");
      out.write("\t\t\t    \n");
      out.write("                   <div id=\"calendar\">\n");
      out.write("                                \n");
      out.write("                            </div>\n");
      out.write("                   \n");
      out.write("                </center>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
