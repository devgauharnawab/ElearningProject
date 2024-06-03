/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package elearningpkg;

import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class LoginModel implements Model {

    @Override
    public void requestProcessor(HttpServletRequest request, HttpServletResponse response) {
        try (PrintWriter out = response.getWriter()) {
            String s1 = request.getParameter("email");
            String s2 = request.getParameter("password");
            String s3 = request.getParameter("fname");
            String s4 = request.getParameter("lname");
            String s5 = request.getParameter("dob");
            String s6 = request.getParameter("gender");
            String s7 = request.getParameter("hqualification");
            String s = request.getParameter("user_type");
            int s8=Integer.parseInt(s);
            String s9 = "http://localhost:8080/elearningproject/c?action=model&page=emailVarifyModel&email=" + s1;

            out.println("<html>");
            out.println("<head>");
            out.println("<title>User Information</title>");
            out.println("<style>");
            out.println("body { background-image: url('https://images.pexels.com/photos/36487/above-adventure-aerial-air.jpg?auto=compress&cs=tinysrgb&w=1600'); background-size: cover; background-position: center; font-family: Arial, sans-serif; }");
            out.println("h1 { text-align: center; color:white; }");
            out.println(".info { margin: 10px 0; padding: 10px; background-color: #fff; border: 1px solid #ccc; }");
            out.println("</style>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>User Information</h1>");
            out.println("<div class='info'><strong>User Name:</strong> " + s1 + "</div>");
            out.println("<div class='info'><strong>Password:</strong> " + s2 + "</div>");
            out.println("<div class='info'><strong>First Name:</strong> " + s3 + "</div>");
            out.println("<div class='info'><strong>Last Name:</strong> " + s4 + "</div>");
            out.println("<div class='info'><strong>Date of Birth:</strong> " + s5 + "</div>");
            out.println("<div class='info'><strong>Gender:</strong> " + s6 + "</div>");
            out.println("<div class='info'><strong>Highest Qualification:</strong> " + s7 + "</div>");
            out.println("<div class='info'><strong>User Type:</strong> " + s8 + "</div>");
            out.println("</body>");
            out.println("</html>");

            //Mail Sender
            MailSender ms = new MailSender();

            // Java Database Connectivity
            MyDAO md = new MyDAO(request);
            Statement st = md.getConnection();

            // Insert Data in Database;
            String q = "INSERT INTO login_table(email,status,user_type,password) VALUES ('" + s1 + "',0,'" + s8 + "','" + s2 + "')";
            md.insertData(st, q);

            String q1 = "SELECT uid FROM user_table ORDER BY uid DESC LIMIT 1";
            ResultSet rs = md.LoadData(st, q1);

            if (!rs.next()) {
                String q2 = "INSERT INTO user_table(uid,fname,lname,dob,gender,hqualification,email,password) VALUES (1,'" + s3 + "','" + s4 + "','" + s5 + "','" + s6 + "','" + s7 + "','" + s1 + "','" + s2 + "')";
                md.insertData(st, q2);
            } else {
                int sn = rs.getInt("uid") + 1;
                String q3 = "INSERT INTO user_table(uid,fname,lname,dob,gender,hqualification,email,password) VALUES ('" + sn + "','" + s3 + "','" + s4 + "','" + s5 + "','" + s6 + "','" + s7 + "','" + s1 + "','" + s2 + "')";
                md.insertData(st, q3);
            }
            //Mail Sender

            ms.sendMail(s1, s9);
            //  response.sendRedirect("success.jsp");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
