<html>
    <head>
        <title>Registration</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>

        <jsp:include page="userHome.jsp"/>
        <link href="CSS/calender.css" rel="stylesheet" type="text/css"/>
        <script src="JS/calendarize.js" type="text/javascript"></script>

        <script type="text/javascript">

            function formValidate() {

                var userid = document.forms["myForms"]["userid"].value;
                var username = document.forms["myForms"]["username"].value;
                var password = document.forms["myForms"]["password"].value;
                var confirm = document.forms["myForms"]["confirm"].value;
                var phone = document.forms["myForms"]["phone"].value;
                var email = document.forms["myForms"]["email"].value;
                var type = document.forms["myForms"]["type"].value;


                if (idValidation(userid, 5))
                    if (userValidation(username, 5, 10))
                            if (passwordValidation(password, 5, 10))
                                if (confirmPassword(confirm, 5, 10))
                                    if (equalPassword(password, confirm))
                                        if (Phonenumber(phone, 10))
                                            if (emailValidation(email))
                                                if (typeValidation(type))
                                                return true;
                                            else
                                                return false;
                                        else
                                            return false;
                                    else
                                        return false;
                                else
                                    return false;
                            else
                                return false;
                        else
                            return false;
                    else
                        return false;
                else
                    return false;

            }


            function isEmpty(elemValue, field) {
                if (elemValue == " " || elemValue == null) {
                    alert("You cannot have " + field + " field empty");
                    return true;
                } else
                    return false;
            }


            function idValidation(elemValue, num) {
                var exp = /^[0-9a-zA-Z]+$/;

                if (!isEmpty(elemValue, "userid")) {
                    if (elemValue.match(exp)) {
                        if (elemValue.length === num) {
                            return true;
                        } else {
                            alert("Enter user ID including five characters");
                            return false;
                        }
                    } else
                    {
                        alert("You can use numbers and letters only");
                        return false;
                    }
                } else
                    return false;
            }


            function userValidation(elemValue, min, max) {
                var exp = /^[0-9a-zA-Z]+$/;

                if (!isEmpty(elemValue, "username")) {
                    if (elemValue.match(exp)) {
                        if (elemValue.length >= min && elemValue.length <= max) {
                            return true;
                        } else {
                            alert("Enter a username in between " + min + " and " + max + " characters");
                            return false;
                        }
                    } else
                    {
                        alert("You can use numbers and letters only");
                        return false;
                    }
                } else
                    return false;
            }


            



            function passwordValidation(elemValue, min, max) {
                if (!isEmpty(elemValue, "password")) {
                    if (elemValue.length >= min && elemValue.length <= max) {
                        return true;
                    } else {
                        alert("Enter a password between " + min + " and " + max + " characters");
                        return false;
                    }
                } else
                    return false;
            }



            function confirmPassword(elemValue, min, max) {
                if (!isEmpty(elemValue, "Confirm Password")) {
                    if (elemValue.length >= min && elemValue.length <= max) {
                        return true;
                    } else {
                        alert("Enter a password between " + min + " and " + max + " characters");
                        return false;
                    }
                } else
                    return false;
            }


            function equalPassword(password, confirm) {
                if (password === confirm)
                    return true;
                else {
                    alert("Confirm Password is not match with Password,Please enter password again.");
                    return false;
                }
            }


            function contactNumber(elemValue) {
                var exp = /^\d{10}$/;
                if (!isEmpty(elemValue, "phone")) {
                    if (elemValue.match(exp)) {
                        return true;
                    } else {
                        alert("Enter a valid Contact Number");
                        return false;
                    }
                } else
                    return false;
            }


            function emailValidation(elemValue) {
                if (!isEmpty(elemValue, "email")) {
                    var atpos = elemValue.indexOf("@");
                    var dotpos = elemValue.indexOf(".");
                    if (atpos < 1 || dotpos + 2 >= elemValue.length || atpos + 2 > dotpos) {
                        alert("Enter a valid email address");
                        return false;
                    } else
                        return true;
                } else
                    return false;
            }
            
            
            function typeValidation(elemValue) {
                var exp = /^[0-9a-zA-Z]+$/;
                if (!isEmpty(elemValue, "type"))
                {
                    if (elemValue.match(exp))
                    {
                        return true;
                    } else
                    {
                        alert("Enter only valid type");
                    }
                }
            }
        </script>


    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-8">

                    <form action="register.jsp" method="POST" name="myForms" onsubmit="formValidate()">
                        <div class="b">
                            <center>
                                <h1>Registration Form</h1>
                                <table border="0">
                                    <tbody>
                                        <tr>
                                            <td>User ID</td>
                                            <td><input type="text" name="userid" value="" size="50"  required="required" /></td>
                                        </tr>
                                        <tr></tr>
                                        <tr></tr>
                                        <tr>
                                            <td>User Name</td>
                                            <td><input type="text" name="username" size="50" required="required" /></td>
                                        </tr>
                                        <tr></tr>
                                        <tr></tr>
                                        <tr>
                                            <td>Password</td>
                                            <td><input type="password" name="password" size="50" required="required" /></td>
                                        </tr>
                                        <tr></tr>
                                        <tr></tr>
                                        <tr>
                                            <td>Confirm Password</td>
                                            <td><input type="password" name="confirm" size="50" required="required" /></td>
                                        </tr>
                                        <tr></tr>
                                        <tr></tr>
                                        <tr>
                                            <td>Phone Number</td>
                                            <td><input type="text" name="phone" size="50" required="required" /></td>
                                        </tr>
                                        <tr></tr>
                                        <tr></tr>
                                        <tr>
                                            <td>Email</td>
                                            <td><input type="text" name="email" size="50" required="required" /></td>
                                        </tr>
                                        <tr></tr>
                                        <tr></tr>
                                        <tr>
                                            <td>Registering Type</td>
                                            <td><input type="text" name="type" size="50" required="required" /></td>
                                        </tr>

                                        </body>
                                </table>

                                <input type="submit" value="submit"> 
                            </center>
                        </div>
                    </form>
                </div>

                <div class="col-md-4">
                    <div class="card mx-auto" style="width: 20em; height: 51em">
                        <img class="card-img-top mx-auto" style="width:60%" src="user.png" alt="Card image cap"/>
                        <div class="card-body">
                            

                            <br><br><br><br>

                            <img src="calender.png" alt="calender" style="width: 250px; height: 250px;margin-left: 15px;"/>


                        </div> 

                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
