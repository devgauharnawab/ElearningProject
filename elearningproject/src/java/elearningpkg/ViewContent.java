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
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

/**
 *
 * @author gauhar
 */
public class ViewContent implements Model {

    @Override
    public void requestProcessor(HttpServletRequest request, HttpServletResponse response) {
        try ( PrintWriter out = response.getWriter()) {
            String ttlid=request.getParameter("titleid");
            int tlid=Integer.parseInt(ttlid);
            System.out.println(tlid);
                        
            MyDAO md = new MyDAO(request);
            Statement st = md.getConnection();

            String s = "SELECT content FROM content_table WHERE(title_id='" + tlid + "')";
            ResultSet rs = md.LoadData(st, s);
            JSONArray dataArray = new JSONArray();
            while(rs.next()){
                JSONObject dataobj = new JSONObject();
                String con=rs.getString("content");
                System.out.println(con);
                
                dataobj.put("contentt", con);
                dataArray.add(dataobj);
            }
            JSONObject ob = new JSONObject();
            ob.put("contentshow", dataArray);
            out.println(ob.toString());
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}