<%@ page import="java.sql.*" %>
<html>
    <head>
        <script language="javascript">
            var id;
            function editRecord(id) {
                var f = document.form;
                f.method = "post";
                f.action = 'edit.jsp?id=' + id;
                f.submit();
            }
        </script>
    </head>
    <body>


        <%
            Connection con = null;
            String url = "jdbc:mysql://localhost:3306/";
            String db = "placement_portal";
            String driver = "com.mysql.jdbc.Driver";
            String userName = "root";
            String password = "annu";

            int sumcount = 0;
            Statement st;
            try {
                Class.forName(driver).newInstance();
                con = DriverManager.getConnection(url + db, userName, password);
                String query = "select * from user where username='jojo'";
                st = con.createStatement();
                ResultSet rs = st.executeQuery(query);

                while (rs.next()) {
        %>
        <form method="post" name="form">

            <table border="3">

                <tr>
                    <td>First Name</td>
                    <td> <%=rs.getString("firstName")%>  </td>
                    <td> <button type="submit" value="Edit1" style="background-color:green;font-weight:bold;color:white;" onclick="editRecord(<%=rs.getString("firstName")%>);"/> ></td>
                </tr>
                <tr>
                    <td>Last Name</td> 
                    <td> <%=rs.getString("lastName")%> </td>
                    <td><button type="submit"  value="Edit2" style="background-color:green;font-weight:bold;color:white;" onclick="editRecord(<%=rs.getString("lastName")%>);" /></td>
                </tr>
                <tr>
                    <td>Course</td>
                    <td><%=rs.getString("course")%></td>
                    <td><button type="submit"  value="Edit3" style="background-color:green;font-weight:bold;color:white;" onclick="editRecord(<%=rs.getString("course")%>);" /></td>
                </tr>
                <tr>
                    <td>Batch</td>
                    <td><%=rs.getString("batch")%>
                    </td><td><button type="submit"  value="Edit4" style="background-color:green;font-weight:bold;color:white;" onclick="editRecord(<%=rs.getInt("batch")%>);"/> ></td>
                </tr>


            </table>
        </form>
        <%
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>

    </body>
</html>