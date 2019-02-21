package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;

public final class BPA_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            Connection conn;
            Statement stat;
            ResultSet result;
            String qry;
            Integer eid;
        

            Connection conn1;
            Statement stat1;
            ResultSet result1;
            String qry1;
            
        

            Connection conn2;
            Statement stat2;
            ResultSet result2;
            String qry2;
           
        

            Connection conn3;
            Statement stat3;
            ResultSet result3;
            String qry3;
            
        

            Connection conn4;
            PreparedStatement pstmt4;
            String qry4;  
            Integer did;
            
        
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"External/fontawesome/css/all.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"External/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <script src=\"External/js/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js\" integrity=\"sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <title> BPA</title>\n");
      out.write("        \n");
      out.write("        <style>\n");
      out.write("            table, th, td {\n");
      out.write("    border: 1px solid black;\n");
      out.write("    border-collapse: collapse;\n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("                            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Layout.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("   \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    ");
      out.write("\n");
      out.write("        ");

            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field","root","");
                stat= conn.createStatement();
                qry="SELECT * FROM (SELECT eid,sname,faculty,ename,record,points FROM placesaf WHERE type='Annual' AND etype='track' AND gender='male' ORDER BY record asc LIMIT 0,1) pp";
                result=stat.executeQuery(qry);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        
      out.write("\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("     \n");
      out.write("       \n");
      out.write("        <br><br>\n");
      out.write("        <h2 align=\"center\">\n");
      out.write("   Track Events</h2>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <table class=\"table table-hover\" style=\"width:100%;align:center\">\n");
      out.write("            <th style=\"background-color:lightblue\" colspan=\"6\">\n");
      out.write("                <h2>Men</h2>\n");
      out.write("               \n");
      out.write("            </th>\n");
      out.write("            \n");
      out.write("         <tr>\n");
      out.write("                <th>\n");
      out.write("                    Student Name</th>\n");
      out.write("                \n");
      out.write("                <th>\n");
      out.write("                    Faculty</th>\n");
      out.write("                \n");
      out.write("                <th>\n");
      out.write("                    Event name</th>\n");
      out.write("                \n");
      out.write("                <th>\n");
      out.write("                    Record</th>\n");
      out.write("                \n");
      out.write("                <th>\n");
      out.write("                    Points</th>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("            </tr>\n");
      out.write("                ");

                    while (result.next()){
                        eid=result.getInt("eid");
                
      out.write("\n");
      out.write("\n");
      out.write("                \n");
      out.write("                     <tr>\n");
      out.write("                    <td>");
      out.print(result.getString("sname"));
      out.write("</td>      \n");
      out.write("                    <td>");
      out.print(result.getString("faculty"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(result.getString("ename"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(result.getString("record"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(result.getString("points"));
      out.write("</td>\n");
      out.write("\n");
      out.write("                     </tr>\n");
      out.write("                      ");

                    }
                      
      out.write(" \n");
      out.write("            \n");
      out.write("\n");
      out.write("       </table>\n");
      out.write("       \n");
      out.write("   \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("                      \n");
      out.write("                      \n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field","root","");
                stat1= conn.createStatement();
                qry1="SELECT * FROM (SELECT eid,sname,faculty,ename,record,points FROM placesaf WHERE type='Annual' AND etype='track' AND gender='female' ORDER BY record asc LIMIT 0,1) pp";
                result1=stat.executeQuery(qry1);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        
      out.write("\n");
      out.write("    \n");
      out.write("        <br><br><br>\n");
      out.write("            <table class=\"table table-hover\" style=\"width:100%;align:center\">\n");
      out.write("            <th style=\"background-color:lightblue\" colspan=\"6\">\n");
      out.write("                <h2>Women</h2>\n");
      out.write("               \n");
      out.write("            </th>\n");
      out.write("            \n");
      out.write("           <tr>\n");
      out.write("                <th>\n");
      out.write("                    Student Name</th>\n");
      out.write("                \n");
      out.write("                <th>\n");
      out.write("                    Faculty</th>\n");
      out.write("                \n");
      out.write("                <th>\n");
      out.write("                    Event name</th>\n");
      out.write("                \n");
      out.write("                <th>\n");
      out.write("                    Record</th>\n");
      out.write("                \n");
      out.write("                <th>\n");
      out.write("                    Points</th>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("            </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("                ");

                    while (result1.next()){
                        eid=result1.getInt("eid");
                
      out.write("\n");
      out.write("\n");
      out.write("                \n");
      out.write("                     <tr>\n");
      out.write("                    <td>");
      out.print(result1.getString("sname"));
      out.write("</td>      \n");
      out.write("                    <td>");
      out.print(result1.getString("faculty"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(result1.getString("ename"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(result1.getString("record"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(result1.getString("points"));
      out.write("</td>\n");
      out.write("\n");
      out.write("                     </tr>\n");
      out.write("                      ");

                    }
                      
      out.write(" \n");
      out.write("            \n");
      out.write("           \n");
      out.write("       </table>\n");
      out.write("                      \n");
      out.write("                      \n");
      out.write("                      \n");
      out.write("                      \n");
      out.write("                      \n");
      out.write("                      \n");
      out.write("                      \n");
      out.write("               \n");
      out.write("                      \n");
      out.write("                      \n");
      out.write("                      \n");
      out.write("                      \n");
      out.write("                      \n");
      out.write("                      \n");
      out.write("                       ");
      out.write("\n");
      out.write("        ");

            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field","root","");
                stat2= conn.createStatement();
                qry2="SELECT * FROM (SELECT eid,sname,faculty,ename,record,points FROM placesaf WHERE type='Annual' AND etype='field' AND gender='male' ORDER BY record desc LIMIT 0,1) pp";
                result2=stat.executeQuery(qry2);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        
      out.write("\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("              \n");
      out.write("        <br><br><br>\n");
      out.write("\n");
      out.write("        <h2 align=\"center\">\n");
      out.write("       Field Events</h2>\n");
      out.write("        <br><br><br><br>\n");
      out.write("      \n");
      out.write("\n");
      out.write("        \n");
      out.write("        <table class=\"table table-hover\" style=\"width:100%;align:center\">\n");
      out.write("            <th style=\"background-color:lightblue\" colspan=\"6\">\n");
      out.write("                <h2>Men</h2>\n");
      out.write("               \n");
      out.write("            </th>\n");
      out.write("            \n");
      out.write("           <tr>\n");
      out.write("                <th>\n");
      out.write("                    Student Name</th>\n");
      out.write("                \n");
      out.write("                <th>\n");
      out.write("                    Faculty</th>\n");
      out.write("                \n");
      out.write("                <th>\n");
      out.write("                    Event name</th>\n");
      out.write("                \n");
      out.write("                <th>\n");
      out.write("                    Record</th>\n");
      out.write("                \n");
      out.write("                <th>\n");
      out.write("                    Points</th>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("            </tr>\n");
      out.write("                ");

                    while (result2.next()){
                        eid=result2.getInt("eid");
                
      out.write("\n");
      out.write("\n");
      out.write("                \n");
      out.write("                     <tr>\n");
      out.write("                    <td>");
      out.print(result2.getString("sname"));
      out.write("</td>      \n");
      out.write("                    <td>");
      out.print(result2.getString("faculty"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(result2.getString("ename"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(result2.getString("record"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(result2.getString("points"));
      out.write("</td>\n");
      out.write("\n");
      out.write("                     </tr>\n");
      out.write("                      ");

                    }
                      
      out.write(" \n");
      out.write("            \n");
      out.write("\n");
      out.write("       </table>\n");
      out.write("       \n");
      out.write("   \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("                      \n");
      out.write("                      \n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn3 = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field","root","");
                stat3= conn.createStatement();
                qry3="SELECT * FROM (SELECT eid,sname,faculty,ename,record,points FROM placesaf WHERE type='Annual' AND etype='field' AND gender='female' ORDER BY record desc LIMIT 0,1) pp";
                result3=stat3.executeQuery(qry3);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        
      out.write("\n");
      out.write("    \n");
      out.write("        <br><br><br>\n");
      out.write("            <table class=\"table table-hover\" style=\"width:100%;align:center\">\n");
      out.write("            <th style=\"background-color:lightblue\" colspan=\"6\">\n");
      out.write("                <h2>Women</h2>\n");
      out.write("               \n");
      out.write("            </th>\n");
      out.write("            \n");
      out.write("            <tr>\n");
      out.write("                <th>\n");
      out.write("                    Student Name</th>\n");
      out.write("                \n");
      out.write("                <th>\n");
      out.write("                    Faculty</th>\n");
      out.write("                \n");
      out.write("                <th>\n");
      out.write("                    Event name</th>\n");
      out.write("                \n");
      out.write("                <th>\n");
      out.write("                    Record</th>\n");
      out.write("                \n");
      out.write("                <th>\n");
      out.write("                    Points</th>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("            </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("                ");

                    while (result3.next()){
                        eid=result3.getInt("eid");
                
      out.write("\n");
      out.write("\n");
      out.write("                \n");
      out.write("                     <tr>\n");
      out.write("                    <td>");
      out.print(result3.getString("sname"));
      out.write("</td>      \n");
      out.write("                    <td>");
      out.print(result3.getString("faculty"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(result3.getString("ename"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(result3.getString("record"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(result3.getString("points"));
      out.write("</td>\n");
      out.write("\n");
      out.write("                     </tr>\n");
      out.write("                      ");

                    }
                      
      out.write(" \n");
      out.write("                      \n");
      out.write("                      \n");
      out.write("                      \n");
      out.write("                      \n");
      out.write("                      \n");
      out.write("                    \n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

            if(request.getParameter("btnAdd")!=null){
                try{
                Class.forName("com.mysql.jdbc.Driver");
                conn4 = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field","root","");
                qry4="INSERT INTO distribution(did,stype,dtype,distributor) VALUES (?,?,?,?)";
                pstmt4= conn.prepareStatement(qry4);
                pstmt4.setString(1, request.getParameter("did"));

                pstmt4.setString(2, request.getParameter("stype"));
                pstmt4.setString(3, request.getParameter("dtype"));

                pstmt4.setString(4, request.getParameter("distributor"));
                


                pstmt4.executeUpdate();
                response.sendRedirect("./BP1A.jsp");
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
            }
        
      out.write("\n");
      out.write("       \n");
      out.write("        \n");
      out.write("        \n");
      out.write("      <div class=\"container\">\n");
      out.write("     <form id=\"addDistributor\" action=\"BPA.jsp\" method=\"POST\" name=\"\" onsubmit=\"\">\n");
      out.write("\n");
      out.write("   <div class=\"form-group\">\n");
      out.write("       <label for=\"email\"><b>Sportsmeet Type:</b></label>\n");
      out.write("    <input type=\"checkbox\" class=\"form-control\" name=\"stype\" value=\"Annual\" id=\"stype\" >Annual\n");
      out.write("    <input type=\"checkbox\" class=\"form-control\" name=\"stype\" value=\"freshers\" id=\"stype\" checked>Freshers\n");
      out.write("\n");
      out.write("  </div>\n");
      out.write("        \n");
      out.write("   \n");
      out.write("    <div class=\"form-group\">\n");
      out.write("        <label for=\"email\"><b>Distribution Type:</b></label>\n");
      out.write("   \n");
      out.write("     <select class=\"form-control\" id = \"dtype\" name=\"dtype\">\n");
      out.write("                            <option value = \"Select\" name=\"eid\">Select</option>\n");
      out.write("\n");
      out.write("                            <option value = \"BestPerformance\" name=\"dtype\">Best Performance</option>\n");
      out.write("                            <option value = \"RelayChampionOverall\" name=\"dtype\">Relay Champion Overall</option>\n");
      out.write("                            <option value = \"RecordHolders\" name=\"dtype\">Record Holders</option>\n");
      out.write("                            <option value = \"OutstandingAthlete\" name=\"dtype\">Outstanding Athlete Of The Meet</option>\n");
      out.write("                            <option value = \"PlacesMen\" name=\"dtype\">Places-Men</option>\n");
      out.write("                            <option value = \"PlacesWomen\" name=\"dtype\">Places-Women</option>\n");
      out.write("                            <option value = \"OverallPlaces\" name=\"dtype\">Overall Places</option>\n");
      out.write("                           \n");
      out.write("                         </select>\n");
      out.write("   </div>               \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("    <div class=\"form-group\">\n");
      out.write("        <label for=\"email\"><b>Distributor:</b></label>\n");
      out.write("                         \n");
      out.write("    \n");
      out.write("                        <select class=\"form-control\" id = \"distributor\" name=\"distributor\">\n");
      out.write("                            <option value = \"Select\" name=\"eid\">Select</option>\n");
      out.write("\n");
      out.write("                            <option value = \"A.Perera\" name=\"distributor\">Mr.Perera</option>\n");
      out.write("                            <option value = \"I.Boteju\" name=\"distributor\">Mr.Boteju</option>\n");
      out.write("                            <option value = \"L.Peiris\" name=\"distributor\">Mrs.Peiris</option>\n");
      out.write("                            <option value = \"K.liyanage\" name=\"distributor\">Mrs.Liyanage</option>\n");
      out.write("                            <option value = \"I.Kusuma\" name=\"distributor\">Mrs.Kusuma</option>\n");
      out.write("                            <option value = \"J.Abeywickrema\" name=\"distributor\">Mr.Abeywickrema</option>\n");
      out.write("                            <option value = \"X.Kalubowila\" name=\"distributor\">Mr.Kalubowila</option>\n");
      out.write("                           \n");
      out.write("                         </select>                   \n");
      out.write("                       \n");
      out.write("    </div>              \n");
      out.write("                    \n");
      out.write("                       \n");
      out.write("          <div class=\"form-group\">            \n");
      out.write("                   \n");
      out.write("                 <input type=\"submit\" name=\"btnAdd\" value=\"Add Distributor\" id=\"btnAdd\">\n");
      out.write("                        \n");
      out.write("          </div>       \n");
      out.write("                    \n");
      out.write("                     \n");
      out.write("      </form>\n");
      out.write("                      \n");
      out.write("    \n");
      out.write("</div>\n");
      out.write("            \n");
      out.write("            </body>  \n");
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
