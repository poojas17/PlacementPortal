
<%
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
    if (session.getAttribute("username") == null) {
        response.sendRedirect("index.jsp");
        return;
    }%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
    <head>

        <style>
            th, td {
                text-align:center;
            }

            /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
            .row.content {height: 300px
            }

            .top-buffer { margin-top:30px; }

            /* Css for user specific info*/
            .navbar-login
            {
                width: 250px;
                padding: 10px;
                padding-bottom: 0px;
            }

            .navbar-login-session
            {
                padding: 10px;
                padding-bottom: 0px;
                padding-top: 0px;
            }

            .icon-size
            {
                font-size: 87px;
            }
        </style>
        <title>Student Login</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

        <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="footer.css">

    </head>
    <body>

        <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/placement_portal"
                           user="root"  password="annu"/>

        <sql:query dataSource="${snapshot}" var="result">
            SELECT * from u_test;
        </sql:query>
        <nav class="navbar-default" style="background-color: #900c3f;">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Placement Portal</a>
                <ul class="nav navbar-nav " >
                    <li> &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;  </li>
                    <li ><a href="index.jsp"><span class="glyphicon glyphicon-asterisk"></span>  Home</a></li>
                    <li class="active"><a href="student.jsp"><span class="glyphicon glyphicon-asterisk"></span>  Student</a></li>
                    <li ><a href="facility.jsp"><span class="glyphicon glyphicon-asterisk"></span>  Facilities</a></li>
                    <li><a href="studymaterial.jsp"><span class="glyphicon glyphicon-asterisk"></span>  Study Material</a></li>
                    <li><a href="brochure.pdf"><span class="glyphicon glyphicon-asterisk"></span>  Placement Brochure</a></li>
                </ul>    

                <%
                    if (session.getAttribute("username") == null || session.getAttribute("username").equals("")) {
                        ;
                    } else {%>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">

                            <span class="glyphicon glyphicon-user"></span> 
                            <strong>Welcome 
                                <%
                                    out.println(session.getAttribute("username"));%>
                                !:)</strong>
                            <span class="glyphicon glyphicon-chevron-down"></span>
                        </a>

                        <ul class="dropdown-menu">
                            <li>
                                <div class="navbar-login">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <p class="text-center">
                                                <span class="glyphicon glyphicon-user icon-size"></span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div class="navbar-login navbar-login-session">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <p>
                                            <ul class="nav nav-pills nav-stacked">
                                                <li class="active">  <li><a href="profile1.jsp">View Profile</a></li>
                                                <li><a href="updating.jsp">Update Profile</a></li>
                                                <li><a href="#">Performance Record</a></li>
                                            </ul><br>    
                                            <a href="logout.jsp" class="btn btn-danger btn-block">Logout</a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>


                        <%
                            }
                        %>

                        </div>
                        </nav>



                        <div class="container">
                            <div class="row content">

                                <div class="col-sm-9 sidenav">
                                    <h2><small>Bulletin Board</small></h2>
                                    <hr>
                                    <h2>Upcoming Tests</h2>

                                    <h5><span class="glyphicon glyphicon-time"></span> Posted on March 10, 2016.</h5>
                                    <h5> 

                                        <table border="1" width="75%">
                                            <tr>
                                                <th>Topic</th>
                                                <th>Date</th>
                                                <th>Time</th>
                                            </tr>
                                            <c:forEach var="row" items="${result.rows}">
                                                <tr >     
                                                    <td align="center">
                                                        <c:out value="${row.topic}"/> </td>
                                                    <td><c:out value="${row.date}"/></td>
                                                    <td><c:out value="${row.time}"/></td>
                                                </tr>
                                            </c:forEach>
                                        </table>
                                    </h5>
                                    <br><br>


                                    <sql:query dataSource="${snapshot}" var="result1">
                                        SELECT * from u_company;
                                    </sql:query>

                                    <h2>Upcoming Recruiters</h2>
                                    <h5><span class="glyphicon glyphicon-time"></span> Posted on March 10, 2016.</h5>
                                    <h5> 

                                        <table border="1" width="75%">
                                            <tr>
                                                <th>Company Name </th>
                                                <th>Date</th>
                                                <th>Post</th>
                                            </tr>
                                            <c:forEach var="row" items="${result1.rows}">
                                                <tr >     
                                                    <td align="center">
                                                        <c:out value="${row.c_name}"/> </td>
                                                    <td><c:out value="${row.date}"/></td>
                                                    <td><c:out value="${row.post}"/></td>
                                                </tr>
                                            </c:forEach>
                                        </table>

                                    </h5>
                                    <br><br>



                                    <h4>Leave a Comment:</h4>

                                    <form role="form">
                                        <div class="form-group">
                                            <textarea class="form-control" rows="3" name="commments"></textarea>
                                        </div>
                                        <button type="submit" class="btn btn-success">Submit</button>
                                    </form>
                                    <br><br>
                                </div>                                
                            </div>
                        </div>

                        <footer class="footer-distributed">


                            <div class="footer-left">


                                <h1>Placement<br>Portal Cell</h1>								
                                <p class="footer-links">
                                    <span>For your bright future</span>
                                    <br><br>					
                                </p>


                                <p class="footer-company-name">Placement Management System &copy; 2016</p>

                            </div>


                            <div class="footer-center">


                                <div>


                                    <i class="glyphicon glyphicon-map-marker"></i>

                                    <p>DUCS<br>Faculty Of Mathematical Sciences, Delhi</p>

                                </div>


                                <div>

                                    <i class="glyphicon glyphicon-earphone"></i>

                                    <p>91-999999999</p>

                                </div>


                                <div>

                                    <i class="glyphicon glyphicon-envelope"></i>


                                    <p><a href="https://www.gmail.com">pmsystem@gmail.com</a></p>

                                </div>


                            </div>


                            <div class="footer-right">


                                <p class="footer-company-about">

                                    <span>About the portal</span>
                                <h>This portal is an interface between recruiters and students.<br>	
                                    Made by <br> Annu Joshi, Mani Bansal, Pooja Satija.</h>

                                </p>


                                <div class="footer-icons">



                                    <a href="https://www.facebook.com/zuck"><i class="fa fa-facebook"></i></a>

                                    <a href="#"><i class="fa fa-twitter"></i></a>

                                    <a href="#"><i class="fa fa-linkedin"></i></a>

                                    <a href="#"><i class="fa fa-github"></i></a>


                                </div>


                            </div>


                        </footer>



                        </body>
                        </html>