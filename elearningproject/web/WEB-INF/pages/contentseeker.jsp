<%-- 
    Document   : contentseeker
    Created on : 11-May-2023, 8:16:44 AM
    Author     : gauhar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            HttpSession sess = request.getSession(false);
            if(sess == null){
                response.sendRedirect("http://localhost:8080/elearningproject/c/?action=view&page=login");
            }else{
                if(Integer.parseInt(session.getAttribute("user_type").toString()== 1)){
                    response.sendRedirect("http://localhost:8080/elearningproject/c/?action=view&page=contentprovider");
                }
            }
            %>
    </body>
</html>
