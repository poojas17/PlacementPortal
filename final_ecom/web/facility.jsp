<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Facilites</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="footer.css" title="style">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
        <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">

    </head>
    <body>


        <nav class="navbar-default" style="background-color: #900c3f;">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Placement Portal</a>
                <ul class="nav navbar-nav " >
                    <li> &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;  </li>
                    <li ><a href="index.jsp"><span class="glyphicon glyphicon-asterisk"></span>  Home</a></li>
                    <li><a href="student.jsp"><span class="glyphicon glyphicon-asterisk"></span>  Student</a></li>
                    <li class="active"><a href="facility.jsp"><span class="glyphicon glyphicon-asterisk"></span>  Facilities</a></li>
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
                                                <li class="active">  <li><a href="viewprofile.jsp">View Profile</a></li>
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




                        <div class="jumbotron">
                            <div class="container text-center">
                                <h1>Facilities</h1> 
                                <p>We provide the best!</p>
                            </div>
                        </div>   
                        <div id="d1" class="container text-center">  
                            <p style="font-size:20px">The placement office is well equipped and is designed to smoothly handle and support 
                                the placement procedure at every stage. Arrangements for interviews, group discussions 
                                and pre-placement talks are handled by the staff at the placement office. We are equipped 
                                with the following facilities to aid the process:</p> 
                            <br><br>
                        </div>
                        <div id="d2" style="width:800px; margin:0 auto;font-size:20px">
                            <ul>
                                <li>Well furnished rooms for interviews and group discussions.</li>
                                <li>Fully computerized office.</li>
                                <li>Auditoriums close to the office to conduct pre-placement talks and tests.</li>
                                <li>Student placement volunteers to assist on the day of visit and through the selection process.</li>
                                <li>Video conferencing facilities.</li>
                        </div>

                        <div style="width:500px; margin:0 auto;" class="container text-center">    
                            <div class="row">
                                <div style="text-align: left; width:250px;" class="col-sm-3">
                                    <img src="facility.jpg?text=Interview room" style="width:100%" alt="" class="img-circle">
                                </div>
                                <div style="text-align: left; width:250px;" class="col-sm-3">
                                    <img src="f1.jpg?text=Interview room1" style="width:100%" alt="" class="img-circle">
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

                                <h>This portal is interface between recruiters and students.<h><br>				Made by Annu Joshi, Mani Bansal, Pooja Satija.

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


