

<%@ page import ="java.sql.*" %>
<html>
    <%
        try {
            String firstName = request.getParameter("first_name");
            String lastName = request.getParameter("last_name");
            String course = request.getParameter("course");
            out.println(request.getParameter("Batch") + "batch");
            int batch = Integer.parseInt(request.getParameter("Batch"));
            String username = request.getParameter("username");
            String email = request.getParameter("usermail");
            String password = request.getParameter("pass");

            String gender = request.getParameter("gender");
            String dateOfBirth_Day = request.getParameter("DateOfBirth_Day");
            String dateOfBirth_Year = request.getParameter("DateOfBirth_Year");
            String dateOfBirth_Month = request.getParameter("DateOfBirth_Month");
            out.println(firstName + lastName + course + username + password + " GENDER   " + gender + dateOfBirth_Year);
            int flag = 0;
            Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/placement_portal", "root", "annu");
            Statement statement = conn.createStatement();
            String Data = "select * from user";
            ResultSet rs = statement.executeQuery(Data);
            String db_email;
            while (rs.next()) {
                db_email = rs.getString("email");
                if (email.equals(db_email)) {
                    String name = "Email id already exits!!Please signup again";
                    out.println(name);
                    // request.setAttribute("name", name);
                    // RequestDispatcher view = request.getRequestDispatcher("signup.jsp");
                    //   view.forward(request, response);
                    flag = 1;
                }
            } //while

            if (flag != 1) {
                String Birth = dateOfBirth_Year + "-" + dateOfBirth_Month + "-" + dateOfBirth_Day;
                String storeUserData = "insert into user(firstName,lastName,course,batch,email,username,password,dob,gender) values(?,?,?,?,?,?,?,?,?)";
                PreparedStatement pstatement = null;
                pstatement = conn.prepareStatement(storeUserData);
                pstatement.setString(1, firstName);
                pstatement.setString(2, lastName);
                pstatement.setString(3, course);
                pstatement.setInt(4, batch);
                pstatement.setString(5, email);
                pstatement.setString(6, username);
                pstatement.setString(9, gender);
                pstatement.setString(7, password);
                pstatement.setString(8, Birth);
                pstatement.execute();
                pstatement.close();
                conn.close();
                //         session.setAttribute("uEmail", email);//Creating session
                out.println("New Account created!");
            }

        } catch (Exception e) {
            out.println("Something went wrong !! Please try again" + e);
        }

    %>

</html>