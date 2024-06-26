<%-- 
    Document   : index
    Created on : 27-Apr-2023, 10:21:25 AM
    Author     : gauhar
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>elearningplatform</title>
        <link rel="icon" type="image/x-icon" href="https://pps.whatsapp.net/v/t61.24694-24/307327580_1128049707803429_2127323105542260633_n.jpg?ccb=11-4&oh=01_AdQynxlLeW54-sIRYQBwuQmTeVfbiMULYAF0J6c24IpJpw&oe=644360C8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0,shrink-to-fit=no">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="/elearningproject/js/validator.js" type="text/javascript"></script>
       
    </head>
    <body>
        <nav class="navbar navbar-expand-md navbar-info bg-info ">
            <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
                <h5>Online Learning Platform</h5>
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

                <button type="button" class="btn btn-outline-dark" data-toggle="modal" style="margin-left: 80px;" data-target="#loginModal">Sign in</button>
                <button type="button" class="btn btn-outline-dark" data-toggle="modal" style="margin-left: 25px;" data-target="#signupModal">Sign up</button>
            </div>
        </nav>



        <!-- header -->
        <div id="carouselExampleCaptions" class="carousel slide carousel-fade" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="1" class="active"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="2" class="active"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img width="1200" height="550" src="https://images.unsplash.com/photo-1543616991-75a2c125ff5b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80" class="d-block w-100" alt="My">
                    <div class="carousel-caption d-none d-md-block">
                        <h2><strong>Welcome to OLP</strong></h2>
                        <p>The future of e-Learning is wide open! Learning doesn’t just happen during business hours in the office or in the classroom. It happens everywhere through a number of different channels.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img width="1200" height="550" src="https://images.unsplash.com/photo-1461749280684-dccba630e2f6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80" class="d-block w-100" alt="me">
                    <div class="carousel-caption d-none d-md-block">
                        <h2>The Best Learning Plateform</h2>
                        <p>The future of e-Learning is wide open! Learning doesn’t just happen during business hours in the office or in the classroom. It happens everywhere through a number of different channels.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img width="1200" height="550" src="https://plus.unsplash.com/premium_photo-1668473366796-636e38929ddd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80" class="d-block w-100" alt="m">
                    <div class="carousel-caption d-none d-md-block">
                        <h2>Read & Write Plateform</h2>
                        <p>The future of e-Learning is wide open! Learning doesn’t just happen during business hours in the office or in the classroom. It happens everywhere through a number of different channels.</p>
                    </div>
                </div>
            </div>


            <!-- cards -->
            <div class="container">
                <h2 class="text-center"><strong>Learn The Document</strong></h2>
            </div>
            <div class="container-fluid">
                <div class="card-deck">
                    <div class="card" style="width:400px">
                        <img class="card-img-top"
                             src="https://thumbs.dreamstime.com/b/java-logo-vector-design-commercial-brand-trademark-118452997.jpg" height="200px"
                             alt="Card image">
                        <div class="card-body">
                            <h4 class="card-title">Java</h4>
                            <p class="card-text">Java is a programming language and a platform. Java is a high level, robust, object-oriented and secure programming language.</p>
                            <a href="https://www.javatpoint.com/java-tutorial" class="btn btn-primary">See Document</a>
                        </div>
                    </div>
                    <div class="card" style="width:400px">
                        <img class="card-img-top" src="https://p.kindpng.com/picc/s/485-4850258_bootstrap-logo-png-image-free-download-searchpng-logos.png" height="200px" alt="Card image">
                        <div class="card-body">
                            <h4 class="card-title">Bootstrap</h4>
                            <p class="card-text">Bootstrap is a popular front-end development framework that allows developers to create responsive and mobile-first websites quickly and easily.</p>
                            <a href="https://getbootstrap.com/" class="btn btn-primary">See Document</a>
                        </div>
                    </div>
                    <div class="card" style="width:400px">
                        <img class="card-img-top" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFap2QMNiL7rH-v4dYAg_ieJ8j8G4z-gyEhXzWXN2Pag&s" height="200px" alt="Card image">
                        <div class="card-body">
                            <h4 class="card-title">JavaScript</h4>
                            <p class="card-text">JavaScript is a programming language that is primarily used for creating dynamic and interactive web pages. It is one of the core technologies.</p>
                            <a href="https://www.w3schools.com/js/" class="btn btn-primary">See Document</a>
                        </div>
                    </div>
                    <div class="card" style="width:400px">
                        <img class="card-img-top" src="https://img.freepik.com/free-icon/css_318-698167.jpg" height="200px" alt="Card image">
                        <div class="card-body">
                            <h4 class="card-title">CSS</h4>
                            <p class="card-text">CSS (Cascading Style Sheets) is a programming language used to describe the presentation of web pages written in HTML and XHTML. With CSS. </p>
                            <a href="https://www.w3schools.com/css/" class="btn btn-primary">See Document</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- footer -->

            <!-- Remove the container if you want to extend the Footer to full width. -->
            <!-- Footer -->
            <footer
                class="text-center text-lg-start text-white expand-lg" name="footer"
                style="background-color: #929fba"
                >
                <!-- Grid container -->
                <div class="container p-4 pb-0">
                    <!-- Section: Links -->
                    <section class="">
                        <!--Grid row-->
                        <div class="row">
                            <!-- Grid column -->
                            <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
                                <h6 class="text-uppercase mb-4 font-weight-bold">
                                    ONLINE LEARNING PLATFORM
                                </h6>
                                <p>
                                    Here you can use rows and columns to organize your footer
                                    content. Lorem ipsum dolor sit amet, consectetur adipisicing
                                    elit.
                                </p>
                            </div>
                            <!-- Grid column -->

                            <hr class="w-100 clearfix d-md-none" />


                            <!-- Grid column -->
                            <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
                                <h6 class="text-uppercase mb-4 font-weight-bold">Contact</h6>
                                <p><i class="fas fa-home mr-3"></i> Kursi Road, Lucknow 226026, India</p>
                                <p><i class="fas fa-envelope mr-3"></i> gauharnawab20@gmail.com</p>
                                <p><i class="fas fa-phone mr-3"></i> + 91 6207731079</p>
                            </div>
                            <!-- Grid column -->

                            <!-- Grid column -->
                            <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
                                <h6 class="text-uppercase mb-4 font-weight-bold">Follow us</h6>

                                <!-- Facebook -->
                                <a
                                    class="btn btn-primary btn-floating m-1"
                                    style="background-color: #3b5998"
                                    href="https://www.facebook.com/gauhar.nawab.39"
                                    role="button"
                                    ><i class="fab fa-facebook-f"></i
                                    ></a>

                                <!-- Twitter -->
                                <a
                                    class="btn btn-primary btn-floating m-1"
                                    style="background-color: #55acee"
                                    href="https://twitter.com/gauhar_nawab"
                                    role="button"
                                    ><i class="fab fa-twitter"></i
                                    ></a>

                                <!-- Google -->
                                <a
                                    class="btn btn-primary btn-floating m-1"
                                    style="background-color: #dd4b39"
                                    href="https://google.com"
                                    role="button"
                                    ><i class="fab fa-google"></i
                                    ></a>

                                <!-- Instagram -->
                                <a
                                    class="btn btn-primary btn-floating m-1"
                                    style="background-color: #ac2bac"
                                    href="https://www.instagram.com/gauharnawab/"
                                    role="button"
                                    ><i class="fab fa-instagram"></i
                                    ></a>

                                <!-- Linkedin -->
                                <a
                                    class="btn btn-primary btn-floating m-1"
                                    style="background-color: #0082ca"
                                    href="https://www.linkedin.com/in/gauhar-nawab-267716208/"
                                    role="button"
                                    ><i class="fab fa-linkedin-in"></i
                                    ></a>
                                <!-- Github -->
                                <a
                                    class="btn btn-primary btn-floating m-1"
                                    style="background-color: #333333"
                                    href="https://github.com/gauharnawab"
                                    role="button"
                                    ><i class="fab fa-github"></i
                                    ></a>
                            </div>
                        </div>
                        <!--Grid row-->
                    </section>
                    <!-- Section: Links -->
                </div>
                <!-- Grid container -->

                <!-- Copyright -->
                <div
                    class="text-center p-3"
                    style="background-color: rgba(0, 0, 0, 0.2)"
                    >
                    © 2023 Copyright:
                    <a class="text-white" href="https://github.com/gauharnawab"
                       >gauharnawab</a
                    >
                </div>
                <!-- Copyright -->

            </footer>
            <!-- Footer -->
        </div>
        <!-- End of .container -->


        <!-- modal content -->

        <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Login to OLP</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="http://localhost:8080/elearningproject/c/?action=model&page=UserloginModel" method="POST">
                            <div class="form-group">

                                <label for="exampleInputEmail1">Email address</label>
                                <input type="email" name="email" class="form-control" id="em" onblur="formValidator('em', 'sp');">
                                <span id="sp"></span>
                            </div>
                            <div class="form-group">

                                <label for="Password">Password</label>
                                <input type="password" name="password" class="form-control" id="pw" onblur="formValidator('pw', 'sp2');">
                                <span id="sp2"></span>
                            </div>

                            <button type="submit" class="btn btn-primary">Login</button>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button> 
                    </div>
                </div>
            </div>
        </div>


        <!-- Sign Up Modal -->
        <div class="modal fade" id="signupModal" tabindex="-1" role="dialog" aria-labelledby="signupModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Get an OLP Account</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <form action="http://localhost:8080/elearningproject/c/?action=model&page=LoginModel" method="POST">
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="validationDefault01">Email address:</label>
                                <input type="email" class="form-control" name="email" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>

                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Password:</label>
                                <input type="password" class="form-control" name="password" id="exampleInputPassword1" placeholder="Password">
                            </div>
                            <div class="form-group">
                                <label for="validationdefault01">First Name:</label>
                                <input type="text" class="form-control" id="name" name="fname" placeholder="Enter first name">
                            </div>
                            <div class="form-group">
                                <label for="">Last Name:</label>
                                <input type="text" class="form-control" name="lname" placeholder="Enter last name">
                            </div>
                            <div class="form-group">
                                <label for="highest-qualification">Highest Qualification:</label>
                                <select class="form-control" id="qualification" name="hqualification">
                                    <option>Choose Course:</option>
                                    <option>B.Tech</option>
                                    <option>Mca</option>
                                    <option>M.Tech</option>
                                    <option>Bca</option>
                                    <option>B.sc</option>
                                    <option>M.sc</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="dateofbirth">Date Of Birth:</label>
                                <input type="date" id="date" class="form-control" name="dob">
                            </div>
                            <div class="form-group">
                                <label for="html">Gender:</label> <br>
                                <input type="radio" id="html" name="gender" value="male">
                                <label for="male">male</label>
                                <input type="radio" id="css" name="gender" value="female">
                                <label for="female">female</label>

                            </div>
                            <div class="form-group">
                                <label for="user-type">User Type:</label>
                                <select class="form-control" id="ut" name="user_type" onclick="getuser();">
                                    <option value="">choose:</option>
                                    <option value="1">content provider</option>
                                    <option value="2">content seeker</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <select class="form-control" name="countries" onclick="getcountries();" id="con">
                                    <option value="">select country</option>
                                </select>

                                <div class="modal-footer">
                                    <button type="sumbit" class="btn btn-primary btn-lg btn-block">Register</button>
                                </div>

                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button> 
                                </div>
                            </div>
                        </div>

                        <!-- modal content end -->

                        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" crossorigin="anonymous"></script>
                        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" crossorigin="anonymous"></script>
                        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" crossorigin="anonymous"></script>
                        </body>
                        </html>



