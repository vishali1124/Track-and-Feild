package org.apache.jsp.event;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class eventAdd_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            Connection conn;
            Statement stat;
            ResultSet result;
            String qry;
            String que;
            String sql;
            Integer eid;
            
        
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

 Class.forName("com.mysql.jdbc.Driver"); 
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<link rel=\"icon\" type=\"image/jpeg\" href=\"icon.jpeg\">\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/show.css\">\n");
      out.write("\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"eventAdd/jsp; charset=ISO-8859-1\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\" integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.2.0/css/all.css\" integrity=\"sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ\" crossorigin=\"anonymous\">\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js\" integrity=\"sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js\" integrity=\"sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49\" crossorigin=\"anonymous\"></script>\n");
      out.write("        \n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "eventhome.jsp", out, false);
      out.write("\n");
      out.write("        <link href=\"calender.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <script src=\"calendarize.js\" type=\"text/javascript\"></script>\n");
      out.write("\n");
      out.write("        ");
 
           String name=request.getParameter("name");
           String select_Mtype=request.getParameter("select_Mtype");
           String select_Etype=request.getParameter("select_Etype");
           String select_num=request.getParameter("select_num");
           
           String url = "jdbc:mysql://localhost:3306/track&field";
	   String user = "root";
	   String pass = "";
           Connection con = null;
           PreparedStatement ps = null;
	   
	   con = DriverManager.getConnection(url,user,pass); 
            String aaa = "INSERT INTO newevent(eName, meetType , eType, maxNo ) VALUES(?, ?, ?, ?)";
            ps = con.prepareStatement(aaa);
             ps.setString(1, name);
             ps.setString(2, select_Mtype);
             ps.setString(3, select_Etype);
             ps.setString(4, select_num);
             
            int query = ps.executeUpdate();
            out.print(query);
	   
	
      out.write("\n");
      out.write("        \n");
      out.write("        ");

String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://track&field/";
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
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <nav class=\"navbar navbar-expand-lg navbar-light bg-light\">\n");
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
      out.write("                <form class=\"form-inline my-2 my-lg-0\" name=\"searchForm\" action=\"\" method=\"get\">\n");
      out.write("                    <input class=\"form-control mr-sm-2\" type=\"text\" name=\"q\" placeholder=\"Search\" value=\"\" aria-label=\"Search\">\n");
      out.write("                    <input class=\"btn btn-outline-success my-2 my-sm-0\" name=\"sumbit\" type=\"submit\" value=\"Search\"/>\n");
      out.write("                </form>\n");
      out.write("        </nav>\n");
      out.write("        \n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field","root","");
                stat= conn.createStatement();
                que = request.getParameter("q"); 
                qry = "SELECT * FROM newevent";            
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
      out.write("        <br><br><br><br><br>\n");
      out.write("        \n");
      out.write("   <h1 style=\"color: darkslateblue\" align=\"center\">Event Management</h1>\n");
      out.write("   <br><br>\n");
      out.write("   \n");
      out.write("   <div class=\"container\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-md-8\">\n");
      out.write("    \n");
      out.write("                <table align=\"left\">\n");
      out.write("                    <tr>\n");
      out.write("                        <th>Event ID</th>   \n");
      out.write("                        <th>Event Name</th>\n");
      out.write("                        <th>Meet Type</th>\n");
      out.write("                        <th>Event Type</th>\n");
      out.write("                        <th>Maximum number of students</th>\n");
      out.write("                        \n");
      out.write("                    </tr>  \n");

try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
que = request.getParameter("q"); 
 if(que!=null){
    sql="SELECT * FROM newevent where eName like '%"+query+"%' ";
 }else{
    sql="SELECT * FROM newevent";
 }
resultSet = statement.executeQuery(sql);

