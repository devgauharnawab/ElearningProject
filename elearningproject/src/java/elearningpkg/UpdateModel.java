/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package elearningpkg;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

/**
 *
 * @author gauhar
 */
//this model belongs to update the link on content provider page
public class UpdateModel implements Model {

    @Override
    public void requestProcessor(HttpServletRequest request, HttpServletResponse response) {
        try(PrintWriter out = response.getWriter()){
            String s1 = request.getParameter("title_id");
            
        }catch(Exception e){
            e.printStackTrace();
        }
    }    
}
