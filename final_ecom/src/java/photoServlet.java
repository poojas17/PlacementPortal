/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.codejava.upload;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Neha Bansal
 */
@WebServlet("/photoServlet")
public class photoServlet extends HttpServlet
{
     public photoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException 
    {
        Blob image = null;
        final String jdbcDriver = "com.mysql.jdbc.Driver";
        final String dBURL = "jdbc:mysql://localhost:3306/placement_portal";
        final String user = "root";
        final String password = "annu";
        ServletOutputStream out = response.getOutputStream();
    try {
        Class.forName(jdbcDriver);
        Connection conn = DriverManager.getConnection(dBURL, user, password);

        PreparedStatement stmt = conn.prepareStatement("select img from user where firstName=?");
        stmt.setString(1,"jaya");
        ResultSet rs = stmt.executeQuery();
        if (rs.next()) 
        {
            //response.getOutputStream().write(rs.getBytes("photo"));
            image = rs.getBlob(1);
        }
        else 
        {
            response.setContentType("text/html");
            out.println("<font color='red'>image not found for given id</font>");
            return;
        }
        
        response.setContentType("image/png");
        InputStream in = image.getBinaryStream();
        int length = (int) image.length();
        int bufferSize = 1024;
        byte[] buffer = new byte[bufferSize];
        while ((length = in.read(buffer)) != -1) 
        {
            out.write(buffer, 0, length);
        }
        in.close();
        out.flush();
        } 
        catch (Exception e) 
        {
              response.setContentType("text/html");
              out.println("<html><head><title>Unable To Display image</title></head>");
              out.println("<body><h4><font color='red'>Image Display Error=" + e.getMessage() +
               "</font></h4></body></html>");
              return;
        } 
        
}
    
}
