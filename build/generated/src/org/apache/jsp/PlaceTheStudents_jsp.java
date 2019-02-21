package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;

public final class PlaceTheStudents_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            Connection conn;
            PreparedStatement pstmt;
            String qry;           
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"External/fontawesome/css/all.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"External/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <script src=\"External/js/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js\" integrity=\"sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <title>Place the Students - event declaration</title>\n");
      out.write("        \n");
      out.write("       \n");
      out.write("      \n");
      out.write("        <style>\n");
      out.write("            .A{\n");
      out.write("                height: 700px;\n");
      out.write("                width: 100%;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            thbody{\n");
      out.write("                text-color:white;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("         <script type=\"text/javascript\">\n");
      out.write("            function regValidate(){\n");
      out.write("\n");
      out.write("\n");
      out.write("            var ename = document.forms[\"addForm\"][\"ename\"].value;\n");
      out.write("            var type = document.forms[\"addForm\"][\"type\"].value;\n");
      out.write("            var gender = document.forms[\"addForm\"][\"gender\"].value;\n");
      out.write("            var date = document.forms[\"addForm\"][\"date\"].value;\n");
      out.write("            var etype = document.forms[\"addForm\"][\"etype\"].value;\n");
      out.write("            \n");
      out.write("           \n");
      out.write("            var d = new Date(date);\n");
      out.write("            var cur_date = new Date();\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            if (ename == \"Select\") {\n");
      out.write("                alert(\"Please select an event\");\n");
      out.write("                return false;\n");
      out.write("            }\n");
      out.write("            else if (etype == \"Select\") {\n");
      out.write("                alert(\"Please select an event type\");\n");
      out.write("                return false;\n");
      out.write("            }\n");
      out.write("            else if (type == \"Select\") {\n");
      out.write("                alert(\"Please select a sportsmeet\");\n");
      out.write("                return false;\n");
      out.write("            }\n");
      out.write("            else if (gender === \"\"){\n");
      out.write("                alert(\"Please select a gender\");\n");
      out.write("                return false;\n");
      out.write("            }\n");
      out.write("            else if (date == \"\") {\n");
      out.write("                alert(\"Please select a date\");\n");
      out.write("                return false;\n");
      out.write("            }\n");
      out.write("            else if (d.getTime() > cur_date.getTime()) {\n");
      out.write("                alert(\"Please enter a valid date\");\n");
      out.write("                return false;\n");
      out.write("            }\n");
      out.write("            else\n");
      out.write("                return false;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("      \n");
      out.write("        </script>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("       ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "LayoutR.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

            if(request.getParameter("btnAdd")!=null){
                try{
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field","root","");
                qry="INSERT INTO placeaf(eid,ename,type,etype,gender,date) VALUES (?,?,?,?,?,?)";
                pstmt= conn.prepareStatement(qry);
                pstmt.setString(1, request.getParameter("eid"));
                pstmt.setString(2, request.getParameter("ename"));

                pstmt.setString(3, request.getParameter("type"));
                pstmt.setString(4, request.getParameter("etype"));

                pstmt.setString(5, request.getParameter("gender"));
                pstmt.setString(6, request.getParameter("date"));


                pstmt.executeUpdate();
                
                response.sendRedirect("./PlaceTheStudents1.jsp");
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
            }
        
      out.write("\n");
      out.write("   \n");
      out.write("        \n");
      out.write("        <div>\n");
      out.write("   \n");
      out.write("  <section class=\"A\">\n");
      out.write("         \n");
      out.write("                \n");
      out.write("        <h1 align=\"center\">INSERT EVENT DETAILS</h1>\n");
      out.write("        \n");
      out.write("        <br><br>\n");
      out.write("        <div class='container' style=\"width:50%\">\n");
      out.write("        <form id=\"addForm\" action=\"PlaceTheStudents.jsp\"  method=\"POST\" name=\"\" onsubmit=\"return regValidate()\">\n");
      out.write("             \n");
      out.write("            <div class=\"form-group\">\n");
      out.write("\n");
      out.write("           \n");
      out.write("                <label for=\"ename\"><b>Event Name:</b></label>\n");
      out.write("                         \n");
      out.write("                        <select class=\"form-control\" id = \"ename\" name=\"ename\">\n");
      out.write("                             <option value = \"Select\" name=\"ename\">Select</option>\n");
      out.write("\n");
      out.write("                            <option value = \"100m\" name=\"ename\">100m</option>\n");
      out.write("                            <option value = \"200m\" name=\"ename\">200m</option>\n");
      out.write("                            <option value = \"400m\" name=\"ename\">400m</option>\n");
      out.write("                            <option value = \"800m\" name=\"ename\">800m</option>\n");
      out.write("                            <option value = \"1500m\" name=\"ename\">1500m</option>\n");
      out.write("                            <option value = \"3000m\" name=\"ename\">3000m</option>\n");
      out.write("                            <option value = \"5000m\" name=\"ename\">5000m</option>\n");
      out.write("                            <option value = \"10000m\" name=\"ename\">10000m</option>\n");
      out.write("                            <option value = \"110mHurdles\" name=\"ename\">110mHurdles</option>\n");
      out.write("                            <option value = \"4X100Relay\" name=\"ename\">4 X 100 Relay</option>\n");
      out.write("                            <option value = \"4X400Relay\" name=\"ename\">4 X 400 Relay</option>\n");
      out.write("                            <option value = \"400mHurdles\" name=\"ename\">400mHurdles</option>\n");
      out.write("                            <option value = \"HighJump\" name=\"ename\">HighJump</option>\n");
      out.write("                            <option value = \"LongJump\" name=\"ename\">LongJump</option>\n");
      out.write("                            <option value = \"TripleJump\" name=\"ename\">TripleJump</option>\n");
      out.write("                            <option value = \"PoleVault\" name=\"ename\">PoleVault</option>\n");
      out.write("                            <option value = \"ShotPut\" name=\"ename\">ShotPut</option>\n");
      out.write("                            <option value = \"DiscusThrow\" name=\"ename\">DiscusThrow</option>\n");
      out.write("                            <option value = \"JavellinThrow\" name=\"ename\">JavellinThrow</option>\n");
      out.write("                         </select>\n");
      out.write("                       \n");
      out.write("                 </div>\n");
      out.write("\n");
      out.write("                 <div class=\"form-group\">\n");
      out.write("\n");
      out.write("                    \n");
      out.write("                     <label for=\"type\"><b>SportsMeet Type:</b></label>\n");
      out.write("                    \n");
      out.write("                       <select class=\"form-control\" id = \"type\" name=\"type\">\n");
      out.write("                             <option value = \"Select\" name=\"type\">Select</option>\n");
      out.write("\n");
      out.write("                            <option value = \"Annual\" name=\"type\">Annual</option>\n");
      out.write("                            <option value = \"freshers\" name=\"type\">Freshers</option>\n");
      out.write("                        </select>\n");
      out.write("\n");
      out.write("                 </div>\n");
      out.write("                    \n");
      out.write("                  <div class=\"form-group\">\n");
      out.write("                      <label for=\"etype\"><b>Event Type:</b></label>\n");
      out.write("                    \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                       <select class=\"form-control\" id = \"etype\" name=\"etype\">\n");
      out.write("                             <option value = \"Select\" name=\"etype\">Select</option>\n");
      out.write("\n");
      out.write("                            <option value = \"track\" name=\"etype\">Track</option>\n");
      out.write("                            <option value = \"field\" name=\"etype\">Field</option>\n");
      out.write("                            <option value = \"relay\" name=\"etype\">Relay</option>\n");
      out.write("\n");
      out.write("                        </select>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    \n");
      out.write("                  </div>\n");
      out.write("                   \n");
      out.write("            \n");
      out.write("                  <div class=\"form-group\">\n");
      out.write("\n");
      out.write("                      <label for=\"gender\"><b>Gender:</b></label>\n");
      out.write("                     \n");
      out.write("                     <div class=\"radio\">\n");
      out.write("                    <input type=\"radio\" name=\"gender\" value=\"male\"> Male<br>\n");
      out.write("                     </div>\n");
      out.write("                     <div class=\"radio\">\n");
      out.write("                    <input type=\"radio\" name=\"gender\" value=\"female\" > Female<br>  \n");
      out.write("                     </div>\n");
      out.write("                      \n");
      out.write("                  </div>\n");
      out.write("                 \n");
      out.write("                 <div class=\"form-group\">\n");
      out.write("\n");
      out.write("                      <label for=\"date\"><b>Date:</b></label>\n");
      out.write("                     \n");
      out.write("                     \n");
      out.write("                     \n");
      out.write("                    <input type=\"date\" class=\"form-control\" name=\"date\" value=\"date\" >\n");
      out.write("                     \n");
      out.write("                      \n");
      out.write("                  </div>\n");
      out.write("                \n");
      out.write("                    \n");
      out.write("                 <div class=\"form-group\">     \n");
      out.write("                      <input type=\"submit\" name=\"btnUpd\" value=\"Place the Students \" id=\"btnUpd\">\n");
      out.write("                </div>                       \n");
      out.write("                \n");
      out.write("        </form>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("      </section>\n");
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
