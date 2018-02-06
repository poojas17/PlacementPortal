<%@ page import="java.sql.*" %>
<%

    String firstName = request.getParameter("firstName");
    out.println("fname: " + firstName);
    String lastName = request.getParameter("lastName");

    String course = request.getParameter("course");
    int batch = Integer.parseInt(request.getParameter("batch"));

    try {
        out.println("Inside try");
        Connection conn = null;
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/placement_portal", "root", "annu");
        PreparedStatement pst;
        out.println("conn.");

        String query = "update user set firstName=?,lastName=?,batch=? where username='pooja'";	// Prepare Statement Query to INSERT RECORD
        pst = conn.prepareStatement(query);					// TO create the Prepare query statement

        pst.setString(1, firstName);
        pst.setString(2, lastName);
        pst.setInt(3, batch);

        pst.close();
        conn.close();
        out.println("Hello updated !");
        response.sendRedirect("/app.jsp");
    } catch (Exception e) {
        System.out.println(e);
    }
%>