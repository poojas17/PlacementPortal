<%@ page import ="java.sql.*" %>
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


<style>
    th, td {
        text-align:center;
    }

</style>
<%
    String c = session.getAttribute("username").toString();

    if ((c == null) || (c == "")) {

        response.sendRedirect("index.jsp");

    }
%>
<!DOCTYPE html>
<html>
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
                        </nav>	<%!private static Connection connection = null;

                            public static Connection connection() {
                                if (connection == null) {
                                    try {
                                        Class.forName("com.mysql.jdbc.Driver");//1st step 
                                        connection = DriverManager.getConnection("jdbc:mysql://localhost/placement_portal", "root", "annu");
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                }
                                return connection;
                            }
                        %>
                        <%!        String firstName, lastName, course, email, username, password, gender, dob;
                            int batch;

                        %>

                        <%
                            String user = session.getAttribute("username").toString();
                            String sql1 = "select * from user where username = '" + user + "'";
                            user = session.getAttribute("username").toString();

                            PreparedStatement preparedStatement = connection().prepareStatement(sql1);
                            ResultSet resultSet = preparedStatement.executeQuery(sql1);

                            if (resultSet.next()) {
                                firstName = (String) resultSet.getString("firstName");
                                lastName = (String) resultSet.getString("lastName");
                                course = (String) resultSet.getString("course");
                                batch = Integer.parseInt(resultSet.getString("batch"));
                                email = (String) resultSet.getString("email");
                                username = (String) resultSet.getString("username");
                                password = (String) resultSet.getString("password");
                                gender = (String) resultSet.getString("gender");
                                dob = (String) resultSet.getString("dob");
                                System.out.println(resultSet);
                                //return resultSet.getString("password").equals(password);
                            }


                        %>


                        <div class="col-md-5">
                            <div class="profile">

                                <div class="profile1">
                                    <h2> <center> PROFILE </h2> </center>
                                    <li>
                                        <label class="col-md-4 control-label">FirstName</label>
                                        <div class="col-md-8">

                                            <%= firstName%>
                                        </div>
                                    </li>
                                    <br><br>
                                    <li>
                                        <label class="col-md-4 control-label" >Last Name</label>
                                        <div class="col-md-8">
                                            <%= lastName%>

                                        </div>
                                    </li>
                                    <br><br>
                                    <li>
                                        <label class="col-md-4 control-label" >Course</label>
                                        <div class="col-md-8">
                                            <%= course%>

                                        </div>
                                    </li>
                                    <br><br> <li>
                                        <label class="col-md-4 control-label" >Batch</label>
                                        <div class="col-md-8">
                                            <%= batch%>

                                        </div>
                                    </li>
                                    <br><br> <li>
                                        <label class="col-md-4 control-label" >Email</label>
                                        <div class="col-md-8">
                                            <%= email%>

                                        </div>
                                    </li>
                                    <br><br> <li>
                                        <label class="col-md-4 control-label" >Gender</label>
                                        <div class="col-md-8">
                                            <%= gender%>

                                        </div>
                                    </li>
                                    <br><br> <li>
                                        <label class="col-md-4 control-label" >Date of Birth</label>
                                        <div class="col-md-8">
                                            <%= dob%>

                                        </div>
                                    </li>

                                </div>
                            </div>
                        </div>
                        </body>
                        </html>
