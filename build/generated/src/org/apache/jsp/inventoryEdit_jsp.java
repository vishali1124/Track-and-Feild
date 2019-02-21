package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class inventoryEdit_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    String inventoryID = request.getParameter("inventoryID");
    String driver = "com.mysql.jdbc.Driver";
    
    String connectionUrl = "jdbc:mysql://localhost/";
    String database = "track&field";
    String userid = "root";
    String password = "";
    
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
    
    try 
    {
        Class.forName(driver);
    } 
    catch (ClassNotFoundException e) 
    {
        e.printStackTrace();
    }   
    
    try
    {
        connection = DriverManager.getConnection(connectionUrl+database, userid, password);
        statement=connection.createStatement();
        String sql ="select * from inventory where inventoryID='"+inventoryID+"'";
        resultSet = statement.executeQuery(sql);
        while(resultSet.next())
        {

      out.write("\n");
      out.write("    <html>\n");
      out.write("        <head>\n");
      out.write("\n");
      out.write("            <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("            <title>Inventory</title>\n");
      out.write("\n");
      out.write("            <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\" integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\" crossorigin=\"anonymous\">\n");
      out.write("            <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.2.0/css/all.css\" integrity=\"sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ\" crossorigin=\"anonymous\">\n");
      out.write("            <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js\" integrity=\"sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy\" crossorigin=\"anonymous\"></script>\n");
      out.write("            <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("            <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js\" integrity=\"sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Layout.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("        </head>\n");
      out.write("\n");
      out.write("        <body>\n");
      out.write("            <div class=\"l\">\n");
      out.write("                <img  src=\"images/book.png\" alt=\"\"/>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"container\"> \n");
      out.write("                <form id=\"contact\"  method=\"post\" action=\"updateInventoryProcess.jsp\">\n");
      out.write("\n");
      out.write("                    <h3>Edit Inventory</h3>             \n");
      out.write("\n");
      out.write("                    <fieldset>\n");
      out.write("                        <input type=\"hidden\"  value=\"");
      out.print(resultSet.getString("inventoryID") );
      out.write("\">\n");
      out.write("                        <label  class=\"col-sm-2 col-form-label\">InventoryID</label>\n");
      out.write("                        <input type=\"text\" name=\"inventoryID\" tabindex=\"1\" name=\"inventoryID\"  value=\"");
      out.print(resultSet.getString("inventoryID") );
      out.write("\">\n");
      out.write("                    </fieldset>\n");
      out.write("                    <fieldset>\n");
      out.write("                        <label  class=\"col-sm-2 col-form-label\">ItemName</label>\n");
      out.write("                        <input type=\"text\" tabindex=\"1\" name=\"iName\"  value=\"");
      out.print(resultSet.getString("iName") );
      out.write("\">\n");
      out.write("                    </fieldset>\n");
      out.write("                    <fieldset>\n");
      out.write("                        <label  class=\"col-sm-2 col-form-label\">Quantity</label>\n");
      out.write("                        <input type=\"text\" tabindex=\"1\" name=\"quantity\" value=\"");
      out.print(resultSet.getString("quantity") );
      out.write("\">\n");
      out.write("                    </fieldset>\n");
      out.write("                    <fieldset>\n");
      out.write("                        <label  class=\"col-sm-2 col-form-label\">ConditionStatement</label>\n");
      out.write("                        <input type=\"text\" tabindex=\"1\" name=\"conditionStatement\" value=\"");
      out.print(resultSet.getString("conditionStatement") );
      out.write("\">\n");
      out.write("                    </fieldset>\n");
      out.write("                    <fieldset>\n");
      out.write("                        <input type=\"submit\" name=\"add\"  class=\"btn btn-primary \" style=\"width: 100px;\" value=\"Add\">\n");
      out.write("                    </fieldset>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        ");

            }
            connection.close();
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
        
      out.write("   \n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("    \n");
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
