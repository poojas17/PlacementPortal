
<html lang="en">
    <head>    
        <script>
            window.onload = disableBack();
        </script>
        <title>Placement Portal</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
        <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="footer.css">
        <link rel="stylesheet" type="text/css" href="login.css" title="style">
        <link rel="stylesheet" href="loginform.css">

        <style>

            /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
            .row.content {height: 300px
            }

            .top-buffer { margin-top:30px; }

            .sidenav {
                padding-top: 50px;
                padding-bottom: 25px;
                background-color: #f1f1f1;
                height: 52%;
            }

            /* Css for user specific info*/
            .navbar-login
            {
                width: 250px;
                background-color: #f1f1f1;
                padding: 10px;
                padding-bottom: 0px;
                height: 52%;
            }

            .navbar-login-session
            {
                padding: 10px;
                padding-bottom: 0px;
                padding-top: 0px;
                height: 52%;
            }

            .icon-size
            {
                font-size: 87px;
            }


        </style>
        <script>
            function validateForm()
            {

                var user = document.frm.Username.value;
                var pass = document.frm.Password.value;

                if (em_valid(user))
                {
                    if (pass_valid(pass, 5, 10))
                    {
                        //   alert("Checking details... ");
                        //comment this later beacause we dnt need any info from user
                        return true;
                    }
                }

                function em_valid(e)
                {
                    var numletter = /[A-Za-z]/;
                    if (e.match(numletter))
                    {
                        return true;
                    }
                    else
                    {
                        alert(" Invalid!");  //comment
                        e.focus();

                        return false;
                    }
                }

                function pass_valid(pas, min, max)
                {
                    var len = pas.length;

                    if (len == 0 || len < min || len > max)
                    {
                        alert(" Password is not within the valid range !");
                        pas.focus();
                        // window.location = "index.jsp";
                        return false;
                    }
                    return true;
                }


            }
        </script>

    </head>
    <body>
        <nav class="navbar-default" style="background-color: #900c3f;">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Placement Portal</a>
                <ul class="nav navbar-nav " >
                    <li> &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;  </li>
                    <li class="active"><a href="index.jsp"><span class="glyphicon glyphicon-asterisk"></span>  Home</a></li>
                    <li><a href="student.jsp"><span class="glyphicon glyphicon-asterisk"></span>  Student</a></li>
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
                            <div class="header_all">
                                <div class="logo_img">
                                    <img src="logo.png" alt="Department Of computer Science" width="140px" height="120px" />
                                </div>
                                <div class="title1">
                                    <h1 id="styleh1">Platform for all the students</h1>
                                    <h2 id="styleh2">University Of Delhi</h2>
                                </div>
                            </div>
                        </div>  


                        <div class="container text-center">    
                            <div class="row top-buffer text-center">
                                <div class="col-sm-2 sidenav" style="background-color: #900c3f;" >
                                    <marquee width="50%">
                                        <h4> <a href="#">Notifications</a> </h4></marquee> <br> <br>
                                    <marquee width="50%">
                                        <h4><a href="#">New Placement policy<br> 
                                                Coming soon</a></h4>
                                    </marquee>           
                                </div>

                                <div class="col-sm-7 text-center"> 
                                    <div id="myCarousel" class="carousel slide" data-ride="carousel"  style="width:600px;margin:auto">

                                        <ol class="carousel-indicators">
                                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                            <li data-target="#myCarousel" data-slide-to="1"></li>
                                            <li data-target="#myCarousel" data-slide-to="2"></li>
                                        </ol>

                                        <!-- Wrapper for slides -->
                                        <div class="carousel-inner" role="listbox">
                                            <div class="item active">
                                                <img src="c0.jpg" alt="placement"  width="600px" height="800px">
                                                <div class="carousel-caption">
                                                    <h3>100% Placement</h3>
                                                    <p>We have been successsful</p>
                                                </div>
                                            </div>

                                            <div class="item">
                                                <img src="c28.jpg" alt="placement" width="575px" height="800px">
                                                <div class="carousel-caption">
                                                    <h3>Guaranteed Results</h3>
                                                    <p>    </p>
                                                </div>
                                            </div>

                                            <div class="item">
                                                <img src="img1.jpg" alt="placement" width="575px" height="800px">
                                                <div class="carousel-caption">
                                                    <h3>Study in Groups </h3>
                                                    <p>We provide group wise Mentors for special attention.</p>
                                                </div>
                                            </div>

                                        </div>

                                        <!-- Left and right controls -->
                                        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                            <span class="sr-only">Next</span>
                                        </a>
                                    </div>
                                </div><!--col 2 sm-7-->


                                <div class="col-sm-3 sidenav" style="background-color: #999; height:52%">

                                    <form  name="frm" id="login-form" action="validate.jsp" method="post" onSubmit="validateForm()" >



                                        <%
                                            if (session.getAttribute("username") == null || (session.getAttribute("username").equals(""))) {%>  

                                        <div class="form-group ">
                                            <input type="text" class="form-control" placeholder="Username " name="Username">
                                        </div>

                                        <div class="form-group log-status">
                                            <input type="password" class="form-control" placeholder="Password" name="Password">

                                        </div>
                                        <br><br>
                                        <a class="link" href="#" style="float:left">Forgot Password?</a>
                                        <a class="link" href="register.jsp" style="float:right">New User?<em>Register</em></a>

                                        <input type="submit" value="Log In" class="log-btn" >

                                        <%  } else {%>

                                        <div class="form-group ">
                                            <input type="text" class="form-control" placeholder="Username " name="Username" disabled>
                                        </div>

                                        <div class="form-group log-status">
                                            <input type="password" class="form-control" placeholder="Password" name="Password" disabled>

                                        </div>
                                        <br><br>
                                        <a class="link" href="#" style="float:left">Forgot Password?</a>
                                        <a class="link" href="signup.html" style="float:right">New User?<em>Register</em></a>
                                        <input type="button"  value="Cannot login Again!" class="log-btn">

                                        <%}
                                        %>



                                    </form> 

                                </div>  <!--col-sm-3 sidenav -->

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