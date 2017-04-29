<%-- 
    Document   : dashboard
    Created on : Dec 11, 2016, 20:55:01
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

        <title>Cashier Panel</title>

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
                        <li><a href="#">Home</a></li>
                        <li><a href="LogIn.jsp">Logout</a></li>
                    </ul>
                    <form class="navbar-form navbar-right">
                        <input type="text" class="form-control" placeholder="Search...">
                    </form>
                </div>
            </div>
        </nav>
        <!-- =================================== -->
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-3 col-md-2 sidebar">
                    <ul class="nav nav-sidebar">
                        <li class="active"><a href="#">Home<span class="sr-only">(current)</span></a></li>
                        <li><a href="CashierItems.jsp">Items</a></li>
                    </ul>
                </div>
                <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                    <h1 class="page-header">Welcome Cashier</h1>
                    <form action="Cashier" method="POST">
                        <table border="0"  >
                            <tbody>
                                <tr>
                                    <td><label for="text" class="sr-only">id</label>
                                        <input type="number" name="id" class="form-control" placeholder="Item Id" required></td> 
                                    <td><label for="text" class="sr-only">qty</label>
                                        <input type="number" name="qty" class="form-control" placeholder="Quantity" required></td>
                                    <td><button class="btn btn-primary pull-right" type="submit">Add</button></td>
                                    </form>
                            <form action="Sell" method="POST">
                                <td>
                                    <button class="btn btn-primary pull-right" type="submit">Sell</button>
                                </td>
                            </form>
                            </tr>
                            </tbody>
                        </table>
                        <br>



                        <div class="table-responsive">
                            <%
                                Classes.DBOperations db = new DBOperations();
                                db.connectToDb();
                                ResultSet st = db.st.executeQuery("SELECT * FROM tempsell");
                            %>
                            <table class="table table-striped">
                                <thead>
                                <th>Item Number</th>
                                <th>Item Name</th>
                                <th>Item Price</th>
                                <th>Quantity</th>
                                </thead>
                                <%
                                    while (st.next()) {
                                %>
                                <tr>
                                <tbody>
                                <td><%=st.getString("id")%></td>
                                <td><%=st.getString("itmname")%></td>
                                <td><%=st.getString("itmprice")%></td>
                                <td><%=st.getString("qty")%></td>
                                <td><a href="#" class="btn btn-primary">Purchase</a>
                                    <a href="TempDel?id=<%=st.getString("id")%>" class="btn btn-danger">Remove</a></td>

                                </tr>
                                </tbody>
                                <%
                                    }
                                    st.close();
                                %>
                            </table>

                        </div>
                </div>
            </div>
        </div>
                <!-- =================================== -->
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
