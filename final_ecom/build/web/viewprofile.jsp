<%{
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
 }%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Message</title>
</head>
<body>
    
        <sql:setDataSource var="webappDataSource"
            driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/placement_portal"
            user="root" password="annu" />
        <sql:query dataSource="${webappDataSource}" var="result" />
            <table width="100%" border="1">
             <c:forEach var="row" items="${result.rows}">
                <tr>
                    <td>${row.last_name}</td>
                <img src="${pageContext.servletContext.contextPath }/photoServlet?last_name=${row.last_name}" width="150" height="150"/>
                </tr>
            </c:forEach>
            </table>
                  
                <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/placement_portal"
                           user="root"  password="annu"/>

        <sql:query dataSource="${snapshot}" var="result">
         SELECT * from u_test;
        </sql:query>
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