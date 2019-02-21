package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.*;

public final class StuentReport_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://www.w3schools.com/lib/w3-theme-blue-grey.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/w3.css\">\r\n");
      out.write("<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\" integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\" crossorigin=\"anonymous\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<style>\r\n");
      out.write("html,body,h1,h2,h3,h4,h5 {font-family: \"Open Sans\", sans-serif}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t/* using normalize.css in settings */\r\n");
      out.write("\t\tabbr {\r\n");
      out.write("\t\t  border-bottom: 1px dashed #039;\r\n");
      out.write("\t\t  cursor: help;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tbody {\r\n");
      out.write("\t\t  background-color: #f0f0f0;\r\n");
      out.write("\t\t  font: 1rem 'Open Sans',sans-serif;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t.tbl {\r\n");
      out.write("\t\t  background-color: white;\r\n");
      out.write("\t\t  border-collapse: collapse;\r\n");
      out.write("\t\t  margin: 2em auto;\r\n");
      out.write("\t\t  table-layout: fixed;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t.tbl caption {\r\n");
      out.write("\t\t  font-weight: 700;\r\n");
      out.write("\t\t  padding-bottom: 1em;\r\n");
      out.write("\t\t  text-align: left;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t.tbl th {\r\n");
      out.write("\t\t  background-color: lightsteelblue;\r\n");
      out.write("\t\t  font-weight: bold;\r\n");
      out.write("\t\t  text-align: left;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t.tbl td, .tbl th {\r\n");
      out.write("\t\t  border: 1px solid black;\r\n");
      out.write("\t\t  padding: 2px 4px;\r\n");
      out.write("\t\t  vertical-align: top;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t.tbl tbody tr:nth-child(odd):not(.highlight) {\r\n");
      out.write("\t\t  background-color: #dde;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t.tbl tbody tr:hover:not(.highlight) {\r\n");
      out.write("\t\t  background-color: #b0b0b0;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t.highlight {\r\n");
      out.write("\t\t  /*background-color: rgba(255,255,153, .7);  light yellow */\r\n");
      out.write("\t\t  background-color: red;\r\n");
      out.write("\t\t  font-weight: bold;\r\n");
      out.write("\t\t}\r\n");
      out.write("\r\n");
      out.write("\t\t#navigation,.navbar .navbar-default {\r\n");
      out.write("\t\t\tbackground-image: url(\"imgs/kirul.png\");\r\n");
      out.write("\t\t\tbackground-repeat-y: no-repeat;\r\n");
      out.write("\t\t\tbackground-repeat : no-repeat;\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t}\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("<title>Student Report</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body class=\"w3-theme-l5\">\r\n");
      out.write("\r\n");
      out.write("\t\t<!-- Navbar -->\r\n");
      out.write("\t<div class=\"w3-top\">\r\n");
      out.write("\t <nav class=\"navbar navbar-dark bg-light\" style=\"padding:40px;\" id=\"navigation\" role=\"navigation\">\r\n");
      out.write("\t \t<a href=\"index2.jsp\"><img alt=\"LOGO\" src=\"imgs/jaffnaLogo.jpg\" style=\"height:70px;width:70px\"></a>\r\n");
      out.write("\t  \t\t<a class=\"navbar-brand\"></a>\r\n");
      out.write("\t\t  \t\r\n");
      out.write("\t\t</nav>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<!-- Page Container -->\r\n");
      out.write("\t<div class=\"w3-container w3-content\" style=\"max-width:1400px;margin-top:150px\">\r\n");
      out.write("\t<h1s class=\"w3-center\">Student Report</h1> <br>   \r\n");
      out.write("\t  <!-- The Grid -->\r\n");
      out.write("\t  <div class=\"w3-row\">\r\n");
      out.write("\t    <!-- Left Column -->\r\n");
      out.write("\t    <div class=\"w3-col m3\">\r\n");
      out.write("\t      <!-- Profile -->\r\n");
      out.write("\t      <div class=\"w3-card w3-round w3-white\">\r\n");
      out.write("\t        <div class=\"w3-container\">\r\n");
      out.write("\t         <h4 class=\"w3-center\">My Profile</h4>\r\n");
      out.write("\t         <p class=\"w3-center\"><img src=\"imgs/avatar.jpg\" class=\"w3-circle\" style=\"height:106px;width:106px\" alt=\"Avatar\"></p>\r\n");
      out.write("\t         <hr>\r\n");
      out.write("\t         <p><i class=\"fa fa-pencil fa-fw w3-margin-right w3-text-theme\"></i> Call Room Judge</p>\r\n");
      out.write("\t         \r\n");
      out.write("\t        </div>\r\n");
      out.write("\t      </div>\r\n");
      out.write("\t      <br>\r\n");
      out.write("\t      \r\n");
      out.write("\t      <!-- Alert Box -->\r\n");
      out.write("\t      <div class=\"w3-container w3-display-container w3-round w3-theme-l4 w3-border w3-theme-border w3-margin-bottom w3-hide-small\">\r\n");
      out.write("\t        <span onclick=\"this.parentElement.style.display='none'\" class=\"w3-button w3-theme-l3 w3-display-topright\">\r\n");
      out.write("\t          <i class=\"fa fa-remove\"></i>\r\n");
      out.write("\t        </span>\r\n");
      out.write("\t        <p><strong>Hey!</strong></p>\r\n");
      out.write("\t        <p> Welcome to the Details Pages. You're logged as the call room judge </p>\r\n");
      out.write("\t      </div>\r\n");
      out.write("\t    \r\n");
      out.write("\t    <!-- End Left Column -->\r\n");
      out.write("\t    </div>\r\n");
      out.write("\t    \r\n");
      out.write("\t    <!-- Middle Column -->\r\n");
      out.write("\t    <div class=\"w3-col m8\">\r\n");
      out.write("\t    \r\n");
      out.write("\t      <div class=\"w3-row-padding\">\r\n");
      out.write("\t        <div class=\"w3-col m12\">\r\n");
      out.write("\t          <div class=\"w3-card w3-round w3-white\">\r\n");
      out.write("\t            <div class=\"w3-container w3-padding\">\r\n");
      out.write("\t              <div class=\"w3-container\"></div>\r\n");
      out.write("\t\r\n");
      out.write("\t  <h1 style=\"text-align:center\">Student Participants List</h1>\t    \t    \r\n");
      out.write("\t    <div class=\"col-sm-12\" style=\"padding:5px;\" >\r\n");
      out.write("\t\r\n");
      out.write("\t</div> \r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("  ");
 try{
      
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sportsms","root","");
	
	Statement st =  con.createStatement();
	String sql = "Select * from participant";
	ResultSet res = st.executeQuery(sql);
  
	  ResultSet rs = st.executeQuery("SELECT * FROM participant");
	  ResultSetMetaData md = rs.getMetaData(); 
	  int col = md.getColumnCount();
	  
      out.write("\r\n");
      out.write("\t<table class=\"tbl\">\r\n");
      out.write("\t  <thead>\r\n");
      out.write("\t    <!--  <tr>\r\n");
      out.write("\t      <th style=\"width:160px\">StudentID</th>\r\n");
      out.write("\t      <th style=\"width:160px\">SportsID</th>\r\n");
      out.write("\t      <th style=\"width:160px\">Name</th>\r\n");
      out.write("\t      <th style=\"width:58px\">100m</th>\r\n");
      out.write("\t      <th style=\"width:58px\">200m</th>\r\n");
      out.write("\t      <th style=\"width:58px\">High Jump</th>\r\n");
      out.write("\t      <th style=\"width:58px\">Long Jump</th>\r\n");
      out.write("\t      <th style=\"width:58px\">8000m</th>-->\r\n");
      out.write("\t    <tr>\r\n");
      out.write("\t      ");
 for (int i = 1; i <= col; i++){
			  String col_name = md.getColumnName(i);
		   
      out.write("\r\n");
      out.write("\t\t   <th>");
      out.print(col_name );
      out.write("</th>\r\n");
      out.write("\t\t   ");
 } 
      out.write("\r\n");
      out.write("\t    \r\n");
      out.write("\t    </tr>\r\n");
      out.write("\t  </thead>\r\n");
      out.write(" ");

    
    while(rs.next()){
  		int trueCount = 0;;


      out.write("\r\n");
      out.write("  <tbody>\r\n");
      out.write("    <!--<tr id=\"");
      out.print(rs.getString("StudentID") );
      out.write("\" hundred=\"");
      out.print(rs.getString("Hundred") );
      out.write("\" Twoh=\"");
      out.print(rs.getString("Twoh") );
      out.write("\" Highj=\"");
      out.print(rs.getString("Highj") );
      out.write("\" Longj=\"");
      out.print(rs.getString("Longj") );
      out.write("\" Eight=\"");
      out.print(rs.getString("Eight") );
      out.write("\" onclick=\"highlight(this.id)\">\r\n");
      out.write("      <td>");
      out.print(rs.getString("StudentID") );
      out.write(" </td>\r\n");
      out.write("      <td>");
      out.print(rs.getString("SportsID") );
      out.write(" </td>\r\n");
      out.write("      <td>");
      out.print(rs.getString("PartName") );
      out.write(" </td>\r\n");
      out.write("      <td>");
      out.print(rs.getString("Hundred") );
      out.write(" </td>\r\n");
      out.write("      <td>");
      out.print(rs.getString("Twoh") );
      out.write(" </td>\r\n");
      out.write("      <td>");
      out.print(rs.getString("Highj") );
      out.write(" </td>\r\n");
      out.write("      <td>");
      out.print(rs.getString("Longj") );
      out.write(" </td>\r\n");
      out.write("      <td>");
      out.print(rs.getString("Eight") );
      out.write(" </td>\r\n");
      out.write("      \r\n");
      out.write("    </tr>-->\r\n");
      out.write("    <tr>\r\n");
      out.write("    \t");
 for (int i = 1; i <= col; i++) {
    		String element = rs.getString(i);
    		if (element.equalsIgnoreCase("true")) {
    			trueCount++; 
    		}
    		
      out.write("\r\n");
      out.write("    \t\t<td>");
      out.print(element );
      out.write("</td>\r\n");
      out.write("    \t");
 } 
      out.write("\r\n");
      out.write("    \t\r\n");
      out.write("      ");
 if (trueCount > 3) { 
      out.write("\r\n");
      out.write("      \t<td style=\"color: red; background-color: white; border: none\"><p>Too much event participation</p></td>\r\n");
      out.write("      ");
 }  
      out.write("\r\n");
      out.write("    </tr>\r\n");
      out.write("    \r\n");
      out.write("    \t\r\n");
      out.write("\t\r\n");
      out.write("  ");

    }
    con.close();
  }
    catch(Exception e){
    	System.out.println("error2");
    	
    }
  


      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("     \t </div>\r\n");
      out.write("    </div>\r\n");
      out.write(" \t\r\n");
      out.write("\t\r\n");
      out.write("\r\n");
      out.write("\t</div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <br><br>\r\n");
      out.write("            <!-- Event List -->\r\n");
      out.write("            \r\n");
      out.write("            \t\t         \r\n");
      out.write("\t\t  <div class=\"w3-container w3-padding\">\r\n");
      out.write("\t\t   <div class=\"w3-container\">\r\n");
      out.write("\t\t<div class=\"w3-card w3-round w3-white\">\r\n");
      out.write("\t\t  <h1 style=\"text-align:center\">Event Details</h1>\t    \t    \r\n");
      out.write("\t\t    <div class=\"col-sm-12\" style=\"padding:5px;\" >\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t</div> \r\n");
      out.write("\t  \r\n");
      out.write("\t  \r\n");
      out.write("\t\t<table class=\"tbl\">\r\n");
      out.write("\t\t  <thead>\r\n");
      out.write("\t\t    <tr>\r\n");
      out.write("\t\t      <th style=\"width:160px\">Event ID</th>\r\n");
      out.write("\t\t      <th style=\"width:160px\">Event Name</th>\r\n");
      out.write("\t\t      <th style=\"width:160px\">Meet Type</th>\r\n");
      out.write("\t\t      <th style=\"width:58px\">Gender</th>\r\n");
      out.write("\t\t      <th style=\"width:58px\">Maximum Number</th>\r\n");
      out.write("\t\t    </tr>\r\n");
      out.write("\t\t  </thead>\r\n");
      out.write("\t ");

	  try{
		       
	    Class.forName("com.mysql.jdbc.Driver");
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sportsms","root","");
	    
	    Statement st =  con.createStatement();
	    String sql = "Select * from newevent";
	    ResultSet rs = st.executeQuery(sql);
	   
	    while(rs.next()){
	
	
      out.write("\r\n");
      out.write("\t  <tbody>\r\n");
      out.write("\t    <tr>\r\n");
      out.write("\t      <td>");
      out.print(rs.getInt("eId") );
      out.write(" </td>\r\n");
      out.write("\t      <td>");
      out.print(rs.getString("eName") );
      out.write(" </td>\r\n");
      out.write("\t      <td>");
      out.print(rs.getString("meetType") );
      out.write(" </td>\r\n");
      out.write("\t      <td>");
      out.print(rs.getString("gType") );
      out.write(" </td>\r\n");
      out.write("\t      <td>");
      out.print(rs.getString("maxNo") );
      out.write(" </td>\r\n");
      out.write("\t      \r\n");
      out.write("\t      \r\n");
      out.write("\t    </tr>\r\n");
      out.write("\t    \t\r\n");
      out.write("\t\t\r\n");
      out.write("\t  ");

	    }
	    con.close();
	  }
	    catch(Exception e){
	    	System.out.println("error2");
	    	
	    }
	  
	
	
      out.write("\r\n");
      out.write("\t</table>\r\n");
      out.write("\t<br>\r\n");
      out.write("\t\r\n");
      out.write("\t    </div>\r\n");
      out.write("\t    </div>\r\n");
      out.write("\t    </div>\r\n");
      out.write("\t    <!-- End Middle Column -->\r\n");
      out.write("\t  </div>\r\n");
      out.write("\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t</div> \r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t            \r\n");
      out.write("            \r\n");
      out.write("            <!-- End of the Event List -->\r\n");
      out.write("            \r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div> \r\n");
      out.write("      \r\n");
      out.write("    \r\n");
      out.write("    <!-- End Middle Column -->\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
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
