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
public class FetchTopic implements Model {

    @Override
    public void requestProcessor(HttpServletRequest request, HttpServletResponse response) {
        try {
            System.out.println("TopicSelectorModel");
            PrintWriter out = response.getWriter();
            String subcat_id = request.getParameter("subcat_id");
            int n = Integer.parseInt(subcat_id);
            System.out.println(n);
            MyDAO md = new MyDAO(request);
            Statement st = md.getConnection();
            String q = "SELECT topic_id, topic_name FROM topic_table WHERE(subcategory_id='" + n + "')";
            ResultSet rs = md.LoadData(st, q);
            JSONObject topicObj = new JSONObject();
            while (rs.next()) {
                String topic_id = rs.getString("topic_id");
                String topic_name = rs.getString("topic_name");
                System.out.println(topic_id + " " + topic_name);
                topicObj.put(topic_id, topic_name);
            }
            JSONObject finalObject = new JSONObject();
            finalObject.put("topic", topicObj);
            out.println(finalObject.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
