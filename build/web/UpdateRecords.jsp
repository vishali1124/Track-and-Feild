
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<%@page import ="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Update Records</title>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="External/fontawesome/css/all.css" rel="stylesheet" type="text/css"/>
        <link href="External/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="External/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        
        <jsp:include page="LayoutR.jsp"/>
    </head>
    <body>
         <%!
            Connection conn;
            PreparedStatement pstmt;
            ResultSet result;
            String qry;
            Integer sid;
          
        %>
        <%
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field","root","");
            if(request.getParameter("btnUpd")!= null){
                sid = Integer.parseInt(request.getParameter("hiddenId"));
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    qry="UPDATE  records SET  type =? , sname =?, faculty=? ,sid =? ,record =? ,unit =?,date =? WHERE ename =?" ;
                    pstmt = conn.prepareStatement(qry);
                    pstmt.setString(1, request.getParameter("type"));

                    pstmt.setString(2, request.getParameter("sname"));
                    pstmt.setString(3, request.getParameter("faculty"));
                    pstmt.setInt(4, sid);

                    pstmt.setString(5, request.getParameter("ename"));
                    pstmt.setString(6, request.getParameter("record"));
                    pstmt.setString(7, request.getParameter("unit"));
                    pstmt.setString(8, request.getParameter("date"));
                    pstmt.executeUpdate();
                    response.sendRedirect("./RecordsR.jsp");
                
                } catch(ClassNotFoundException cnfe){
                   System.out.println("Class not found exception" + cnfe.toString());
                } catch(SQLException sqle){
                    out.println("SQL eCXCEPTION " + sqle);
                }
            }
            if(request.getParameter("id")!=null && request.getParameter("id") != ""){
                sid = Integer.parseInt(request.getParameter("id"));
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    qry="SELECT * FROM records WHERE sid =?";
                    pstmt = conn.prepareStatement(qry);
                    pstmt.setInt(1, sid);
                    result=pstmt.executeQuery(); 
                    result.first();
                
                } catch(ClassNotFoundException cnfe){
                   System.out.println("Class not found exception" + cnfe.toString());
                } catch(SQLException sqle){
                    out.println("SQL eCXCEPTION " + sqle);
                }
            }else{
                response.sendRedirect("./Records.jsp");
            }
            
        %>

  <div>
      
    </div>         
    

        <center>
        <h1>Edit Details</h1>
        <form id="editForm" action="" method="POST">
            <table border="0" cellspacing="5" cellpadding="5"> 
                <tbody>
                    
                     <tr>
                        <td><b>Sportsmeet Type: </b></td>
                        <td>
                            <input type="text" name="type" id="type" value ='<%=result.getString("type")%>' /></td>
                    </tr>
                    
                    <tr>
                        <td><b>Student ID: </b></td>
                        <td>
                            <input type="text" name="sid" id="sid" value ='<%=result.getString("sid")%>' /></td>
                    </tr>
                    
                    <tr>
                        <td><b>Student Name: </b></td>
                        <td>
                            <input type="text" name="sname" id="sname" value ='<%=result.getString("sname")%>' /></td>
                    </tr>
                    
                    <tr>
                        <td><b>Faculty:  </b></td>
                        <td>
                            <input type="text" name="faculty" id="faculty" value ='<%=result.getString("faculty")%>' /></td>
                    </tr>
                   
                    <tr>
                        <td><b>Event Name:  </b></td>
                        <td>
                            <input type="text" name="ename" id="ename" value ='<%=result.getString("ename")%>' /></td>
                    </tr>
                    
                   
                    
                    
                     <tr>
                        <td><b>Record : </b></td>
                        <td>
                            <input type="text" name="record" id="record" value ='<%=result.getString("record")%>' /></td>
                    </tr>
                    
                     <tr>
                        <td><b>Unit: </b></td>
                        <td>
                            <input type="text" name="unit" id="unit" value ='<%=result.getString("unit")%>' /></td>
                    </tr>
                  
                     <tr>
                        <td><b>Date: </b></td>
                        <td>
                            <input type="date" name="date" id="date" value ='<%=result.getString("date")%>' /></td>
                    </tr>
                    
                   
                   
                    
                    <tr>
                        <td>
                            <input type="submit" name="btnUpd" value="Edit Details" id="btnUpd"></td>
                        <td></td>
                    </tr>
                    
                </tbody>
            </table>

        </form>
    </center>
        

    </body>
</html>