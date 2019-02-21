package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class IndexH_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://www.w3schools.com/lib/w3-theme-blue-grey.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/w3.css\">\r\n");
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
      out.write("\t\t\tbackground-image: url(\"imgs/kirul.png\"); \r\n");
      out.write("\t\t\tbackground-repeat-y: no-repeat;\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t}\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body class=\"w3-theme-l5\">\r\n");
      out.write("\t\r\n");
      out.write("\t\t\t<!-- Navbar -->\r\n");
      out.write("\t<div class=\"w3-top\">\r\n");
      out.write("\t <nav class=\"navbar navbar-dark bg-light\" style=\"padding:20px; width:100%;\" id=\"navigation\" role=\"navigation\">\r\n");
      out.write("\t\t\t<a href=\"IndexH.jsp\"><img alt=\"LOGO\" src=\"imgs/jaffnaLogo.jpg\" style=\"height:70px;width:70px\"></a>\r\n");
      out.write("\t  \t\t<a class=\"navbar-brand\"></a>\r\n");
      out.write("\t\t</nav>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<!-- Page Container -->\r\n");
      out.write("\t<div class=\"w3-container w3-content\" style=\"max-width:1400px;margin-top:150px\">   \r\n");
      out.write("\t<h2 class=\"w3-center\">Home</h2>\r\n");
      out.write("\t <br>\r\n");
      out.write("\t  <!-- The Grid -->\r\n");
      out.write("\t  <div class=\"w3-row\">\r\n");
      out.write("\t    <!-- Left Column -->\r\n");
      out.write("\t    <div class=\"w3-col m4\">\r\n");
      out.write("\t      <!-- 1st cage -->\r\n");
      out.write("\t      <div class=\"w3-row-padding\">\r\n");
      out.write("        <div class=\"w3-col m12\">\r\n");
      out.write("          <div class=\"w3-card w3-round w3-grey\">\r\n");
      out.write("            <div class=\"w3-container w3-padding\">\r\n");
      out.write("            <h4 class=\"w3-center\">Event Management</h4>\r\n");
      out.write("              <p class=\"w3-center\"><img src=\"imgs/avatar.jpg\" class=\"w3-square\" style=\"height:106px;width:106px\" alt=\"Avatar\"></p>\r\n");
      out.write("              <hr>\r\n");
      out.write("              <a href=\"EventIndex.jsp\"><button type=\"button\" class=\"btn btn-outline-primary my-2 my-sm-0 \"><i class=\"fa fa-pencil\"></i> Event Management</button></a> \r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("\t      <br>\t      \r\n");
      out.write("\t      \r\n");
      out.write("\t      <!-- 2nd cage -->\r\n");
      out.write("\t      <div class=\"w3-row-padding\">\r\n");
      out.write("        <div class=\"w3-col m12\">\r\n");
      out.write("          <div class=\"w3-card w3-round w3-grey\">\r\n");
      out.write("            <div class=\"w3-container w3-padding\">\r\n");
      out.write("            <h4 class=\"w3-center\">Certificate and Award Management</h4>\r\n");
      out.write("              <p class=\"w3-center\"><img src=\"imgs/avatar.jpg\" class=\"w3-square\" style=\"height:106px;width:106px\" alt=\"Avatar\"></p>\r\n");
      out.write("              <hr>\r\n");
      out.write("              <a href=\"StudentPL.jsp\"><button type=\"button\" class=\"btn btn-outline-primary my-2 my-sm-0 \"><i class=\"fa fa-pencil\"></i>Certificate and Award Management</button></a> \r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      <br>\r\n");
      out.write("      <!-- 3nd cage -->\r\n");
      out.write("      <div class=\"w3-row-padding\">\r\n");
      out.write("        <div class=\"w3-col m12\">\r\n");
      out.write("          <div class=\"w3-card w3-round w3-grey\">\r\n");
      out.write("            <div class=\"w3-container w3-padding\">\r\n");
      out.write("            <h4 class=\"w3-center\">Judges Management</h4>\r\n");
      out.write("              <p class=\"w3-center\"><img src=\"imgs/avatar.jpg\" class=\"w3-square\" style=\"height:106px;width:106px\" alt=\"Avatar\"></p>\r\n");
      out.write("              <hr>\r\n");
      out.write("              <a href=\"StudentPL.jsp\"><button type=\"button\" class=\"btn btn-outline-primary my-2 my-sm-0 \"><i class=\"fa fa-pencil\"></i>Judges Management</button></a> \r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("\t    \r\n");
      out.write("\t    <!-- End Left Column -->\r\n");
      out.write("\t    </div>\r\n");
      out.write("\t    \r\n");
      out.write("\t    <!-- Middle Column -->\r\n");
      out.write("    <div class=\"w3-col m4\">\r\n");
      out.write("    \r\n");
      out.write("    <!-- cage 1-->\r\n");
      out.write("      <div class=\"w3-row-padding\">\r\n");
      out.write("        <div class=\"w3-col m12\">\r\n");
      out.write("          <div class=\"w3-card w3-round w3-grey\">\r\n");
      out.write("            <div class=\"w3-container w3-padding\">\r\n");
      out.write("            <h4 class=\"w3-center\">Inventory Management</h4>\r\n");
      out.write("              <p class=\"w3-center\"><img src=\"imgs/avatar.jpg\" class=\"w3-square\" style=\"height:106px;width:106px\" alt=\"Avatar\"></p>\r\n");
      out.write("              <hr>\r\n");
      out.write("              <a href=\"StudentPL.jsp\"><button type=\"button\" class=\"btn btn-outline-primary my-2 my-sm-0 \"><i class=\"fa fa-pencil\"></i> Inventory Management</button></a> \r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      \r\n");
      out.write("      <!-- cage 2 -->\r\n");
      out.write("      <div class=\"w3-container w3-card w3-grey w3-round w3-margin\"><br>\r\n");
      out.write("      <div class=\"w3-container w3-padding\">\r\n");
      out.write("      <h4 class=\"w3-center\">Student Management</h4>\r\n");
      out.write("        <p class=\"w3-center\"><img src=\"imgs/avatar.jpg\" class=\"w3-square\" style=\"height:106px;width:106px\" alt=\"Avatar\"></p>\r\n");
      out.write("        <hr class=\"w3-clear\">\r\n");
      out.write("       \r\n");
      out.write("          <div class=\"w3-row-padding\" style=\"margin:0 -16px\">\r\n");
      out.write("            <div class=\"w3-half\">              \r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"w3-half\">  \r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\t\t<a href=\"index2.jsp\"><button type=\"button\" class=\"btn btn-outline-primary my-2 my-sm-0 \"><i class=\"fa fa-pencil\"></i> Student Management</button></a> <br>\r\n");
      out.write("      </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      \r\n");
      out.write("      \r\n");
      out.write("      <div class=\"w3-container w3-card w3-grey w3-round w3-margin\"><br>\r\n");
      out.write("      <div class=\"w3-container w3-padding\">\r\n");
      out.write("      <h4 class=\"w3-center\">User Management</h4>\r\n");
      out.write("        <p class=\"w3-center\"><img src=\"imgs/avatar.jpg\" class=\"w3-square\" style=\"height:106px;width:106px\" alt=\"Avatar\"></p>\r\n");
      out.write("        <hr class=\"w3-clear\">\r\n");
      out.write("       \r\n");
      out.write("          <div class=\"w3-row-padding\" style=\"margin:0 -16px\">\r\n");
      out.write("            <div class=\"w3-half\">              \r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"w3-half\">  \r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\t\t<a href=\"StudentDetails.jsp\"><button type=\"button\" class=\"btn btn-outline-primary my-2 my-sm-0 \"><i class=\"fa fa-pencil\"></i> User Management</button></a> <br>\r\n");
      out.write("      </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      \r\n");
      out.write("      \r\n");
      out.write("    <!-- End Middle Column -->\r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("        <div class=\"w3-col m4\">\r\n");
      out.write("    \r\n");
      out.write("    <!-- cage 3.1-->\r\n");
      out.write("      <div class=\"w3-row-padding\">\r\n");
      out.write("        <div class=\"w3-col m12\">\r\n");
      out.write("          <div class=\"w3-card w3-round w3-grey\">\r\n");
      out.write("            <div class=\"w3-container w3-padding\">\r\n");
      out.write("            <h4 class=\"w3-center\">Accounts Management</h4>\r\n");
      out.write("              <p class=\"w3-center\"><img src=\"imgs/avatar.jpg\" class=\"w3-square\" style=\"height:106px;width:106px\" alt=\"Avatar\"></p>\r\n");
      out.write("              <hr>\r\n");
      out.write("              <a href=\"StudentPL.jsp\"><button type=\"button\" class=\"btn btn-outline-primary my-2 my-sm-0 \"><i class=\"fa fa-pencil\"></i> Accounts Management</button></a> \r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      <br>\r\n");
      out.write("      <!-- cage 3.2-->\r\n");
      out.write("      <div class=\"w3-row-padding\">\r\n");
      out.write("        <div class=\"w3-col m12\">\r\n");
      out.write("          <div class=\"w3-card w3-round w3-grey\">\r\n");
      out.write("            <div class=\"w3-container w3-padding\">\r\n");
      out.write("            <h4 class=\"w3-center\">Schedule Management</h4>\r\n");
      out.write("              <p class=\"w3-center\"><img src=\"imgs/avatar.jpg\" class=\"w3-square\" style=\"height:106px;width:106px\" alt=\"Avatar\"></p>\r\n");
      out.write("              <hr>\r\n");
      out.write("              <a href=\"StudentPL.jsp\"><button type=\"button\" class=\"btn btn-outline-primary my-2 my-sm-0 \"><i class=\"fa fa-pencil\"></i> Schedule Management</button></a> \r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      \r\n");
      out.write("      </div>\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("  <!-- End Grid -->\r\n");
      out.write("  </div>\r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("\t<!-- End Page Container -->\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<br>\r\n");
      out.write("\t\r\n");
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
