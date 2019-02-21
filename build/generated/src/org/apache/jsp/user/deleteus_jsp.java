package org.apache.jsp.user;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class deleteus_jsp extends org.apache.jasper.runtime.HttpJspBase
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

   String userid = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "track&field";
String user = "root";
String password = "";
session.setAttribute("user",userid);
Class.forName(driver);
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "userHome.jsp", out, false);
      out.write("\n");
      out.write("    </head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("\n");
      out.write("<center><h1>DELETE USERS</h1></center>\n");
      out.write("<center><table border=\"1\">\n");
      out.write("<tr>\n");
      out.write("<td>User ID</td>\n");
      out.write("<td>User Name</td>\n");
      out.write("<td>Password</td>\n");
      out.write("<td>Phone Number</td>\n");
      out.write("<td>Email</td>\n");
      out.write("<td>Type</td>\n");
      out.write("\n");
      out.write("</tr>\n");

try{
connection = DriverManager.getConnection(connectionUrl+database, user, password);
statement=connection.createStatement();
String sql ="select * from userlogin";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){

      out.write("\n");
      out.write("<tr>\n");
      out.write("<td>");
      out.print( resultSet.getString("userid") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("username") );
      out.write("</td>\n");
      out.write("<td>");
      out.print( resultSet.getString("password") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("phone") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("email") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("type") );
      out.write("</td>\n");
      out.write("\n");
      out.write("<td><a href=\"deleteusers.jsp?userid=");
      out.print(resultSet.getString("userid") );
      out.write("\">\n");
      out.write("        <button type=\"button\" class=\"delete\">Delete</button></a></td>\n");
      out.write("</tr>\n");

i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}

      out.write("\n");
      out.write("    </table>\n");
      out.write("    <br><br>\n");
      out.write("    \n");
      out.write("    <button style=\"width:100px;height:50px;color: black\" type=\"submit\" name=\"Update Users\" onclick=\"location.href='updprofile.jsp'\">Update Users</button>\n");
      out.write("    </center>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
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
