

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="External/fontawesome/css/all.css" rel="stylesheet" type="text/css"/>
        <link href="External/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="External/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <title>Student Performance 1</title>
        
        <jsp:include page="Layout.jsp"/>

        
         <script type="text/javascript">
            function regValidate(){


            var sid = document.forms["StudentForm"]["sid"].value;
           
           if (sid === ""){
                alert("Please enter a Student ID");
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
        
   
        <h1 align="center">
            INTER FACULTY TRACK & FIELD CHAMPIONSHIP
        </h1>
        
        <br><br><br><br>
        
        <div class="container">
        <form id="StudentForm" action="StudentPerformance2.jsp" method="POST" onsubmit="return regValidate()">
            
                        <div class="form-group" align="center">

                            <label for="ename"><h3><b>Enter The Student ID</b></h3></label>
            
            
                            <input type="text" class="form-control" name="sid" id="sid" placeholder="Enter the Student ID(3)" >
             
             
             
         
                            <input type="submit" name="btnUpd" value="Enter" id="btnUpd">               
               
                        </div>
                </form>
        </div>
    </body>
</html>
