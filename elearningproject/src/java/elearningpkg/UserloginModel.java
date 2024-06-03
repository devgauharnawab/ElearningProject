/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package elearningpkg;

/**
 *
 * @author gauhar
 */
import jakarta.servlet.http.*;
import java.io.PrintWriter;
import java.sql.*;

public class UserloginModel implements Model {

    @Override
    public void requestProcessor(HttpServletRequest request, HttpServletResponse response) {
        try {
            PrintWriter out = response.getWriter();

            String em = request.getParameter("email");
            String pass = request.getParameter("password");

            // Creating connection with the database
            MyDAO md = new MyDAO(request);
            Statement st = md.getConnection();
            String z = "SELECT uid FROM user_table WHERE (email='"+em+"')";
            ResultSet r=md.LoadData(st, z);
            int u_id = 0;
            if(r.next()){
                 u_id = r.getInt("uid");
            }
            String q1 = "SELECT email, status, user_type FROM login_table WHERE password = '" + pass + "'";
            ResultSet rs = md.LoadData(st, q1);
            if (rs.next()) {
                String dbem = rs.getString("email");
                int dbstatus = rs.getInt("status");
                int u_type = rs.getInt("user_type");
                
              //  int u_id = rs.getInt("uid");
              //  System.out.println(dbem + " " + dbstatus + " " + u_type);
              
                if (dbem.equals(em)) {
                    if (dbstatus == 1) {
                        HttpSession sess = request.getSession(true);
                        sess.setAttribute("email", em);
                        sess.setAttribute("user_type", u_type);
                        sess.setAttribute("userid", u_id);
                        if (u_type == 1) {
                            String page = "contentprovider";
                            request.getRequestDispatcher("/WEB-INF/pages/" + page + ".jsp").forward(request, response); // Content provider page
                        } else {
                            String page = "contentseeker";
                            request.getRequestDispatcher("/WEB-INF/pages/" + page + ".jsp").forward(request, response); // Content Seeker page
                        }
                    } else {
                        out.println("<strong>Verify your email</strong>h"); // Verify your email
                    }
                } else {
                    out.println("Wrong email"); // Wrong credentials
                }
            } else {
                out.println("Password does not match with the database password"); // User does not exist
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
