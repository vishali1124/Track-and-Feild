package org.apache.jsp.user;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class updprofile_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!--getting the database connection-->\n");

    String itemid = request.getParameter("userid");
    String driver = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/";
    String database = "track&field";
    String userid = "root";
    String password = "";
    session.setAttribute("userid",userid);
    
    try{
        Class.forName(driver);
    }catch(ClassNotFoundException e){
        e.printStackTrace();
    }
    
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;

      out.write("\n");
      out.write("\n");
      out.write("  <!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("         ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "userHome.jsp", out, false);
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <center><h3>UPDATE PROFILE DETAILS</h3></center>\n");
      out.write("        \n");
      out.write("        ");


    //getting all item details from item table
try{

connection =DriverManager.getConnection(connectionUrl+database, userid, password);

statement=connection.createStatement();

String sql ="SELECT * FROM userlogin ";

resultSet = statement.executeQuery(sql);

while(resultSet.next()){


      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<center>\n");
      out.write("   <form action=\"updatepro.jsp\" method=\"post\">\n");
      out.write("   \n");
      out.write("       <input name=\"userid\" type=\"text\" value=\"");
      out.print(resultSet.getString("userid") );
      out.write("\" hidden>\n");
      out.write("  \n");
      out.write("      User Name :\n");
      out.write("        <input name=\"username\" type=\"text\" value=\"");
      out.print(resultSet.getString("username") );
      out.write("\"><br><br>\n");
      out.write("\n");
      out.write("      Address :\n");
      out.write("        <input name=\"address\" type=\"text\" value=\"");
      out.print(resultSet.getString("address") );
      out.write("\" ><br><br>\n");
      out.write("        \n");
      out.write("      Password :\n");
      out.write("        <input name=\"password\" type=\"text\" value=\"");
      out.print(resultSet.getString("password") );
      out.write("\"><br><br>\n");
      out.write("\n");
      out.write("      Phone Number :\n");
      out.write("        <input name=\"phone\" type=\"text\" value=\"");
      out.print(resultSet.getString("phone") );
      out.write("\" ><br><br>\n");
      out.write("  \n");
      out.write("      Email :\n");
      out.write("        <input name=\"email\" type=\"text\" value=\"");
      out.print(resultSet.getString("email") );
      out.write("\" ><br><br>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <button type=\"submit\" name>UPDATE</button><br><br>\n");
      out.write("  \n");
      out.write("        \n");
      out.write("        \n");
      out.write("  </form>\n");
      out.write("</center>\n");
      out.write("        \n");
      out.write("        ");


}
connection.close();

} catch (Exception e) 
{
e.printStackTrace();

}

      out.write("\n");
      out.write("     \n");
      out.write("<center><button style=\"width:100px;height:50px;color: black\" type=\"submit\" name=\"Delete Users\" onclick=\"location.href='deleteus.jsp'\">Delete Users</button></center>\n");
      out.write("    </body>\n");
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
