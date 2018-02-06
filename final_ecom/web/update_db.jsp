
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/placement_portal"
                   user="root"  password="annu"/>
<sql:query dataSource="${snapshot}" var="result">
    SELECT * from u_test;
</sql:query>


<sql:setDataSource var="snapshot1" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/placement_portal"
                   user="root"  password="annu"/>

<sql:query dataSource="${snapshot1}" var="result1">
    SELECT * from d_test;
</sql:query>




<c:forEach var="row" items="${result.rows}">

    <c:set var="now" value="<%=new java.util.Date()%>" />
    <fmt:formatDate pattern="yyyy-MM-dd" value="${now}" />
    <c:set var="date" value="${row.date}"/>
    <c:if test="${date le now}">

        <sql:update dataSource="${snapshot1}" var="result">
                        INSERT INTO d_test(topic) VALUES (?);
                        <sql:param value="${row.topic}" />
                 </sql:update>
    </c:if>
</c:forEach>