while(resultSet.next()){
    
    
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                        <td>");
      out.print(resultSet.getString("eId") );
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(resultSet.getString("eName") );
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(resultSet.getString("meetType") );
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(resultSet.getString("eType") );
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(resultSet.getString("maxNo") );
      out.write("</td>\n");
      out.write("                        <td>\n");
      out.write("                            <form action=\"eventDelete.jsp\" method=\"POST\">\n");
      out.write("                                <input name=\"ID\" type=\"text\" value=\"");
      out.print(resultSet.getString("eId") );
      out.write("\" hidden>\n");
      out.write("                                <button type=\"submit\" name=\"delete\">Delete</button>\n");
      out.write("                            </form>\n");
      out.write("                        </td>\n");
      out.write("                        <td>\n");
      out.write("                            <form action=\"eventUpdate.jsp\" method=\"POST\">\n");
      out.write("                                <input name=\"ID\" type=\"text\" value=\"");
      out.print(resultSet.getString("eId"));
      out.write("\" hidden>\n");
      out.write("                                <input name=\"name\" type=\"text\" value=\"");
      out.print(resultSet.getString("eName"));
      out.write("\" hidden>\n");
      out.write("                                <input name=\"select_Mtype\" type=\"text\" value=\"");
      out.print(resultSet.getString("meetType"));
      out.write("\" hidden>\n");
      out.write("                                <input name=\"select_Etype\" type=\"text\" value=\"");
      out.print(resultSet.getString("eType"));
      out.write("\" hidden>\n");
      out.write("                                <input name=\"select_num\" type=\"text\" value=\"");
      out.print(resultSet.getString("maxNo") );
      out.write("\" hidden>\n");
      out.write("                                <button type=\"submit\" name=\"update\">Update</button>\n");
      out.write("                            </form>\n");
      out.write("                        </td>\n");
      out.write("                        <td>\n");
      out.write("                            <form action=\"eventForm.jsp\" method=\"POST\">\n");
      out.write("                                <input name=\"ID\" type=\"text\" value=\"");
      out.print(resultSet.getString("eId"));
      out.write("\" hidden>\n");
      out.write("                                <input name=\"name\" type=\"text\" value=\"");
      out.print(resultSet.getString("eName"));
      out.write("\" hidden>\n");
      out.write("                                <input name=\"select_Mtype\" type=\"text\" value=\"");
      out.print(resultSet.getString("meetType"));
      out.write("\" hidden>\n");
      out.write("                                <input name=\"select_Etype\" type=\"text\" value=\"");
      out.print(resultSet.getString("eType"));
      out.write("\" hidden>\n");
      out.write("                                <input name=\"select_num\" type=\"text\" value=\"");
      out.print(resultSet.getString("maxNo") );
      out.write("\" hidden>\n");
      out.write("                                <button type=\"submit\" name=\"insert\">Insert</button>\n");
      out.write("                            </form>\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");

}


connection.close();
} catch (Exception e) {
        e.printStackTrace();
}

      out.write("\n");
      out.write("\n");
      out.write("                </table>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-md-4\">\n");
      out.write("\t\t<div class=\"card mx-auto\" style=\"width: 20em; height: 51em\">\n");
      out.write("                    <img class=\"card-img-top mx-auto\" style=\"width:60%\" src=\"pics/user.png\" alt=\"Card image cap\"/>\n");
      out.write("                    <div class=\"card-body\">\n");
      out.write("                        <h5 class=\"card-title\">User Information</h5>\n");
      out.write("                        <p class=\"card-text\"><i class=\"fas fa-user\">&nbsp;</i>Erandi Wathsala</p>\n");
      out.write("\t\t\t<p class=\"card-text\"><i class=\"fa fa-user-cog\">&nbsp;</i>Meet Manager</p>\n");
      out.write("\t\t\t<a href=\"#\" class=\"btn btn-primary\"><i class=\"fa fa-pencil-alt\">&nbsp;</i>Edit Profile</a>\n");
      out.write("                        <a href=\"register.php\" class=\"btn btn-info\"><i class=\"fa fa-user-plus\">&nbsp;</i>Register</a>\t  \n");
      out.write("                        <br><br><br><br>\n");
      out.write("                        <img src=\"pics/calender.png\" alt=\"calender\" style=\"width: 250px; height: 250px;margin-left: 15px;\"/>\n");
      out.write("                                  \n");
      out.write("                    </div>                                  \n");
      out.write("\t\t</div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("  </body>\n");
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
