/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package elearningpkg;

import java.io.PrintWriter;
import java.sql.Statement;
import java.sql.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author gauhar
 */
public class emailVarifyModel implements Model {

    @Override
    public void requestProcessor(HttpServletRequest request, HttpServletResponse response) {
        try (PrintWriter out = response.getWriter()) {
            out.println("<h1 style=\"color: blue; font-size: 24px;\"> Registration Successful </h1>");
            out.println("<br>");
            String email = request.getParameter("email");
            out.println("<p style=\"font-size: 16px;\">Email: " + email + "</p>");

            MyDAO md = new MyDAO(request);
            Statement st = md.getConnection();
            String q5 = "UPDATE login_table SET status=1 WHERE(email='" + email + "')";
            md.insertData(st, q5);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
