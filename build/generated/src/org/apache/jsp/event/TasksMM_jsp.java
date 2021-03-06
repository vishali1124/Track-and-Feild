package org.apache.jsp.event;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class TasksMM_jsp extends org.apache.jasper.runtime.HttpJspBase
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
 Class.forName("com.mysql.jdbc.Driver"); 
      out.write("\n");
      out.write("\n");
      out.write("\n");

String username=request.getParameter("username");
String userId=request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost/";
String database = "track";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;



      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\" integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.2.0/css/all.css\" integrity=\"sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ\" crossorigin=\"anonymous\">\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js\" integrity=\"sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js\" integrity=\"sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49\" crossorigin=\"anonymous\"></script>\n");
      out.write("        \n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "eventhome.jsp", out, false);
      out.write("\n");
      out.write("        \n");
      out.write("        <link href=\"../inventory/CSS/calender.css\" rel=\"stylesheet\" type=\"text/css\"/>         \n");
      out.write("        <script src=\"../inventory/JS/calender.js\" type=\"text/javascript\"></script>\n");
      out.write("        \n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/show.css\">\n");
      out.write("        <title>Event Management</title>\n");
      out.write("    </head>\n");
      out.write("    <body onload=\"displayCalendar()\">\n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-light bg-light\">\n");
      out.write("            <a class=\"navbar-brand\" href=\"#\">Navbar</a>\n");
      out.write("            <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarNav\" aria-controls=\"navbarNav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("            </button>\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"navbarNav\">\n");
      out.write("                <ul class=\"navbar-nav\">\n");
      out.write("                    <li class=\"nav-item active\">\n");
      out.write("                        <a class=\"nav-link\" href=\"events.jsp\">Event Home <span class=\"sr-only\">(current)</span></a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"eventForm.jsp\">Add Events</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"eventShow.jsp\">Update Events</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"#\">Event Chart</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"MMhome.jsp\">Meet Manager</a>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("        <h1 style=\"color: darkslateblue\" align=\"center\">Tasks of Meet Manager</h1>\n");
      out.write("        <h3 style=\"color: darkslateblue\" align=\"left\">Meet Manager :");
      out.print(username);
      out.write(' ');
      out.print(userId);
      out.write("</h3>\n");
      out.write("        <br><br><br>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <div class=\"container\">\n");
      out.write("\t\t<div class=\"row\">\n");
      out.write("                    <div class=\"col-md-8\">\n");
      out.write("                        <table align=\"center\">\n");
      out.write("                        <tr>\n");
      out.write("                            <th>Event Name</th>   \n");
      out.write("                            <th>Start Date</th>\n");
      out.write("                            <th>End Date</th>\n");
      out.write("                            <th>Start time</th>\n");
      out.write("                        </tr>  \n");

try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="(select * from mm m, newevent e, eschedule es where m.eId = e.eId and e.eId = es.eId and userid = '"+userId+"')";
resultSet = statement.executeQuery(sql);

while(resultSet.next()){
    

      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <td>");
      out.print(resultSet.getString("eName") );
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(resultSet.getString("start") );
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(resultSet.getString("end") );
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(resultSet.getString("starttime") );
      out.write("</td>\n");
      out.write("                        </tr>\n");

}


connection.close();
} catch (Exception e) {
        e.printStackTrace();
}

      out.write("\n");
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <td><button type=\"submit\" name=\"back\" align=\"center\" onclick=\"location.href='addMM.jsp'\">Back</button></td>                            \n");
      out.write("                        </tr>\n");
      out.write("                    </table>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-4\">\n");
      out.write("\t\t\t<div class=\"card mx-auto\" style=\"width: 20em; height: 51em\">\n");
      out.write("                            <img class=\"card-img-top mx-auto\" style=\"width:60%\" src=\"pics/user.png\" alt=\"Card image cap\"/>\n");
      out.write("                            <div class=\"card-body\">\n");
      out.write("                           <h5 class=\"card-title\">User Information</h5>\n");
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
      out.write("                            <a href=\"#\" name=\"logout\" id=\"logout\" onclick=\"location.href='../itpLogin.jsp'\" class=\"btn btn-primary\"><i class=\"fas fa-sign-out-alt\">&nbsp;</i>Logout</a>\n");
      out.write("\t\t\t    \n");
      out.write("                            \n");
      out.write("                            \n");
      out.write("                            <br><br><br><br>\n");
      out.write("                            \n");
      out.write("                            \n");
      out.write("                            <div id=\"calendar\">\n");
      out.write("                                \n");
      out.write("                            </div>\n");
      out.write("                                 \n");
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
