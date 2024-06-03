<%-- 
    Document   : contentprovider
    Created on : 11-May-2023, 8:16:17 AM
    Author     : gauhar
--%>

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page session="false" %>
<%
  HttpSession sess = request.getSession(false);
  if (sess == null || sess.getAttribute("email") == null) {
      response.sendRedirect("http://localhost:8080/elearningproject/c/?action=view&page=login"); // Redirect to login page if session or email attribute is null
  } else {
      
      if (Integer.parseInt(sess.getAttribute("user_type").toString())==2) {
          response.sendRedirect("http://localhost:8080/elearningproject/c/?action=view&page=contentseeker");
      }
  }
%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="Stylesheet" href="style/default.css" type="text/css"/>
        <link rel="icon" type="image/x-icon" href="https://pps.whatsapp.net/v/t61.24694-24/307327580_1128049707803429_2127323105542260633_n.jpg?ccb=11-4&oh=01_AdQynxlLeW54-sIRYQBwuQmTeVfbiMULYAF0J6c24IpJpw&oe=644360C8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0,shrink-to-fit=no">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <script src="/elearningproject/js/validator.js" type="text/javascript"></script>
        <script src="/elearningproject/js/postcontent.js" type="text/javascript"></script>
    </head>
    <body>
        <nav class="navbar navbar-expand-md navbar-info bg-info">
            <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
                <h5>Content Provider Page</h5>
                <form class="form-inline mx-auto my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" style="margin-left: 200px" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-dark my-2 my-sm-0" type="submit">Search</button>
                </form>  
            </div>

            <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">

                <div>
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item" style="padding-left: 220px;">
                            <a class="nav-link"  style="color: black " href="#">Home</a>
                        </li>
                        <li class="nav-item" style="margin-left: 10px;">
                            <a class="nav-link" style="color: black" href="#">Contact us</a>
                        </li>
                        <li class="nav-item" style="margin-left: 10px;">
                            <a class="nav-link" style="color: black" href="#">About us</a>
                        </li>   
                    </ul>
                </div>
                <a href="http://localhost:8080/elearningproject/c/?action=model&page=LogoutModel" class="btn btn-success" style="margin-left: 100px">Logout</a>
            </div>
        </nav>
        <div class="row container-fluid">
            <div class="col-lg-4 mb-4">
                <div class="container-fluid">
                    <form action="http://localhost:8080/elearningproject/c/?action=model&page=GetArticle" method="POST">
                        <div class="form-group">
                            <label for="subcategory">Select Category:</label>
                            <select class="form-control" id="catss" name="category" onclick="getCategory();">
                                <option value="">Select Category</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="subcategory">Select Subcategory:</label>
                            <select class="form-control" id="subcat" name="subcategory" onclick="getSubCategory('catss');">
                                <option value="">Select SubCategory</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="topic">Topic:</label>
                            <select class="form-control" id="topicid" name="topic" onclick="getTopic('subcat');">
                                <!-- Add options for topic selection -->
                                <option value="">Select Topic</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="title">Title:</label>
                            <input type="text" class="form-control" id="title" name="title" required>
                        </div>
                        <div class="form-group">
                            <label for="article">Article:</label>
                            <textarea class="form-control" id="article" name="article" rows="5" required></textarea>
                        </div>
                        <div class="form-group">
                            <label for="image">Upload Image:</label>
                            <input type="file" class="form-control-file" id="image" name="image">
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">Post Article</button>
                    </form>
                </div>
            </div>

            <div class="col-8" id="trendingData" onload="getPostedContent()">

            </div>
            <!-- Button trigger modal -->
            <!-- Modal -->
            <div class="modal fade" id="contentModal" tabindex="-1" aria-labelledby="contentModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="contentModalLabel">Content Detail</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div id="contentDetail"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" crossorigin="anonymous"></script>
</body>
</html>
