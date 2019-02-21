<%-- 
    Document   : domore
    Created on : Aug 11, 2018, 9:40:23 PM
    Author     : lenovo
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%> 
<%@page import="java.sql.DriverManager"%>
<%--@page import="com.mysql.jdbc.Connection"--%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.*"%>
<%Class.forName("com.mysql.jdbc.Driver");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
       <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
       <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>

               <jsp:include page="schedulehome.jsp"/>
               <link href="CSS/calender.css" rel="stylesheet" type="text/css"/>
              <script src="JS/calendarize.js" type="text/javascript"></script>
               <link href="secmain.css" rel="stylesheet" type="text/css"/>








</head>
    <body>
        <div align="center">
            
            
            <nav class="navbar navbar-light" style="background-color: #e3f2fd; width: 1330px;">
                <a class="nav-link" href="userRo.jsp">Home <span class="sr-only">(current)</span></a>
                <a class="nav-link" href="view_cal.jsp">Calender <span class="sr-only">(current)</span></a>
                <a class="nav-link" href="add_event.jsp">Add-Event to schedule<span class="sr-only">(current)</span></a>
               
                <form class="form-inline my-2 my-lg-0" name="searchForm" action="" method="get">
                    <input class="form-control mr-sm-2" type="text" name="q" placeholder="Search" value="" aria-label="Search">
                    <input class="btn btn-outline-success my-2 my-sm-0" name="sumbit" type="submit" value="Search"/>
                </form>

            </nav>
            
      
        </div>
        
        <%!
            Connection conn;
            Statement stat;
            ResultSet result;
            String qry;
            String query;
            String sql;
            Integer sid;
            
        %>
        <%
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
        %>
        <br><br>
      
        <div class="container">
		<div class="row">
                    <div class="col-md-8">
				<div class="jumbotron" style="width:800px;; height:100%;">
                                    
                     <div class="card-group">
                                      <center><h1>View More & Do More</h1></center>
    <center><table align="center " cellpadding="10" cellspacing="20" border="1" ></center>
    
        
    
    <tr>
        <tr bgcolor="lightblue">
        <!--<td><b> Schedule ID </b></td>-->
        <td><b> Event Name </b></td>
        <td><b>Start Day</b></td>
        <td><b> End Day </b></td>
        <td><b> Location </b></td>
        <td><b>Start Time</b></td>
        <td><b>Duration</b></td>
        
        
        <td><b>Edit</b></td>
        <td><b>Delete</b></td>
        
        
        
        
    </tr>
    
        <!--getting the database connection-->
        <% String url="jdbc:mysql://localhost/track&field";
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
                %>
                
              
                
                
            <tr>    
                <!--<td><%=rs.getString("sid")%></td>-->
                <td><%=rs.getString("title")%></td>
                <td><%=rs.getString("start")%></td>
                <td><%=rs.getString("end")%></td>
                <td><%=rs.getString("location")%></td>
                <td><%=rs.getString("starttime")%></td>
                <td><%=rs.getString("duration")%></td>
                
                <td><a href="up.jsp?sid=<%=rs.getString("sid")%>">Edit</a></td>
                <td><a href="del.jsp?sid=<%=rs.getString("sid")%>">Delete</a></td>
            </tr>
            
            <%   
                }
            con.close();
           }catch(SQLException e){
               e.printStackTrace();
               
           }
        %>
        </table>  
        <center><button><a href="schemain.jsp" class="button">Go Back</a></button></center>
                                            
                               
                                            
                                        
                                      </div>
				</div>
			</div>
                                
                       
                </div>
        </div>
    </body>
</html>