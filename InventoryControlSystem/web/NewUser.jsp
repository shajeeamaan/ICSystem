<%-- 
    Document   : dashboard
    Created on : Dec 12, 2016, 09:15:22
    Author     : Rockit Bat
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Classes.DBOperations"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../favicon.ico">

        <title>Add User</title>

        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.css" rel="stylesheet">

        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/dashboardfixed.css" rel="stylesheet">

         <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/signin.css" rel="stylesheet"/>

    </head>

    <body>
        <%if(session.getAttribute("post")==null)
        {
            response.sendRedirect("index.jsp");
        }%>
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Inventory Control System</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="Admin.jsp">Home</a></li>
                        <li><a href="LogIn.jsp">Logout</a></li>
                    </ul>
                    <form class="navbar-form navbar-right">
                        <input type="text" class="form-control" placeholder="Search...">
                    </form>
                </div>
            </div>
        </nav>

        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-3 col-md-2 sidebar">
                    <ul class="nav nav-sidebar">
                        <li><a href="Admin.jsp">Home</a></li>
                        <li><a href="Inventory.jsp">Inventory Details</a></li>
                        <li><a href="Supplier.jsp">Supplier Details</a></li>
                        <li><a href="SellingDetails.jsp">Selling Details</a></li>
                        <li><a href="CheckPsw.jsp">Change Password</a></li>
                        <li><a href="Additem.jsp">Add Item</a></li>
                        <li class="active"><a href="#">Users<span class="sr-only">(current)</span></a></li>
                    </ul>
                </div>
                <div>
                    <!-- ================================================== -->
                    <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                    <div>
                        <form class="form-signin" action="SignIn" method="post">
                            <h2 class="form-signin-heading">Please sign in</h2>

                            <label for="text" class="sr-only">First Name</label>
                            <input type="text" name="fname" class="form-control" placeholder="Fast Name" required>
                            <br>

                            <label for="text" class="sr-only">Last Name</label>
                            <input type="text" name="lname" class="form-control" placeholder="Last Name" required>
                            <br>
                            
                            <select name="post" class="form-control">
                                <option>Admin</option>
                                <option>Cashier</option>
                            </select>
                            <br>
                            
                            <label for="text" class="sr-only">Tell</label>
                            <input type="text" name="tell" class="form-control" placeholder="Tel No:" required>
                            <br>
                            
                            <label for="inputEmail" class="sr-only">Email address</label>
                            <input type="text" name="eml" class="form-control" placeholder="Email address" required autofocus>
                            <br>
                            
                            <label for="text" class="sr-only">uname</label>
                            <input type="text" name="uname" class="form-control" placeholder="User Name" required>
                            <br>
                            
                            <label for="inputPassword" class="sr-only">Password</label>
                            <input type="text" name="inputPassword" class="form-control" placeholder="Password" required>
                            <br>
                            <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
                            <button class="btn btn-lg btn-primary btn-block" type="reset">Cancel</button>
                            <br>
                        </form>

                    </div>
                    <!-- ================================================== -->
                    </div>
                </div>
            </div>
        </div>

        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
        <script src="../../dist/js/bootstrap.min.js"></script>
        <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
        <script src="../../assets/js/vendor/holder.min.js"></script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
    </body>
</html>
