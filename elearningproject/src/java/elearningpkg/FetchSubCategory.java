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

public class FetchSubCategory implements Model {

    @Override
    public void requestProcessor(HttpServletRequest request, HttpServletResponse response) {
        try {
            System.out.println("SubCategorySelectorModel");
            PrintWriter out = response.getWriter();
            String category_id = request.getParameter("elm");
            int n = Integer.parseInt(category_id);
            //System.out.println(n);
            MyDAO md = new MyDAO(request);
            Statement st = md.getConnection();
            String q = "SELECT subcategory_id, subcategory_name FROM subcategory_table WHERE(category_id='" + n + "')";
            ResultSet rs = md.LoadData(st, q);
            JSONObject subCatObj = new JSONObject();
            while (rs.next()) {
                String subcat_id = rs.getString("subcategory_id");
                String subcat_name = rs.getString("subcategory_name");
                System.out.println(subcat_id + " " + subcat_name);
                subCatObj.put(subcat_id, subcat_name);
            }
            JSONObject finalObject = new JSONObject();
            finalObject.put("subcategory", subCatObj);
            out.println(finalObject.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
