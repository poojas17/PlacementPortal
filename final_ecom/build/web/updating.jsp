<%@page language="java"%>
<%@page import="java.sql.*"%>

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
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">



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
        height: 100%;
    }

    th, td {
        text-align:center;
    }
    /* Css for user specific info*/
    .navbar-login
    {
        width: 250px;
        background-color: #f1f1f1;
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



<!DOCTYPE html>

<%
    String c = session.getAttribute("username").toString();

    if ((c == null) || (c == "")) {

        response.sendRedirect("index.jsp");

    }
%>

<html lang="en">

    <head>
        <title>Student Login</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="profile.css">
    </head>
    <body>



        <nav class="navbar-default" style="background-color: #900c3f;">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Placement Portal</a>
                <ul class="nav navbar-nav  ">
                    <li class="active"><a href="index.html"><span class="glyphicon glyphicon-asterisk"></span>  Home</a></li>
                    <li><a href="student.jsp"><span class="glyphicon glyphicon-asterisk"></span>  Student</a></li>
                    <li ><a href="facility.html"><span class="glyphicon glyphicon-asterisk"></span>  Facilities</a></li>
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

                        <div class="col-md-5">
                            <div class="profile">
                                <div class="profile1">
                                    <h2> <center> UPDATE PROFILE </h2> </center>
                                    <form method="post" action="up.jsp">

                                        <%
                                            String username = session.getAttribute("username").toString();
                                            int sumcount = 0;
                                            try {
                                                Class.forName("com.mysql.jdbc.Driver").newInstance();
                                                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/placement_portal", "root", "annu");
                                                String query = "select * from user where username='" + username + "'";
                                                Statement st = conn.createStatement();
                                                ResultSet rs = st.executeQuery(query);
                                                while (rs.next()) {
                                        %>

                                        <table border="0" width="100%" align =center>

                                            <tr>
                                                <td>First Name</td>
                                                <td><input type="text" name="firstName" value="<%=rs.getString("firstName")%>"></td>
                                            </tr>

                                            <tr>
                                                <td>Last Name</td>
                                                <td><input type="text" name="lastName" value="<%=rs.getString("lastName")%>"></td>
                                            </tr>

                                            <tr>
                                                <td>Course</td>
                                                <td><input type="text" name="course" value="<%=rs.getString("course")%>"></td>
                                            </tr>

                                            <tr>
                                                <td>Batch</td>
                                                <td><input type="int" name="batch" value="<%=rs.getInt("batch")%>"></td>
                                            </tr>

                                            <tr>
                                                <td>Email</td>
                                                <td><input type="email" name="email" value="<%=rs.getString("email")%>"></td>
                                            </tr>

                                            <tr>
                                                <td>dob</td>
                                                <td><input type="text" name="dob" value="<%=rs.getString("dob")%>"></td>
                                            </tr>

                                            <tr>
                                                <td><input type="hidden" name="username" value="<%=rs.getString("username")%>"></td>
                                            </tr>



                                            <tr>
                                                <td><input type="submit" name="Submit" value="Update" style="height:20px; align:center"></td>
                                            </tr>

                                        </table>
                                        <%
                                                }
                                            } catch (Exception e) {
                                            }
                                        %>
                                    </form>
                                </div>
                            </div>
                        </div>
                        </body>
                        </html>