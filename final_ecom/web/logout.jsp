
<html>
    <head>

    </head>
    <%
        out.println("Inside logout");
        session.removeAttribute("username");
        session.setAttribute("username", null);
        session.removeAttribute("username");
        //out.println(" uname:" + session.getAttribute("username"));
        session.invalidate();
        response.sendRedirect("index.jsp");

    %>

</html>