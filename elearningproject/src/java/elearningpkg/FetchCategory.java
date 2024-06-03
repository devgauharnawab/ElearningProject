/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package elearningpkg;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.Statement;
import org.json.simple.JSONObject;

public class FetchCategory implements Model {

    @Override
    public void requestProcessor(HttpServletRequest request, HttpServletResponse response) {
        try {
            MyDAO md = new MyDAO(request);
            Statement st = md.getConnection();
            String query = "SELECT category_id, category_name FROM category_table";
            ResultSet rs = md.LoadData(st, query);
            JSONObject categoryJSON = new JSONObject();

            while (rs.next()) {
                int categoryId = rs.getInt("category_id");
                String categoryName = rs.getString("category_name");
                categoryJSON.put(String.valueOf(categoryId), categoryName);
            }

            JSONObject responseJSON = new JSONObject();
            responseJSON.put("category", categoryJSON);
            PrintWriter out = response.getWriter();
            out.println(responseJSON.toString());

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
