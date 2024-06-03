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

/**
 *
 * @author gauhar
 */
public class FetchCountries implements Model{

    @Override
    public void requestProcessor(HttpServletRequest request, HttpServletResponse response) {
        try (PrintWriter out = response.getWriter()) {
           MyDAO md=new MyDAO(request);
           Statement st=md.getConnection();
           String q="SELECT country_code, country_name FROM country_master";
           ResultSet rs=md.LoadData(st, q);
            //if we want to data in the form of {"countries":{"91":"India,"1":"USA",........}}
            JSONObject c = new JSONObject();
            while (rs.next()) {
                String d = rs.getString("country_code");
                String e = rs.getString("country_name");
                c.put(d, e);
            }
            JSONObject f = new JSONObject();
            f.put("countries", c);
            out.println(f.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
}
