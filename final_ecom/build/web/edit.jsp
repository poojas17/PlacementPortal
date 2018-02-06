<%@page language="java"%>
<%@page import="java.sql.*"%>
<form method="post" action="update.jsp">

    <%
        String username = request.getParameter("username");
        int sumcount = 0;
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/placement_portal", "root", "annu");
            String query = "select * from user1 where username='" + username + "'";
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(query);
            while (rs.next()) {
    %>

    <table border="3">

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
            <td><input type="text" name="batch" value="<%=rs.getInt("batch")%>"></td>
        </tr>

        <td><input type="hidden" name="username" value="<%=rs.getString("username")%>"></td>
        <br>

        <br>
        <tr>
            <td><input type="submit" name="Submit" value="Update" style="background-color:#49743D;font-weight:bold;color:#ffffff;"></td>
        </tr>

    </table>
    <%
            }
        } catch (Exception e) {
        }
    %>
</form>