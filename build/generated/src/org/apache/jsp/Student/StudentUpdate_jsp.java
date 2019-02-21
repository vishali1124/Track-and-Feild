package org.apache.jsp.Student;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class StudentUpdate_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<title>Insert title here</title>\r\n");
      out.write("\t<meta charset=\"UTF-8\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://www.w3schools.com/lib/w3-theme-blue-grey.css\">\r\n");
      out.write("<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\" integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\" crossorigin=\"anonymous\">\r\n");
      out.write("\r\n");
      out.write("<style>\r\n");
      out.write("html,body,h1,h2,h3,h4,h5 {font-family: \"Open Sans\", sans-serif}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t#navigation,.navbar .navbar-default {\r\n");
      out.write("\t\t\tbackground-image: url(\"kirul.png\"); \r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t}\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body class=\"w3-theme-l5\">\r\n");
      out.write("\r\n");
      out.write("<!-- Navbar -->\r\n");
      out.write("\t<div class=\"w3-top\">\r\n");
      out.write("\t <nav class=\"navbar navbar-dark bg-light\" style=\"padding:40px; width:100%;\" id=\"navigation\" role=\"navigation\">\r\n");
      out.write("\t\t\t<a href=\"IndexH.jspIndexH.jsp\">LOGO</a>\r\n");
      out.write("\t  \t\t<a class=\"navbar-brand\"></a>\r\n");
      out.write("\t\t</nav>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t \r\n");
      out.write("\t\t");
String id =  request.getParameter("id"); 
      out.write("\r\n");
      out.write("\t\t\t\t\t");
   try{
	       				
   				 Class.forName("com.mysql.jdbc.Driver");
    			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field","root","");
    
    				Statement st =  con.createStatement();
    				String sql = "Select * from participant where StudentID='"+id+"'";
    					ResultSet rs = st.executeQuery(sql);
    
   				 while(rs.next()){


      out.write("\r\n");
      out.write("\t\t\t\t<form action=\"ParticipantSInsert\" method=\"post\">\r\n");
      out.write("\t\t\t       \t<div style=\"padding:20px\">\t\r\n");
      out.write("\t\t\t\t\t\t<h3 align=\"center\">Updating new Participants</h3>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<table>\r\n");
      out.write("  \t\t\t\t<tbody>\r\n");
      out.write("    \r\n");
      out.write("    \t\r\n");
      out.write("\t\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td>Student ID :</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"text\" name=\"StudentID\" value=\"");
      out.print(rs.getString("StudentID") );
      out.write("\"></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td>Sports ID :</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"text\" name=\"SportsID\" value=\"");
      out.print(rs.getString("SportsID") );
      out.write("\"></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td>Participant Name :</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"text\" name=\"PartName\" value=\"");
      out.print(rs.getString("PartName") );
      out.write("\"></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td>100m :</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"text\" name=\"Hundred\" value=\"");
      out.print(rs.getString("Hundred") );
      out.write("\"></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td>200m :</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"text\" name=\"Twoh\" value=\"");
      out.print(rs.getString("Twoh") );
      out.write("\"></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td>High Jump :</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"text\" name=\"Highj\" value=\"");
      out.print(rs.getString("Highj") );
      out.write("\"></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td>Long Jump :</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"text\" name=\"Longj\" value=\"");
      out.print(rs.getString("Longj") );
      out.write("\"></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td>800m :</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"text\" name=\"Eight\" value=\"");
      out.print(rs.getString("Eight") );
      out.write("\"></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td></td>\r\n");
      out.write("\t\t\t\t\t\t<td><input type=\"submit\" value=\"Update\"></td>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</table>\r\n");
      out.write("\t\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</form>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t  ");

    }
    
  }
    catch(Exception e){
    	System.out.println("error2");
    	
    }
  


      out.write("\r\n");
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
