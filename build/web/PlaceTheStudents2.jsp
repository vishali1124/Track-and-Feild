
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<%@page import ="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="External/fontawesome/css/all.css" rel="stylesheet" type="text/css"/>
        <link href="External/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="External/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <title>Place Students for Events </title>
        <style>
            .A{
                //background-color:whitesmoke;
                height:1200px;
                width:100%;
            }
        </style>
        
         <jsp:include page="LayoutR.jsp"/>

        
        
        
         <script type="text/javascript">
            function regValidate(){


            var eid = document.forms["addForm"]["eid"].value;
            var ename = document.forms["addForm"]["ename"].value;
            var type = document.forms["addForm"]["type"].value;
            var gender = document.forms["addForm"]["gender"].value;
            var date = document.forms["addForm"]["date"].value;
            var place = document.forms["addForm"]["place"].value;
            var sid = document.forms["addForm"]["sid"].value;
            var sname = document.forms["addForm"]["sname"].value;
            var faculty = document.forms["addForm"]["faculty"].value;
            var record = document.forms["addForm"]["record"].value;
            var unit = document.forms["addForm"]["unit"].value;

            
           
          
            if (place == "Select"){ 
                alert("Please select a valid Place");
                return false;
            }
            else if (faculty == "Select"){ 
                alert("Please select a valid faculty");
                return false;
            }
            else if (unit == "Select"){ 
                alert("Please select a valid Unit");
                return false;
            }
            else if (sid == ""){
                alert("Please Enter a Student ID");
                return false;
            }
            else if (record == ""){
                alert("Please Enter a Record");
                return false;
            }
            else
            if(isNumeric(sid))
                    return true;
            else
            return false;
           
       
       
        function isNumeric(elemValue){
            var exp = /^\d{3}$/;
           
                if(elemValue.match(exp)){
                    return true;
                }
                else {
                    alert("Enter a valid 3 digit Student ID");
                    return false;
                }
           
        }
                         
           }
        </script>
        
    </head>
    
    
    <body>
         <%!
            Connection conn;
            
            PreparedStatement pstmt;
            ResultSet result;

            String qry;

            Integer eid;
          
        %>
       
        
        <%

            
            
                eid = Integer.parseInt(request.getParameter("id"));
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field","root","");
                    qry="SELECT * FROM placeaf WHERE eid =?";
                    pstmt = conn.prepareStatement(qry);
                    pstmt.setInt(1, eid);
                    result=pstmt.executeQuery(); 
                    result.first();
                
                } catch(ClassNotFoundException cnfe){
                   System.out.println("Class not found exception" + cnfe.toString());
                } catch(SQLException sqle){
                    out.println("SQL eCXCEPTION " + sqle);
                }

            
        %>

    
    
        
        
        <h1 align="center">Place the Students</h1>
        <br><br>
        
        <div class="container" style="width:50%">
        
        <form id="addForm" action="test.jsp" method="POST" onsubmit="return regValidate()">
            
            
              
                    
            <input type="text" name="eid" hidden id="eid" value ='<%=result.getString("eid")%>' />
                   
                    
            <div class="form-group">

                <label for="ename"><b>Event Name:</b></label>
                        
                <input type="text" name="ename" class="form-control" id="ename" value ='<%=result.getString("ename")%>' />
            </div>
            <div class="form-group">

                    
                <label for="type"><b>SportsMeet Type:</b></label>
                       
                <input type="text" name="type" class="form-control" id="type" value ='<%=result.getString("type")%>' />
            </div>       
                    
            <div class="form-group">

                    
                <label for="etype"><b>Event Type:</b></label>
                       
                 <input type="text" name="etype" class="form-control" id="etype" value ='<%=result.getString("etype")%>' />
                    
            </div>                
                            
                            
                            
            <div class="form-group">

                    
                <label for="gender"><b>Gender:</b></label>
                    <input type="text" class="form-control" name="gender" id="gender" value ='<%=result.getString("gender")%>' />
                    
                   
            </div>
                           
                    <input type="date" name="date" hidden id="date" value ='<%=result.getString("date")%>' /></td>
                  
                    
                                      
                    
            <div class="form-group">

                    
                <label for="place"><b>Place:</b></label>
                        
                        <select class="form-control" id = "place" name="place">
                            <option value = "Select" name="place">Select</option>

                            <option value = "1" name="place">1</option>
                            <option value = "2" name="place">2</option>
                            <option value = "3" name="place">3</option>
                            <option value = "4" name="place">4</option>
                            <option value = "5" name="place">5</option>
                            <option value = "6" name="place">6</option>
                            <option value = "7" name="place">7</option>
                            <option value = "8" name="place">8</option>
                            <option value = "9" name="place">9</option>
                            <option value = "10" name="place">10</option>
                         </select>
                       
            </div>
                    
            <div class="form-group">

                    
                <label for="sid"><b>Student ID:</b></label>
                            <input type="text" class="form-control" name="sid" id="sid" placeholder="Enter the Student ID(3)" >
            </div>       
                    
            <div class="form-group">

                    
                <label for="sname"><b>Student Name:</b></label>
                            <input type="text" class="form-control" name="sname" id="sname" placeholder="Enter The Student Name" >
            </div>
                    
            <div class="form-group">

                    
            <label for="faculty"><b>Faculty:</b></label>
                        <select class="form-control" id = "faculty" name="faculty">
                            <option value = "Select" name="faculty">Select</option>

                            <option value = "Faculty Of Art" name="faculty">A-Faculty of Art</option>
                            <option value = "Faculty Of Science" name="faculty">B-Faculty of Science</option>
                            <option value = "Faculty Of Management Studies And Commerce" name="faculty">C-Faculty of Management Studies and Commerce</option>
                            <option value = "Faculty Of Medicine" name="faculty">D-Faculty of Medicine</option>
                            <option value = "Faculty Of Business Studies" name="faculty">E-Faculty of Business Studies</option>
                            <option value = "Faculty Of Applied Science" name="faculty">F-Faculty of Applied Science</option>
                            <option value = "Faculty Of Agriculture" name="faculty">G-Faculty of Agriculture</option>
                            <option value = "Faculty Of Engineering" name="faculty">H-Faculty of Engineering</option>
                            <option value = "Department Of Siddha Medicine" name="faculty">I-Department Of Siddha Medicine</option>
                            <option value = "Allied Health Science Unit" name="faculty">J-Allied Health Science Unit</option>
                            <option value = "Faculty Of Technology" name="faculty">K-Faculty of Technology</option>

                                                        
                         </select>
            </div>
                    
            <div class="form-group">

                    
            <label for="record"><b>Record:</b></label>
                            <input type="text" class="form-control" name="record" id="record" placeholder="Enter the record" >
               
             <label for="unit"><b>Unit:</b></label>
            <select class="form-control" id = "unit" name="unit">
                            <option value = "Select" name="place">Select</option>

                            <option value = "seconds" name="place">s</option>
                            <option value = "minutes" name="place">min</option>
                            <option value = "hours" name="place">hrs</option>
                            <option value = "meters" name="place">m</option>
                            <option value = "kilometers" name="place">km</option>
                            <option value = "feet" name="place">ft</option>
                            
                         </select>                        
            </div>
                    
           <div class="form-group">

                    
            <label for="points"><b>Points:</b></label>
                            <input type="text" name="points" class="form-control" id="points" placeholder="Enter the points" >
           </div>
                    
                     
                     
                    
                   
                <div class="form-group">     
                      <input type="submit" name="btnUpd" value="Place the Students " id="btnUpd">
                </div>
        </form>
        </div>
  
       

    </body>
</html>