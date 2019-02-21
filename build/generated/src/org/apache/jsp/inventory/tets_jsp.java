package org.apache.jsp.inventory;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class tets_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<html>\n");
      out.write("<head> \n");
      out.write("<title>JavaScript calendar</title>\n");
      out.write("<script> \n");
      out.write("function displayCalendar(){\n");
      out.write(" \n");
      out.write(" \n");
      out.write(" var htmlContent =\"\";\n");
      out.write(" var FebNumberOfDays =\"\";\n");
      out.write(" var counter = 1;\n");
      out.write(" \n");
      out.write(" \n");
      out.write(" var dateNow = new Date();\n");
      out.write(" var month = dateNow.getMonth();\n");
      out.write("\n");
      out.write(" var nextMonth = month+1; //+1; //Used to match up the current month with the correct start date.\n");
      out.write(" var prevMonth = month -1;\n");
      out.write(" var day = dateNow.getDate();\n");
      out.write(" var year = dateNow.getFullYear();\n");
      out.write(" \n");
      out.write(" \n");
      out.write(" //Determing if February (28,or 29)  \n");
      out.write(" if (month == 1){\n");
      out.write("    if ( (year%100!=0) && (year%4==0) || (year%400==0)){\n");
      out.write("      FebNumberOfDays = 29;\n");
      out.write("    }else{\n");
      out.write("      FebNumberOfDays = 28;\n");
      out.write("    }\n");
      out.write(" }\n");
      out.write(" \n");
      out.write(" \n");
      out.write(" // names of months and week days.\n");
      out.write(" var monthNames = [\"January\",\"February\",\"March\",\"April\",\"May\",\"June\",\"July\",\"August\",\"September\",\"October\",\"November\", \"December\"];\n");
      out.write(" var dayNames = [\"Sunday\",\"Monday\",\"Tuesday\",\"Wednesday\",\"Thrusday\",\"Friday\", \"Saturday\"];\n");
      out.write(" var dayPerMonth = [\"31\", \"\"+FebNumberOfDays+\"\",\"31\",\"30\",\"31\",\"30\",\"31\",\"31\",\"30\",\"31\",\"30\",\"31\"]\n");
      out.write(" \n");
      out.write(" \n");
      out.write(" // days in previous month and next one , and day of week.\n");
      out.write(" var nextDate = new Date(nextMonth +' 1 ,'+year);\n");
      out.write(" var weekdays= nextDate.getDay();\n");
      out.write(" var weekdays2 = weekdays\n");
      out.write(" var numOfDays = dayPerMonth[month];\n");
      out.write("     \n");
      out.write(" \n");
      out.write(" \n");
      out.write(" \n");
      out.write(" // this leave a white space for days of pervious month.\n");
      out.write(" while (weekdays>0){\n");
      out.write("    htmlContent += \"<td class='monthPre'></td>\";\n");
      out.write(" \n");
      out.write(" // used in next loop.\n");
      out.write("     weekdays--;\n");
      out.write(" }\n");
      out.write(" \n");
      out.write(" // loop to build the calander body.\n");
      out.write(" while (counter <= numOfDays){\n");
      out.write(" \n");
      out.write("     // When to start new line.\n");
      out.write("    if (weekdays2 > 6){\n");
      out.write("        weekdays2 = 0;\n");
      out.write("        htmlContent += \"</tr><tr>\";\n");
      out.write("    }\n");
      out.write(" \n");
      out.write(" \n");
      out.write(" \n");
      out.write("    // if counter is current day.\n");
      out.write("    // highlight current day using the CSS defined in header.\n");
      out.write("    if (counter == day){\n");
      out.write("        htmlContent +=\"<td class='dayNow'  onMouseOver='this.style.background=\\\"#FF0000\\\"; this.style.color=\\\"#FFFFFF\\\"' \"+\n");
      out.write("        \"onMouseOut='this.style.background=\\\"#FFFFFF\\\"; this.style.color=\\\"#00FF00\\\"'>\"+counter+\"</td>\";\n");
      out.write("    }else{\n");
      out.write("        htmlContent +=\"<td class='monthNow' onMouseOver='this.style.background=\\\"#FF0000\\\"'\"+\n");
      out.write("        \" onMouseOut='this.style.background=\\\"#FFFFFF\\\"'>\"+counter+\"</td>\";    \n");
      out.write(" \n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    weekdays2++;\n");
      out.write("    counter++;\n");
      out.write(" }\n");
      out.write(" \n");
      out.write(" \n");
      out.write(" \n");
      out.write(" // building the calendar html body.\n");
      out.write(" var calendarBody = \"<table class='calendar'> <tr class='monthNow'><th colspan='7'>\"\n");
      out.write(" +monthNames[month]+\" \"+ year +\"</th></tr>\";\n");
      out.write(" calendarBody +=\"<tr class='dayNames'>  <td>Sun</td>  <td>Mon</td> <td>Tues</td>\"+\n");
      out.write(" \"<td>Wed</td> <td>Thurs</td> <td>Fri</td> <td>Sat</td> </tr>\";\n");
      out.write(" calendarBody += \"<tr>\";\n");
      out.write(" calendarBody += htmlContent;\n");
      out.write(" calendarBody += \"</tr></table>\";\n");
      out.write(" // set the content of div .\n");
      out.write(" document.getElementById(\"calendar\").innerHTML=calendarBody;\n");
      out.write(" \n");
      out.write("}\n");
      out.write("</script> \n");
      out.write("</head> \n");
      out.write(" \n");
      out.write("<body onload=\"displayCalendar()\"> \n");
      out.write(" \n");
      out.write("<div id=\"calendar\"></div> \n");
      out.write("</body> \n");
      out.write("<style> \n");
      out.write(".monthPre{\n");
      out.write(" color: gray;\n");
      out.write(" text-align: center;\n");
      out.write("}\n");
      out.write(".monthNow{\n");
      out.write(" color: blue;\n");
      out.write(" text-align: center;\n");
      out.write("}\n");
      out.write(".dayNow{\n");
      out.write(" border: 2px solid black;\n");
      out.write(" color: #FF0000;\n");
      out.write(" text-align: center;\n");
      out.write("}\n");
      out.write(".calendar td{\n");
      out.write(" htmlContent: 2px;\n");
      out.write(" width: 40px;\n");
      out.write("}\n");
      out.write(".monthNow th{\n");
      out.write(" background-color: #000000;\n");
      out.write(" color: #FFFFFF;\n");
      out.write(" text-align: center;\n");
      out.write("}\n");
      out.write(".dayNames{\n");
      out.write(" background: #0FF000;\n");
      out.write(" color: #FFFFFF;\n");
      out.write(" text-align: center;\n");
      out.write("}\n");
      out.write(" \n");
      out.write("</style> \n");
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
