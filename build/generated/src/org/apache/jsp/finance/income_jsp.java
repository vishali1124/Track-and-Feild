package org.apache.jsp.finance;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class income_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write(" \n");
      out.write(" \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\" integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.2.0/css/all.css\" integrity=\"sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ\" crossorigin=\"anonymous\">\n");
      out.write("       <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js\" integrity=\"sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy\" crossorigin=\"anonymous\"></script>\n");
      out.write("       <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js\" integrity=\"sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("               ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Layout.jsp", out, false);
      out.write("\n");
      out.write("               <link href=\"CSS/calender.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("              <script src=\"JS/calendarize.js\" type=\"text/javascript\"></script>\n");
      out.write("\n");

String inid = request.getParameter("inid");
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-light bg-light\">\n");
      out.write("            <a class=\"navbar-brand\" href=\"#\">Navbar</a>\n");
      out.write("            <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarNav\" aria-controls=\"navbarNav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("            </button>\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"navbarNav\">\n");
      out.write("                <ul class=\"navbar-nav\">\n");
      out.write("                    <li class=\"nav-item active\">\n");
      out.write("                        <a class=\"nav-link\" href=\"Finance.jsp\">Finance Home <span class=\"sr-only\">(current)</span></a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"expenses.jsp\">Expenses</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"income.jsp\">Event Income</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"sponsor.jsp\">Sponsors</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"profit.jsp\">profit/loss</a>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-8\">\n");
      out.write("        <h1>Event Income Details- Inter Faculty Championship- 2018</h1>\n");
      out.write("        <br><br><br>\n");
      out.write("<table style=\"width: 80%\" border=\"1\">\n");
      out.write("<tr bgcolor=\"lightblue\" cellpadding=\"80\" cellspacing=\"50\" border=\"4\">\n");
      out.write("<td>Income Id</td>\n");
      out.write("<td>Income Type</td>\n");
      out.write("<td>Name </td>\n");
      out.write("<td>amount</td>\n");
      out.write("<td>date</td>\n");
      out.write("<td class=\"edit\">Edit</td>\n");
      out.write("<td class=\"delete\">Delete</td>\n");
      out.write("</tr>\n");

try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from income";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){

      out.write("\n");
      out.write("<tr>\n");
      out.write("<td>");
      out.print(resultSet.getString("inid") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("incomeType") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("name") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("amount") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("date") );
      out.write("</td>\n");
      out.write("<td><a href=\"updateIncome.jsp?inid=");
      out.print(resultSet.getString("inid"));
      out.write("\" onclick=\"return confirm('are you sure ?')\">Edit</a></td>\n");
      out.write("<td><a href=\"deleteIncome.jsp?inid=");
      out.print(resultSet.getString("inid"));
      out.write("\" onclick=\"return confirm('Are you sure to delete?')\">Delete</a></td>\n");
      out.write("\n");
      out.write("</tr>\n");
      out.write("\n");
      out.write("    \n");

}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}

      out.write("\n");
      out.write("\n");
      out.write("</table>\n");
      out.write("<a href=\"insertIncome.jsp\"><button>Insert Income Details</button></a><br><br>\n");

try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql1 ="select SUM(amount) as totalIncome from income";
resultSet = statement.executeQuery(sql1);
while(resultSet.next()){

      out.write("\n");
      out.write("\n");
      out.write("Total Amount of Income : ");
      out.print(resultSet.getString("totalIncome") );
      out.write("\n");
      out.write("    \n");
      out.write("<br>\n");
      out.write("<form action=\"insertServlet\" method=\"post\">\n");
      out.write("    <input type=\"hidden\" name=\"income\" value=\"");
      out.print(resultSet.getString("totalIncome") );
      out.write("\"/>\n");
      out.write("    <input type=\"submit\" value=\"Add to database\">\n");
      out.write("</form>\n");
      out.write("\n");

}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("<div class=\"card mx-auto\" style=\"width: 20em; height: 51em\">\n");
      out.write("\t\t\t\t  <img class=\"card-img-top mx-auto\" style=\"width:60%\" src=\"user.png\" alt=\"Card image cap\"/>\n");
      out.write("\t\t\t\t  <div class=\"card-body\">\n");
      out.write("\t\t\t\t    <h5 class=\"card-title\">User Information</h5>\n");
      out.write("\t\t\t\t    <p class=\"card-text\"><i class=\"fas fa-user\">&nbsp;</i>Chathurika</p>\n");
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
