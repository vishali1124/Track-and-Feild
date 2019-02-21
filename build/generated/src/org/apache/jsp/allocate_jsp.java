package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class allocate_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    String name = request.getParameter("userid");
    String driver = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/";
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
    ResultSet resultSet1 = null;
    ResultSet resultSet2 = null;
    ResultSet resultSet3 = null;
    ResultSet resultSet4 = null;

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Allocate Judges For Events</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"pika.css\">\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"function.css\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div>\n");
      out.write("            <img  src=\"jimages/pikz.png\"  alt=\"\"/>         \n");
      out.write("        </div>\n");
      out.write("        <div id=\"bodyF\">\n");
      out.write("            <br>\n");
      out.write("            <h1>Allocate Judges For Events</h1>\n");
      out.write("            <center>\n");
      out.write("                <form action=\"insertAllocated.jsp\" method=\"post\" name=\"allocate\">\n");
      out.write("                    <table>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Event:</td>\n");
      out.write("                            <td><select name=\"event\" required>\n");
      out.write("                                    <option value=\"100m\">100 meters</option>\n");
      out.write("                                    <option value=\"200m\">200 meters</option>\n");
      out.write("                                    <option value=\"400m\">400 meters</option>\n");
      out.write("                                    <option value=\"800m\">800 meters</option>\n");
      out.write("                                    <option value=\"1500m\">1500 meters</option>\n");
      out.write("                                    <option value=\"3000m\">3000 meters</option>\n");
      out.write("                                    <option value=\"5000m\">5000 meters</option>\n");
      out.write("                                    <option value=\"10000m\">10000 meters</option>\n");
      out.write("                                    <option value=\"110m Hurdles\">110m Hurdles</option>\n");
      out.write("                                    <option value=\"400m Hurdles\">400m Hurdles</option>\n");
      out.write("                                    <option value=\"High Jump\">High Jump</option>\n");
      out.write("                                    <option value=\"Long Jump\">Long Jump</option>\n");
      out.write("                                    <option value=\"Triple Jump\">Triple Jump</option>\n");
      out.write("                                    <option value=\"Pole Vault\">Pole Vault</option>\n");
      out.write("                                    <option value=\"Shot put\">Shot put</option>\n");
      out.write("                                    <option value=\"Discus Throw\">Discus Throw</option>\n");
      out.write("                                    <option value=\"Javelin Throw\">Javelin Throw</option>\n");
      out.write("                                    <option value=\"4x100m Relay\">4x100m Relay</option>\n");
      out.write("                                    <option value=\"4x400m Relay\">4x400m Relay</option>\n");
      out.write("                                </select>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Sportmeet:</td>\n");
      out.write("                            <td>                                \n");
      out.write("                                <select name=\"meet\">\n");
      out.write("                                    <option value=\"Freshers\">Freshers</option>\n");
      out.write("                                    <option value=\"Annual\">Annual</option>\n");
      out.write("                                </select>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Gender:</td>\n");
      out.write("                            <td>                                \n");
      out.write("                                <select name=\"gender\">\n");
      out.write("                                    <option value=\"male\">Male</option>\n");
      out.write("                                    <option value=\"female\">Female</option>\n");
      out.write("                                </select>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Number Of Judges For The Event:</td>\n");
      out.write("                            <td><input type=\"number\" name=\"njudges\" required></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Referee</td>\n");
      out.write("                            ");

                                try {
                                    connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                                    statement = connection.createStatement();
                                    String sql1 = "SELECT name FROM judges WHERE position LIKE 'Referee%'";
                                    resultSet1 = statement.executeQuery(sql1);
                                    while (resultSet1.next()) {
                            
      out.write("\n");
      out.write("\n");
      out.write("                            <td><input type=\"checkbox\" name=\"referee\" value=\"");
      out.print(resultSet1.getString("name"));
      out.write("\"> ");
      out.print(resultSet1.getString("name"));
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("\n");
      out.write("                        ");

                                }
                                connection.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Judges & Umpires</td>\n");
      out.write("                            ");

                                try {
                                    connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                                    statement = connection.createStatement();
                                    String sql2 = "SELECT name FROM judges WHERE position LIKE 'judges & umpires%'";
                                    resultSet2 = statement.executeQuery(sql2);
                                    while (resultSet2.next()) {
                            
      out.write("\n");
      out.write("\n");
      out.write("                            <td><input type=\"checkbox\" name=\"judge&umpires\" value=\"");
      out.print(resultSet2.getString("name"));
      out.write("\"> ");
      out.print(resultSet2.getString("name"));
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        ");

                                }
                                connection.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Time Keepers</td>\n");
      out.write("                            ");

                                try {
                                    connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                                    statement = connection.createStatement();
                                    String sql3 = "SELECT name FROM judges WHERE position LIKE 'Time Keeper%'";
                                    resultSet3 = statement.executeQuery(sql3);
                                    while (resultSet3.next()) {
                            
      out.write("\n");
      out.write("\n");
      out.write("                            <td><input type=\"checkbox\" name=\"timeKeeper\" value=\"");
      out.print(resultSet3.getString("name"));
      out.write("\"> ");
      out.print(resultSet3.getString("name"));
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("\n");
      out.write("                        ");

                                }
                                connection.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Start Team</td>\n");
      out.write("                            ");

                                try {
                                    connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                                    statement = connection.createStatement();
                                    String sql4 = "SELECT name FROM judges WHERE position LIKE 'Start Team%'";
                                    resultSet4 = statement.executeQuery(sql4);
                                    while (resultSet4.next()) {
                            
      out.write("\n");
      out.write("\n");
      out.write("                            <td><input type=\"checkbox\" name=\"startTeam\" value=\"");
      out.print(resultSet4.getString("name"));
      out.write("\"> ");
      out.print(resultSet4.getString("name"));
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        ");

                                }
                                connection.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        
      out.write("\n");
      out.write("                    </table>  \n");
      out.write("                    <input type=\"reset\" value=\"Reset\" id=\"userEdit\">\n");
      out.write("                    <input type=\"submit\" value=\"Submit\" id=\"userEdit\">       \n");
      out.write("                </form>\n");
      out.write("            </center>\n");
      out.write("        </div>\n");
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
