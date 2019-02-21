
<%@page import="java.sql.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
         <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
         <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
         <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        
         
         <link href="login.css" rel="stylesheet" type="text/css"/>            
        <link href="CSS/Layout.css" rel="stylesheet" type="text/css"/>
        <link href="Uni.css" rel="stylesheet" type="text/css"/>
        <script src="Uni.js" type="text/javascript"></script>
         <jsp:include page="userHome.jsp"/>
        
    </head>
    <body>
       
        <div class="l">
            <img  src="images/book.png" alt=""/>
        </div>
        
         <div class="container">
             <div class="animate one" >
            <span>S</span><span>p</span><span>o</span><span>r</span><span>t</span><span>s</span>&nbsp;
            <span>U</span><span>n</span><span>i</span> <span>t</span>   
          </div>
             
            <div class="container" style="width: 400px;" > 

            <form id="contact" name="myForm" method="post" action="login">
                <h3>Login Here........</h3>             

                <fieldset>                    
                     <input type="text" name="email" placeholder="Enter Your Email" tabindex="1"  required >     
                   </select>
                </fieldset>
               
               <fieldset>
                   <input type="password" class="border" name="password" placeholder="&nbsp;&nbsp;&nbsp;&nbsp;Enter Password" style="width: 350px; height: 40px;" tabindex="2"  required  >
                </fieldset>
                
                <fieldset>
                    <input type="submit" name="action"  class="btn btn-primary " style="width: 100px;" value="Login">
                     <input type="reset" value="Reset" name="action"  class="btn btn-primary " style="width: 100px;" >
                </fieldset>
                
                <fieldset>
                    <button  class="btn btn-primary " type="submit" name="forgot password" onclick="location.href='forgot.jsp'">
                        Forgot Password
                    </button>
                </fieldset>
            </form>
        </div>
             
             
       </div>
      

       
    </body>
</html>
