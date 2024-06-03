/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package elearningpkg;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.sql.Statement;


/**
 *
 * @author gauhar
 */
public class UpdateContent implements Model {

    @Override
    public void requestProcessor(HttpServletRequest request, HttpServletResponse response) {
        try ( PrintWriter out = response.getWriter()) {
            String titleidd=request.getParameter("titleid");
            int titleiid=Integer.parseInt(titleidd);
            System.out.println(titleiid);
            String updateContent=request.getParameter("content");
            
             MyDAO md = new MyDAO(request);
            Statement st = md.getConnection();
            
            String q="UPDATE content_table SET content='"+updateContent+"',dou=NOW() WHERE(title_id='"+titleiid+"')";
            md.insertData(st, q);
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}