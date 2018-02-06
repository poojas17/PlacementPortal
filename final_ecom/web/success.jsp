
<%
    if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) {
        out.println("NOT LOGGED IN");

%>

You are not logged in<br/>
<a href="index.jsp">Please Login</a

<%} else {
        response.sendRedirect("student.jsp");
    }
%>