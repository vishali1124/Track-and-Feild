package org.apache.jsp.schedule;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class userRo_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Schedule Management Home</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\" integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.2.0/css/all.css\" integrity=\"sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ\" crossorigin=\"anonymous\">\n");
      out.write("       <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js\" integrity=\"sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy\" crossorigin=\"anonymous\"></script>\n");
      out.write("       <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js\" integrity=\"sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("               ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "schedulehome.jsp", out, false);
      out.write("\n");
      out.write("               <link href=\"CSS/calender.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("              <script src=\"JS/calendarize.js\" type=\"text/javascript\"></script>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\">\n");
      out.write("\t\t<div class=\"row\">\n");
      out.write("                    <div class=\"col-md-8\">\n");
      out.write("\t\t\t\t<div class=\"jumbotron\" style=\"width:100%; height:100%;\">\n");
      out.write("                                    <div class=\"card-group\">\n");
      out.write("                                            <div class=\"card\" style=\"width: 5px; height: 300px\">\n");
      out.write("                                                <img class=\"card-img-top\" src=\"shed.png\" alt=\"Card image cap\" style=\"width: 300px; height: 250px;\">\n");
      out.write("                                            <div class=\"card-body\">\n");
      out.write("                                                <h5 class=\"card-title\" align=\"center\"> <a href=\"schemain.jsp\" class=\"btn btn-primary\" style=\"width: 165px;\">Event Schedule</a></h5>\n");
      out.write("                                          </div>\n");
      out.write("                                        </div>\n");
      out.write("                                            \n");
      out.write("                                        <div class=\"card\" style=\"margin-left: 20px;width: 5px; height: 300px\">\n");
      out.write("                                          <img class=\"card-img-top\" src=\"booked.jpg\" alt=\"Card image cap\" style=\"width: 250px; height: 240px; margin-left: 35px; margin-top: 10px;\">\n");
      out.write("                                          <div class=\"card-body\">\n");
      out.write("                                             <h5 class=\"card-title\" align=\"center\"> <a href=\"book1.jsp\" class=\"btn btn-primary \" style=\"width: 165px;\">Ground Booking</a></h5>\n");
      out.write("                                          </div>\n");
      out.write("                                        </div>\n");
      out.write("                                      </div>\n");
      out.write("                                    \n");
      out.write("                                    <br><br>\n");
      out.write("                                    <div class=\"card-group\">\n");
      out.write("                                            <div class=\"card\" style=\"width: 5px; height: 300px\">\n");
      out.write("                                            <img class=\"card-img-top\" src=\"rep.png\" alt=\"Card image cap\" style=\"width: 300px; height: 250px;\">\n");
      out.write("                                            <div class=\"card-body\">\n");
      out.write("                                            <h5 class=\"card-title\" align=\"center\"> <a href=\"#\" class=\"btn btn-primary\" style=\"width: 165px;\">Final Report</a></h5>\n");
      out.write("                                          </div>\n");
      out.write("                                        </div>\n");
      out.write("                                            \n");
      out.write("                                        <div class=\"card\" style=\"margin-left: 20px;width: 5px; height: 300px\">\n");
      out.write("                                          <img class=\"card-img-top\" src=\"searchh.ico\" alt=\"Card image cap\" style=\"width: 250px; height: 245px; margin-left: 45px; margin-top: 5px\">\n");
      out.write("                                          <div class=\"card-body\">\n");
      out.write("                                           <h5 class=\"card-title\" align=\"center\"> <a href=\"#\" class=\"btn btn-primary\" style=\"width: 165px;\">Search Here</a></h5>\n");
      out.write("                                           </div>\n");
      out.write("                                        </div>\n");
      out.write("                                      </div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("                                \n");
      out.write("                        <div class=\"col-md-4\">\n");
      out.write("\t\t\t\t<div class=\"card mx-auto\" style=\"width: 20em; height: 51em\">\n");
      out.write("\t\t\t\t  <img class=\"card-img-top mx-auto\" style=\"width:60%\" src=\"user.png\" alt=\"Card image cap\"/>\n");
      out.write("\t\t\t\t  <div class=\"card-body\">\n");
      out.write("\t\t\t\t    <h5 class=\"card-title\">User Information</h5>\n");
      out.write("\t\t\t\t    <p class=\"card-text\"><i class=\"fas fa-user\">&nbsp;</i>Silva.S.R.R.M</p>\n");
      out.write("\t\t\t\t    <p class=\"card-text\"><i class=\"fa fa-user-cog\">&nbsp;</i>Meet Manager</p>\n");
      out.write("\t\t\t\t    <a href=\"#\" class=\"btn btn-primary\"><i class=\"fa fa-pencil-alt\">&nbsp;</i>Edit Profile</a>\n");
      out.write("\t\t\t\t    <a href=\"includes/register.php\" class=\"btn btn-info\"><i class=\"fa fa-user-plus\">&nbsp;</i>Register</a>\n");
      out.write("\t\t\t\t  \n");
      out.write("                                    <br><br><br><br>\n");
      out.write("                                 \n");
      out.write("                                    <img src=\"calender.png\" alt=\"calender\" style=\"width: 250px; height: 250px;margin-left: 15px;\"/>\n");
      out.write("                                  \n");
      out.write("                                  \n");
      out.write("                                  </div>                                  \n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("                </div>\n");
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
