<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Message</title>
    </head>
    <body>
        <center>
            <h3><%=request.getAttribute("Message")%></h3>
        </center>
    <sql:setDataSource var="webappDataSource"
                       driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/user"
                       user="root" password="annu" />

    <sql:query dataSource="${webappDataSource}"
               sql="select firstName from user" var="result" />

    <table width="100%" border="1">
        <c:forEach var="row" items="${result.rows}">
            <tr>
                <td>${row.last_name}</td>
            <img src="${pageContext.servletContext.contextPath }/photoServlet?last_name=${row.last_name}" width="50" height="50"/>
            </tr>
        </c:forEach>
    </table>
</body>
</html>