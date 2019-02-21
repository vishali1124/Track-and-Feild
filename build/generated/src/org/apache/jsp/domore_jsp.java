package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.*;

public final class domore_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            Connection conn;
            Statement stat;
            ResultSet result;
            String qry;
            String query;
            String sql;
            Integer sid;
            
        
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
      out.write(" \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
Class.forName("com.mysql.jdbc.Driver");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\" integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\" crossorigin=\"anonymous\">\n");
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
      out.write("               <link href=\"secmain.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("    <body>\n");
      out.write("        <nav class=\"navbar navbar-light\" style=\"background-color: #e3f2fd; width: 1330px;\">\n");
      out.write("                <a class=\"nav-link\" href=\"userRo.jsp\">Home <span class=\"sr-only\">(current)</span></a>\n");
      out.write("                <a class=\"nav-link\" href=\"view_cal.jsp\">Calender <span class=\"sr-only\">(current)</span></a>\n");
      out.write("                <a class=\"nav-link\" href=\"add_event.jsp\">Add-Event to schedule <span class=\"sr-only\">(current)</span></a>\n");
      out.write("                \n");
      out.write("\n");
      out.write("                <form class=\"form-inline my-2 my-lg-0\" name=\"searchForm\" action=\"\" method=\"get\">\n");
      out.write("                    <input class=\"form-control mr-sm-2\" type=\"text\" name=\"q\" placeholder=\"Search\" value=\"\" aria-label=\"Search\">\n");
      out.write("                    <input class=\"btn btn-outline-success my-2 my-sm-0\" name=\"sumbit\" type=\"submit\" value=\"Search\"/>\n");
      out.write("                </form>\n");
      out.write("            </nav>\n");
      out.write("        \n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field","root","");
                stat= conn.createStatement();
                query = request.getParameter("q"); 
                qry = "SELECT * FROM schedule";            
                result=stat.executeQuery(qry);  
            } 
            catch(ClassNotFoundException cnfe)
            {
               System.out.println("Class not found exception" + cnfe.toString());
            } 
            catch(SQLException sqle)
            {
                out.println("SQL eCXCEPTION " + sqle);
            }
        
      out.write("\n");
      out.write("        \n");
      out.write("      \n");
      out.write("        <div class=\"container\">\n");
      out.write("\t\t<div class=\"row\">\n");
      out.write("                    <div class=\"col-md-8\">\n");
      out.write("\t\t\t\t<div class=\"jumbotron\" style=\"width:100%; height:100%;\">\n");
      out.write("                                    \n");
      out.write("                     <div class=\"card-group\">\n");
      out.write("                                      <center><h1>View More & Do More</h1></center>\n");
      out.write("    <center><table align=\"center \" cellpadding=\"10\" cellspacing=\"20\" border=\"1\" ></center>\n");
      out.write("    \n");
      out.write("        \n");
      out.write("    \n");
      out.write("    <tr>\n");
      out.write("        <tr bgcolor=\"lightblue\">\n");
      out.write("        <!--<td><b> Schedule ID </b></td>-->\n");
      out.write("        <td><b> Event Name </b></td>\n");
      out.write("        <td><b>Start Day</b></td>\n");
      out.write("        <td><b> End Day </b></td>\n");
      out.write("        <td><b> Location </b></td>\n");
      out.write("        <td><b>Start Time</b></td>\n");
      out.write("        <td><b>Duration</b></td>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <td><b>Edit</b></td>\n");
      out.write("        <td><b>Delete</b></td>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </tr>\n");
      out.write("    \n");
      out.write("        <!--getting the database connection-->\n");
      out.write("        ");
 String url="jdbc:mysql://localhost/track&field";
           String user="root";
           String pass="";
           String query;
           
           
           try{
               //getting all item details from database 
               Connection con=DriverManager.getConnection(url,user,pass);
                Statement s=con.createStatement();
                query = request.getParameter("q"); 
                
                        if(query!=null){
                           sql="SELECT * FROM schedule where title like '%"+query+"%'  ";
                        }else{
                           sql="SELECT * FROM schedule";
                        }
            
            query = request.getParameter("q"); 
            
            ResultSet rs=s.executeQuery(sql);
            while(rs.next()){
                
      out.write("\n");
      out.write("                \n");
      out.write("              \n");
      out.write("                \n");
      out.write("                \n");
      out.write("            <tr>    \n");
      out.write("                <!--<td>");
      out.print(rs.getString("sid"));
      out.write("</td>-->\n");
      out.write("                <td>");
      out.print(rs.getString("title"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("start"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("end"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("location"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("starttime"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("duration"));
      out.write("</td>\n");
      out.write("                \n");
      out.write("                <td><a href=\"up.jsp?sid=");
      out.print(rs.getString("sid"));
      out.write("\">Edit</a></td>\n");
      out.write("                <td><a href=\"del.jsp?sid=");
      out.print(rs.getString("sid"));
      out.write("\">Delete</a></td>\n");
      out.write("            </tr>\n");
      out.write("            \n");
      out.write("            ");
   
                }
            con.close();
           }catch(SQLException e){
               e.printStackTrace();
               
           }
        
      out.write("\n");
      out.write("        </table>  \n");
      out.write("        <center><button><a href=\"schemain.jsp\" class=\"button\">Go Back</a></button></center>\n");
      out.write("                                            \n");
      out.write("                               \n");
      out.write("                                            \n");
      out.write("                                        \n");
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
