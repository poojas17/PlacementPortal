<%@ page import ="java.sql.*" %>
<html>
    <%
        try {
            String username = request.getParameter("Username");
            String password = request.getParameter("Password");

            if (username == "admin" && password == "passadmin") {
                try {
                    response.sendRedirect("admin.jsp");	//welcome should be displayed here 
                } catch (Exception e) {
                    e.printStackTrace();
                }

            } else {
                Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/placement_portal", "root", "annu");
                PreparedStatement pst = conn.prepareStatement("Select username,password from user where username=? and password=?");
                pst.setString(1, username);
                pst.setString(2, password);

                ResultSet res = pst.executeQuery();
                //out.println(res.next());
                if (res.next()) {
                    session.setAttribute("username", username);
                    out.println("\nSuccessful Login :)");

                    try {
                        response.sendRedirect("success.jsp");	//welcome should be displayed here 
                    } catch (Exception e) {
                        e.printStackTrace();
                    }

                } else {

                    try {
                        response.sendRedirect("index.jsp");	//welcome should be displayed here %>
    < script> alert("Invalid login or password!"); </script> <%
                    } catch (Exception e) {
                        e.printStackTrace();
                    }

                }
            }
        } catch (Exception e) {
            out.println("Something went wrong !! Please try again" + e);
        }
    %>
</html>