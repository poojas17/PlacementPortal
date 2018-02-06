package net.codejava.upload;
 
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
 
@WebServlet("/uploadServlet")
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class FileUploadDBServer extends HttpServlet {
     
    // database connection settings
    
    private String dbURL = "jdbc:mysql://localhost:3306/placement_portal";
    private String dbUser = "root";
    private String dbPass = "annu";
     
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // gets values of text fields
            String firstName = request.getParameter("first_name");
            String lastName = request.getParameter("last_name");
            String course = request.getParameter("course");
            int batch = Integer.parseInt(request.getParameter("Batch"));
            String username = request.getParameter("username");
            String email = request.getParameter("usermail");
            String password = request.getParameter("pass");
            String gender = request.getParameter("gender");
            String dateOfBirth_Day = request.getParameter("DateOfBirth_Day");
            String dateOfBirth_Year = request.getParameter("DateOfBirth_Year");
            String dateOfBirth_Month = request.getParameter("DateOfBirth_Month");
         
        InputStream inputStream = null; // input stream of the upload file
         FileInputStream fIn=null;
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("image");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
             
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }
        out.println("WELCOME");
     //    String filename=request.getParameter("fileName");
       //  File f=null;
         //out.println("file name is"+filename);
        /* if(filename!="")
         {
         f=new File("C:\\Users\\Annu Joshi\\Desktop\\M.Sc.  2 sem\\E.Comm\\"+filename);
         String filepath=f.getAbsolutePath();
         fIn = new FileInputStream(filepath);
         }
        */
        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client
         
        try {
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
 
            // constructs SQL statement
            String Birth = dateOfBirth_Year + "-" + dateOfBirth_Month + "-" + dateOfBirth_Day;
            String storeUserData = "insert into user(firstName,lastName,course,batch,email,username,password,gender,dob,img) values(?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement statement = conn.prepareStatement(storeUserData);
            statement.setString(1,firstName);
            statement.setString(2,lastName);
            statement.setString(3,course);
            statement.setInt(4,batch);
            statement.setString(5,email);
            statement.setString(6,username);
            statement.setString(7,password);
            statement.setString(8,gender);
            statement.setString(9,Birth);
            
            
            if (inputStream != null) 
            {
                // fetches input stream of the upload file for the blob column
                statement.setBlob(10, inputStream);
            }
           // statement.setBinaryStream(11,fIn,(int)f.length());
            // sends the statement to the database server
            
            int row = statement.executeUpdate();
            if (row > 0) 
            {
                message = "File uploaded and saved into database";
            }
            statement.close();
            
        } 
        catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } 
        finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            // sets the message in request scope
            request.setAttribute("Message", message);
             request.setAttribute("Picture",inputStream);
            // forwards to the message page
            getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
        }
    }
}