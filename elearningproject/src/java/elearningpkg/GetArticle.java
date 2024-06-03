/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package elearningpkg;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.sql.*;

/**
 *
 * @author gauhar
 */
public class GetArticle implements Model {

    @Override
    public void requestProcessor(HttpServletRequest request, HttpServletResponse response) {
        try (PrintWriter out = response.getWriter()) {
            String category = request.getParameter("category");
            String subcategory = request.getParameter("subcategory");
            String topic = request.getParameter("topic");
            int topic_id = Integer.parseInt(topic);
            String title_name = request.getParameter("title");
            String article = request.getParameter("article");

            out.println("<strong>" + "New Article Posted" + "<strong>" + "</br>");
            out.println(category + "<br>");
            out.println(subcategory + "<br>");
            out.println(topic_id + "<br>");
            out.println(title_name + "<br>");
            out.println(article + "<br>");

            MyDAO md = new MyDAO(request);
            Statement st = md.getConnection();

            HttpSession session = request.getSession();
            Integer uid_value = (Integer) session.getAttribute("userid");

            String id = "SELECT uid FROM user_table WHERE(uid='" + uid_value + "')";
            ResultSet rt = md.LoadData(st, id);
            int uiid = 0;
            if (rt.next()) {
                uiid = rt.getInt("uid");
            }

            String q1 = "SELECT title_id FROM title_table ORDER BY title_id DESC LIMIT 1";
            ResultSet rs = md.LoadData(st, q1);
            if (!rs.next()) {
                String qry1 = "INSERT INTO title_table(title_id,title_name,topic_id) VALUES (1,'" + title_name + "','" + topic_id + "')";
                md.insertData(st, qry1);

            } else {
                int tm_id = rs.getInt("title_id") + 1;
                String qry2 = "INSERT INTO title_table(title_id,title_name,topic_id) VALUES ('" + tm_id + "','" + title_name + "','" + topic_id + "')";
                md.insertData(st, qry2);

            }

            String q2 = "SELECT title_id FROM title_table ORDER BY title_id DESC LIMIT 1";
            ResultSet ts = md.LoadData(st, q2);
            int t_id = 0;
            if (ts.next()) {
                t_id = ts.getInt("title_id");
            }

            String q3 = "SELECT content_id FROM content_table ORDER BY content_id DESC LIMIT 1";
            ResultSet ys = md.LoadData(st, q3);
            if (!ys.next()) {
                String qry3 = "INSERT INTO content_table(content_id,content,dow,dou,uid,status,title_id) VALUES (1,'" + article + "',NOW(),NOW(),'" + uiid + "',0,'" + t_id + "')";
                md.insertData(st, qry3);
            } else {
                int c_id = ys.getInt("content_id") + 1;
                String qry4 = "INSERT INTO content_table(content_id,content,dow,dou,uid,status,title_id) VALUES ('" + c_id + "','" + article + "',NOW(),NOW(),'" + uiid + "',0,'" + t_id + "')";
                md.insertData(st, qry4);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
