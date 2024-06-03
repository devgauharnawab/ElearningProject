/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package elearningpkg;

import jakarta.servlet.http.*;
import java.io.PrintWriter;
import java.sql.*;
import org.json.simple.JSONObject;

/**
 *
 * @author gauhar
 */


public class GetUser implements Model {

    @Override
    public void requestProcessor(HttpServletRequest request, HttpServletResponse response) {
        try {
            PrintWriter out = response.getWriter();
            MyDAO md = new MyDAO(request);
            Statement st = md.getConnection();

            String q = "SELECT type_id, type_name, permissions FROM usertype_table";
            ResultSet rs = md.LoadData(st, q);

            JSONObject usertypeobj = new JSONObject();

            while (rs.next()) {
                int id = rs.getInt("type_id");
                String usertype = rs.getString("type_name");

                usertypeobj.put(String.valueOf(id), usertype);
            }

            JSONObject finalObj = new JSONObject();
            finalObj.put("user", usertypeobj);

            out.println(finalObj.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
