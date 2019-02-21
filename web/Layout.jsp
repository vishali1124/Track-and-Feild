
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Layout</title>
        
        <link href="External/fontawesome/css/all.css" rel="stylesheet" type="text/css"/>
        <link href="External/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="External/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        
        <link href="CSS/Layout.css" rel="stylesheet" type="text/css"/>
    </head>
    
    <body>
        <center>
            <div class="header">
                <img class="header_img" src="pictures/mainHeader.png" width='100%' alt="" />
            </div>


            <nav class="navbar navbar-light" style="background-color: #e3f2fd; width:100%;">
                <a class="nav-link" href="CAhomeEPM.jsp">Home<span class="sr-only">(current)</span></a>

                <a class="nav-link" href="RecordsE.jsp">Records<span class="sr-only">(current)</span></a>
                <a class="nav-link" href="ResultsEPM.jsp">Results<span class="sr-only">(current)</span></a>
                <a class="nav-link" href="PrizeListEPM.jsp">Prize List<span class="sr-only">(current)</span></a>
                <a class="nav-link" href="StudentPerformance1.jsp">Student Performance<span class="sr-only">(current)</span></a>
                <a class="nav-link" href="Points.jsp">Faculty Performance<span class="sr-only">(current)</span></a>

                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
            </nav>
            <br>
        </center>    
    </body>
</html>
