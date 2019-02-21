package org.apache.jsp.event;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class eventDelete_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/show.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/forms.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\" integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.2.0/css/all.css\" integrity=\"sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ\" crossorigin=\"anonymous\">\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js\" integrity=\"sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js\" integrity=\"sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49\" crossorigin=\"anonymous\"></script>\n");
      out.write("        \n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "eventhome.jsp", out, false);
      out.write("\n");
      out.write("           <link href=\"../inventory/CSS/calender.css\" rel=\"stylesheet\" type=\"text/css\"/>         \n");
      out.write("        <script src=\"../inventory/JS/calender.js\" type=\"text/javascript\"></script>\n");
      out.write("        \n");
      out.write("        <title>Event Management</title>\n");
      out.write("    </head>\n");
      out.write("    <body onload=\"displayCalendar()\">\n");
      out.write("        \n");
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
      out.write("        \n");
      out.write("        <br><br><br><br><br>\n");
      out.write("       \n");
      out.write("        \n");
      out.write("                    \n");
      out.write("        <h1 style=\"color: darkslateblue\" align=\"center\">Event Management</h1>\n");
      out.write("        <br><br>\n");
      out.write("        \n");
      out.write(" ");

String ID=request.getParameter("ID");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/track&field", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("DELETE FROM newevent WHERE eId='"+ID+"'");
out.println("Deleted from Cart!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}

      out.write('\n');
      out.write('\n');

String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost/";
String database = "track&field";
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
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-8\">\n");
      out.write("                    <table align=\"center\">\n");
      out.write("                        <tr>\n");
      out.write("                            <th>Event ID</th>   \n");
      out.write("                            <th>Event Name</th>\n");
      out.write("                            <th>Meet Type</th>\n");
      out.write("                            <th>Event Type</th>\n");
      out.write("                            <th>Maximum number of students</th>\n");
      out.write("                        </tr>  \n");

try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="(select * from newevent )";
resultSet = statement.executeQuery(sql);

while(resultSet.next()){
    

      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <td>");
      out.print(resultSet.getString("eId") );
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(resultSet.getString("eName") );
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(resultSet.getString("meetType") );
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(resultSet.getString("eType") );
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(resultSet.getString("maxNo") );
      out.write("</td>\n");
      out.write("                            <td>\n");
      out.write("                                <form action=\"eventDelete.jsp\" method=\"POST\">\n");
      out.write("                                    <input name=\"ID\" type=\"text\" value=\"");
      out.print(resultSet.getString("eId") );
      out.write("\" hidden>\n");
      out.write("                                    <button name=\"delete\">Delete</button>\n");
      out.write("                                </form>\n");
      out.write("                            <td>\n");
      out.write("                                <form action=\"eventUpdate.jsp\" method=\"POST\">\n");
      out.write("                                    <input name=\"ID\" type=\"text\" value=\"");
      out.print(resultSet.getString("eId") );
      out.write("\" hidden>\n");
      out.write("                                    <input name=\"name\" type=\"text\" value=\"");
      out.print(resultSet.getString("eName"));
      out.write("\" hidden>\n");
      out.write("                                    <input name=\"select_Mtype\" type=\"text\" value=\"");
      out.print(resultSet.getString("meetType"));
      out.write("\" hidden>\n");
      out.write("                                    <input name=\"select_Etype\" type=\"text\" value=\"");
      out.print(resultSet.getString("eType"));
      out.write("\" hidden>\n");
      out.write("                                    <input name=\"select_num\" type=\"text\" value=\"");
      out.print(resultSet.getString("maxNo"));
      out.write("\" hidden>\n");
      out.write("                                    <button type=\"submit\" name=\"update\">Update</button>\n");
      out.write("                                </form>\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                <form action=\"eventForm.jsp\" method=\"POST\">\n");
      out.write("                                    <input name=\"ID\" type=\"text\" value=\"");
      out.print(resultSet.getString("eId") );
      out.write("\" hidden>\n");
      out.write("                                    <input name=\"name\" type=\"text\" value=\"");
      out.print(resultSet.getString("eName"));
      out.write("\" hidden>\n");
      out.write("                                    <input name=\"select_Mtype\" type=\"text\" value=\"");
      out.print(resultSet.getString("meetType"));
      out.write("\" hidden>\n");
      out.write("                                    <input name=\"select_Etype\" type=\"text\" value=\"");
      out.print(resultSet.getString("eType"));
      out.write("\" hidden>\n");
      out.write("                                    <input name=\"select_num\" type=\"text\" value=\"");
      out.print(resultSet.getString("maxNo"));
      out.write("\" hidden>\n");
      out.write("                                    <button type=\"submit\" name=\"Insert\">Insert</button>\n");
      out.write("                                </form>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");

}


connection.close();
} catch (Exception e) {
        e.printStackTrace();
}

      out.write("\n");
      out.write("\n");
      out.write("                    </table>\n");
      out.write("                </div>\n");
      out.write("               \n");
      out.write("                        </div>                                  \n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
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
