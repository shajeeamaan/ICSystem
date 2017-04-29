<%-- 
    Document   : dashboard
    Created on : Dec 13, 2016, 09:35:07
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

        <title>User Details </title>

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
                        <li><a href="Additem.jsp">Add Item</a></li>
                        <li class="active"><a href="#">Users<span class="sr-only">(current)</span></a></li>
                    </ul>
                </div>
                <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main"> 
                    
                    <h2 class="sub-header">All Users<a href="NewUser.jsp" class="btn btn-primary pull-right">Add User</a></h2>


                    <div class="table-responsive">
                        <%
                            Classes.DBOperations db = new DBOperations();
                            db.connectToDb();
                            ResultSet st = db.st.executeQuery("SELECT * FROM login");
                        %>
                        <table class="table table-striped">
                            <thead>
                                
                            <th>Id</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Username</th>
                            <th>Email</th>
                            <th>Password</th>
                            <th>Tell</th>
                            <th>Access Type</th>
                            </thead>
                            <%                                while (st.next()) {
                            %>
                            <tr>
                            <tbody>
                            <td><%=st.getString("id")%></td>
                            <td><%=st.getString("fname")%></td>
                            <td><%=st.getString("lname")%></td>
                            <td><%=st.getString("uname")%></td>
                            <td><%=st.getString("eml")%></td>
                            <td><%=st.getString("psw")%></td>
                            <td><%=st.getString("tell")%></td>
                            <td><%=st.getString("access")%></td>
                            <td>
                                <a href="DelUser?id=<%=st.getString("id")%>" class="btn btn-danger">Remove</a></td>

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
