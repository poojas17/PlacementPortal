<%@ page contentType="text/html" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<html>
    <head>
    </head>
    <body>
        <%
            String user = session.getAttribute("username").toString();
            PreparedStatement pst;									// Object of Statement class
            Connection Db;									// Object of Connection class
            int rowsupdate = 0;									// variable to count the no. of rows updated
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Db = DriverManager.getConnection("jdbc:mysql://localhost/placement_portal", "root", "annu");					// TO Connect with the data source
                String sql1 = "select * from user where username = '" + user + "'";
                pst = Db.prepareStatement(sql1);
                ResultSet rs = pst.executeQuery(sql1);

                if (user != null) {
                    String Data = "";
                    Data += "<form action=\"\" method=POST enctype=\"multipart//form-data\" >"
                            + "<input type=hidden name=username value=" + rs.getString("username") + ">"
                            + "<table>"
                            + "<tr><td>First Name</td><td><input type=text name=firstName value=" + rs.getString("firstName") + "></td></tr>"
                            + "<tr><td>Last Name</td><td><input type=text name=lastName value=" + rs.getString("lastName") + "></td></tr>"
                            + "<tr><td>Course</td><td><input type=text name=course value=" + rs.getString("course") + "></td></tr>"
                            + "<tr><td>batch</td><td>"
                            + "<select name=batch >"
                            + "<option> Year </option>"
                            + "<option value=\"2015\">2015</option>"
                            + "<option value=\"2014\">2014</option>"
                            + "<option value=\"2013\">2013</option>"
                            + "<option value=\"2012\">2012</option>"
                            + "<option value=\"2011\">2011</option>"
                            + " </select>" + "</td></tr>"
                            + "<tr><td>email</td><td><input type=text name=email value=" + rs.getString("email") + "></td></tr>"
                            + "<tr><td>Date of Birth</td><td><input type=text name=dob value=" + rs.getString("dob") + "></td></tr>"
                            + "</td></tr>"
                            + "<tr><td></td><td><input type=submit value=\"Update User\"></td></tr>"
                            + "</table>"
                            + "</form>" + "";

                }

                String firstName = request.getParameter("firstName");
                String lastName = request.getParameter("lastName");
                String email = request.getParameter("email");
                String batch = request.getParameter("batch");
                String course = request.getParameter("course");
                String dob = request.getParameter("dob");

                try {
                    String query = "UPDATE pg SET firstName=?,lastName=?,email=?, batch=?, course=?, dob=?, password=? where username='" + user + "'";	// Prepare Statement Query to INSERT RECORD
                    pst = Db.prepareStatement(query);					// TO create the Prepare query statement

                    pst.setString(1, firstName);
                    pst.setString(2, lastName);
                    pst.setString(3, email);

                    pst.setString(4, batch);
                    pst.setString(5, course);

                    pst.setString(6, dob);

                    rowsupdate += pst.executeUpdate();				// execute the query and store the no. of updated rows in rowsupdate

                    if (rowsupdate != 0) {
                        out.println("Data Saved Successfuly <br><br> LOGIN to continue Further<br><br>");
                        out.println("<center><a href=" + "index.jsp" + "><font size=" + "5" + "> GO HOME</font></a></center>");
                    } else {
                        out.println("ERROR ! row not inserted");
                    }
                    pst.close();							//to close the the statement
                    Db.close();							// to close the connection
                } catch (SQLException e) // Class to catch the SQL exception
                {									// which may be thrown by 2nd try due to 
                    out.println("ERROR ! QUERY NOT EXECUTED " + e);
                    out.println("<center><a href=" + "index.jsp" + "><font size=" + "5" + "> GO BACK</font></a></center>");	// the statement executeUpdate
                }

            } catch (ClassNotFoundException e) {										// Class to catch the SQL exception
                out.println("UNABLE TO LOAD JDBC-ODBC BRIDGE" + e);		//which may be thrown by 1st try due to 
                System.exit(1);								//the statement Class.forName
            } catch (SQLException e) {										//Class to catch the SQL exception
                out.println("UNABLE TO CONNECT" + e);				//which may be thrown by 1st try due to
                System.exit(2);								//the statement Driver.Manager
            }

            //out.println("Name is "+username+"");
%>
    </body>
</html>