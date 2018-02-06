<%@ page import="java.sql.*" %>
<%
    String username = request.getParameter("username");
    String firstName = request.getParameter("firstName");

    String lastName = request.getParameter("lastName");

    String course = request.getParameter("course");
    int batch = Integer.parseInt(request.getParameter("batch"));

    String email = request.getParameter("email");

    String dob = request.getParameter("dob");

    try {

        Connection conn = null;
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        PreparedStatement pstmt;

        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/placement_portal", "root", "annu");
        pstmt = conn.prepareStatement("update user set firstName=? ,lastName=? , course=? , batch=? , email=? , dob=? where username='" + username + "'");
        pstmt.setString(1, firstName);
        pstmt.setString(2, lastName);
        pstmt.setString(3, course);
        pstmt.setInt(4, batch);
        pstmt.setString(5, email);
        pstmt.setString(6, dob);

        pstmt.executeUpdate();

        pstmt.close();
        conn.close();
        out.println("Hello updated !");
        response.sendRedirect("student.jsp");
    } catch (Exception e) {
        System.out.println(e);
    }
%>