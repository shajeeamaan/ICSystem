<%-- 
    Document   : dashboard
    Created on : Dec 12, 2016, 11:20:53
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

        <title>Add Items</title>

        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.css" rel="stylesheet">

        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/dashboardfixed.css" rel="stylesheet">



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
                        <li class="active"><a href="#">Add Item<span class="sr-only">(current)</span></a></li>
                        <li><a href="Users.jsp">Users</a></li>
                    </ul>
                </div>
                <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                    <!--                    <h1 class="page-header">Dashboard</h1>
                    
                                        <div class="row placeholders">
                    
                    
                                        </div>-->

                    <h2 class="sub-header">Add Item</h2>

                    <form action="AddItem" method="post">
                        <div class="row">
                            <div class="col-lg-12">

                                <div class="form-group">
                                    <label>Item Name</label>
                                    <input class="form-control" type="text" name="itmname">
                                </div>
                                <div class="form-group">
                                    <label>Buying Price</label>
                                    <input class="form-control" type="number" name="buyprice">
                                </div>
                                <div class="form-group">
                                    <label>Selling Price</label>
                                    <input class="form-control" type="number" name="sellprice">
                                </div>
                                <div class="form-group">
                                    <label>Quantity</label>
                                    <input class="form-control" type="number" name="qty">
                                </div>
                                <div class="form-group">
                                    <label>Category</label><select class="form-control" name="category">
                                        <option>Food</option>
                                        <option>Utility</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Exp:</label>
                                    <input class="form-control" value="null" type="text" name="exp">
                                </div>
                                <div class="form-group">
                                    <label>Supplier Name</label>
                                    <input class="form-control" type="text" name="supname">
                                </div>
                                <div class="form-group">
                                    <label>Supplier Tell</label>
                                    <input class="form-control" type="text" name="suptell">
                                </div>
                                <div class="form-group">
                                    <label>Supplier Email</label>
                                    <input class="form-control" type="text" name="supeml">
                                </div>
                                <div class="form-group">
                                    <a href="#"><button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button></a>
                                </div>
                                <div class="form-group">
                                    <button class="btn btn-lg btn-primary btn-block" type="reset">Cancel</button>
                                </div>
                                <br>
                                </form>
                                <form action="DeleteItem" method="post">
                                    <h2 class="sub-header">Remove Item</h2>
                                    <div class="form-group">
                                        <label>Item Number</label>
                                        <input class="form-control" type="number" name="id">
                                    </div>
                                    <div class="form-group">
                                        <a href="#"><button class="btn btn-danger btn-lg btn-block" type="submit">Remove</button></a>
                                    </div>
                                </form>
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
