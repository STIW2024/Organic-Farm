<%-- 
    Document   : index.jsp
    Created on : Dec 25, 2017, 10:14:14 PM
    Author     : Azimjon Khamdamov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Organic Agriculture</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">



        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="css/gallery-grid.css" rel="stylesheet" type="text/css"/>
        <!-- Custom fonts for this template -->
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
        <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
        <link href="https://fonts.googleapis.com/css?family=Droid+Sans:400,700" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.css">
        
        <!-- Custom styles for this template -->
        <link href="css/agency.min.css" rel="stylesheet">



    </head>
    <body id="page-top">

        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top">Organic Agriculture</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fa fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul align="center" class="navbar-nav text-uppercase ml-auto">
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#services">News</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#portfolio">Get Started</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#about">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#team">Our Farms</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#gallery">Gallery</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#contact">Contact us</a>
                            
                        </li>
                        
                    </ul>
                    
                            <button id="login" type="button" data-toggle="modal" data-target="#loginmodal" type="button" class="btn btn-primary btn-sm">Login</button>&nbsp;&nbsp;
                            <button type="button" data-toggle="modal" data-target="#regmodal" class="btn btn-success btn-sm">Sign Up</button>&nbsp;&nbsp;
                            <a href="ExpertPage/expertindex.jsp" role="button" class="btn btn-outline-dark btn-sm">Expert Page</a>
                            


                            
                </div>
            </div>
        </nav>
<!-- Login Modal -->
<div class="modal fade" id="loginmodal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h5 class="modal-title">Enter Your Username and Password</h5>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
            

            <form name="form" class="form-horizontal" method="post" action="login.jsp">
    <div class="form-group">
      <label for="text">Username</label>
      <input type="text" class="form-control" name="username" placeholder="Username" required>
    </div>
    <div class="form-group">
      <label for="password">Password:</label>
       <input type="password" class="form-control" name="password" placeholder="Password" required>
    </div>
    
                <button style="float:right" type="submit" class="btn btn-success">Sign in</button>
  </form>
            
            
        </div>
        
        
        
      </div>
    </div>
  </div>

<!-- Register Modal -->
<div class="modal fade" id="regmodal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h5 class="modal-title">Enter Your Username and Password</h5>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
            

            <form name="form" class="form-horizontal" method="post" action="registr.jsp">

                <div class="form-group">
                    <label for="fullname">Full Name</label>
                    <input type="text" class="form-control" name="fullname" placeholder="Full Name" required>
                </div>
                
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" name="email" placeholder="Email" required>
                </div>
                
                <div class="form-group">
                    <label for="text">Age</label>
                    <input type="number" class="form-control" name="age" placeholder="Age" required>
                </div>
                
                <div class="form-group">
                    <label for="sel1">Organization</label>
                    <select name="organization" class="form-control" id="sel1" required>
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                    </select>
                </div>


                <div class="form-group">
                    <label for="text">Username</label>
                    <input type="text" class="form-control" name="username" placeholder="Username" required>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" class="form-control" name="password" placeholder="Password" required>
                </div>

                <button style="float:right" type="submit" class="btn btn-success">Sign Up</button>
                <button style=float:center; type="reset" class="btn btn-default">Reset</button>
            </form>


        </div>
        
        
        
      </div>
    </div>
  </div>


        <!-- Header -->
        <header class="masthead">
            <div class="container">
                <div class="intro-text">
                    <div class="intro-lead-in">Welcome To Our Website!</div>
                    <div class="intro-heading text-uppercase">It's Nice To Meet You</div>
                    <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="#services">Tell Me More</a>
                </div>
            </div>
        </header>

        <!-- Services -->
        <section id="services">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-justify">
                        <h2 align="center" class="section-heading text-uppercase">News</h2>
                        
                        <jsp:include page="retrieve.jsp"/>
                    </div>

                </div>


            </div>
        </section>

        <!-- Get Started -->
        <section class="bg-light" id="portfolio">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading text-uppercase">Get Started</h2>
                        <br>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal" href="#portfolioModal1">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content">
                                    <i class="fa fa-plus fa-3x"></i>
                                </div>
                            </div>
                            <img class="img-fluid" src="img/getstarted/whatisorganic.jpg" alt="">
                        </a>
                        <div class="portfolio-caption">
                            <h4>WHAT IS</h4>
                            <p class="text-muted text-uppercase">ORGANIC</p>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal" href="#portfolioModal2">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content">
                                    <i class="fa fa-plus fa-3x"></i>
                                </div>
                            </div>
                            <img class="img-fluid" src="img/getstarted/whyorganic.png" alt="">
                        </a>
                        <div class="portfolio-caption">
                            <h4>WHY</h4>
                            <p class="text-muted">ORGANIC</p>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal" href="#portfolioModal3">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content">
                                    <i class="fa fa-plus fa-3x"></i>
                                </div>
                            </div>
                            <img class="img-fluid" src="img/getstarted/howtogoorganic.jpg" alt="">
                        </a>
                        <div class="portfolio-caption">
                            <h4>HOW TO</h4>
                            <p class="text-muted">TO ORGANIC</p>
                        </div>
                    </div>
                    
                    
                    
                </div>
            </div>
        </section>

        <!-- About -->
        <section id="about">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading text-uppercase">About us</h2>
                        <br>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <ul class="timeline">
                            <li>
                                <div class="timeline-image">
                                    <img class="rounded-circle img-fluid" src="img/aboutus/mission.png" alt="">
                                </div>
                                
                                <div class="timeline-panel">
                                    
                                    <div align="justify" class="timeline-body">
                                        <p class="text-muted">Our mission is to conduct and gather credible, evidence-based science on the environmental and health effects of organic food and farming and communicate the findings to the public.<br>
<b>We will achieve our mission through:</b><br>
<br><b>1.</b> Research on sustainable organic food and agriculture to improve the health of humans and the environment.
<br><b>2.</b> Advance understanding about the health and environmental benefits of organic food and farming through scientific research.
<br><b>3.</b> Improve the efficacy and sustainability of organic farming methods through scientific research
</p>
                                    </div>
                                </div>
                            </li>
                            <li class="timeline-inverted">
                                <div class="timeline-image">
                                    <img class="rounded-circle img-fluid" src="img/aboutus/vision.png" alt="">
                                </div>
                                <div class="timeline-panel">
                                    
                                    <div align="justify" class="timeline-body">
                                        <p class="text-muted">Our vision is to become an information platform for organic crops as a sustainable future for Malaysia. We strive to provide information on organic goodness to the outside world.</p>
                                    </div>
                                </div>
                            </li>
                            
                            
                            
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        <!-- Farm -->
        <section class="bg-light" id="team">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading text-uppercase">Our Farms</h2>
                        <br>
                    </div>
                </div>
                <div class="row" align="center">
                    
                    <iframe src="https://www.google.com/maps/d/embed?mid=1lFS3nDptvIqm4lWk5cO4kmci4284lg7P" width="100%" height="500" frameborder="0"></iframe>
                    
                </div>
                
            </div>
        </section>

        <!-- Gallery -->
        <section class="bg-light" id="gallery">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading text-uppercase">Gallery</h2>
                        <br>
                    </div>
                </div>
            </div>
            <div class="container gallery-container">


                <div class="tz-gallery">

                    <div class="row">
                        <div class="col-sm-6 col-md-4">
                            <a class="lightbox" href="img/images/1.jpg">
                                <img src="img/images/1.jpg" alt="">
                            </a>
                        </div>
                        <div class="col-sm-6 col-md-4">
                            <a class="lightbox" href="img/images/2.jpg">
                                <img src="img/images/2.jpg" alt="">
                            </a>
                        </div>
                        <div class="col-sm-12 col-md-4">
                            <a class="lightbox" href="img/images/3.jpg">
                                <img src="img/images/3.jpg" alt="">
                            </a>
                        </div>
                        <div class="col-sm-6 col-md-4">
                            <a class="lightbox" href="img/images/4.jpg">
                                <img src="img/images/4.jpg" alt="">
                            </a>
                        </div>
                        <div class="col-sm-6 col-md-4">
                            <a class="lightbox" href="img/images/5.jpg">
                                <img src="img/images/5.jpg" alt="">
                            </a>
                        </div>
                        <div class="col-sm-6 col-md-4">
                            <a class="lightbox" href="img/images/6.jpg">
                                <img src="img/images/6.jpg" alt="">
                            </a>
                        </div>
                        <div class="col-sm-6 col-md-4">
                            <a class="lightbox" href="img/images/7.jpg">
                                <img src="img/images/7.jpg" alt="">
                            </a>
                        </div>
                        <div class="col-sm-6 col-md-4">
                            <a class="lightbox" href="img/images/8.jpg">
                                <img src="img/images/8.jpg" alt="">
                            </a>
                        </div>
                        <div class="col-sm-6 col-md-4">
                            <a class="lightbox" href="img/images/9.jpg">
                                <img src="img/images/9.jpg" alt="">
                            </a>
                        </div>
                        <div class="col-sm-6 col-md-4">
                            <a class="lightbox" href="img/images/10.jpg">
                                <img src="img/images/10.jpg" alt="">
                            </a>
                        </div>
                        <div class="col-sm-6 col-md-4">
                            <a class="lightbox" href="img/images/11.jpg">
                                <img src="img/images/11.jpg" alt="">
                            </a>
                        </div>
                        <div class="col-sm-6 col-md-4">
                            <a class="lightbox" href="img/images/12.jpg">
                                <img src="img/images/12.jpg" alt="">
                            </a>
                        </div>
                        
                        
                        
                        
                        
                        
                    </div>

                </div>

            </div>

            
            
    </section>

        <!-- Contact -->
        <section id="contact" class="bg-dark">
            
            <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">Our Amazing Experts</h2>
            
          </div>
        </div>
        <div class="row">
          
            
<jsp:include page="getcontactinfo.jsp" />

            
            
                   
        </div>
        <div class="row">
          <div class="col-lg-8 mx-auto text-center">
            
          </div>
        </div>
      </div>
            
            
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading text-uppercase">Contact Us</h2>
                       
                    </div>
                </div>
  
                <div class="row">
                    <div class="col-lg-12">
                        <form name="sentMessage" action="contactus.jsp">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input name="fullname" class="form-control" type="text" placeholder="Your Name" >
                                        
                                    </div>
                                    <div class="form-group">
                                        <input name="email" class="form-control" type="email" placeholder="Your Email">
                                        
                                    </div>
                                    <div class="form-group">
                                        <input name="pnumber" class="form-control" type="number" placeholder="Your Phone" >
                                        
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <textarea name="message" class="form-control" placeholder="Your Message" ></textarea>
                                        
                                    </div>
                                </div>
                                
                                <div class="col-lg-12 text-center">
                                    
                                    <button  class="btn btn-primary btn-xl text-uppercase" type="submit">Send Message</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>

        <!-- Footer -->
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <span class="copyright">Copyright &copy; Your Website 2017</span>
                    </div>
                    <div class="col-md-4">
                        <ul class="list-inline social-buttons">
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="fa fa-twitter"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="fa fa-facebook"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="fa fa-linkedin"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-4">
                        <ul class="list-inline quicklinks">
                            <li class="list-inline-item">
                                <a href="#">Privacy Policy</a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#">Terms of Use</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>

        <!-- Portfolio Modals -->

        <!-- Modal 1 -->
        <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 mx-auto">
                                <div class="modal-body">
                                    <!-- Project Details Go Here -->
                                    <h2 class="text-uppercase">WHAT IS ORGANIC? </h2>
                                    
                                    <img class="img-fluid d-block mx-auto" src="img/getstarted/whatisorganic.jpg" alt="">
                                    <p align="justify">Organic farming is a method of farming and livestock production involving more than choosing not to use pesticides, fertilizers, genetically modified organisms, antibiotics and hormonal growth. Organic production is a holistic system designed to optimize the productivity and vitality of various societies in agroecosystems, including organisms, plants, livestock and humans. The main goal of organic production is to develop a company that is friendly and harmonious with the environment.</p>
                                    
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <i class="fa fa-times"></i>
                                        Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal 2 -->
        <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 mx-auto">
                                <div class="modal-body">
                                    <!-- Project Details Go Here -->
                                    <h2 class="text-uppercase">Why organic</h2>
                                    
                                    <img class="img-fluid d-block mx-auto" src="img/getstarted/whyorganic.png" alt="">
                                    <p align="justify">The main reasons why farmers are organic harvesting is their concern for the environment and about working with agricultural chemicals in conventional farming systems. There is also a problem with the amount of energy used in agriculture, as many farm chemicals require a process of energy-intensive production that relies heavily on fossil fuels. Organic farmers should look for their farming methods to benefit their crops.</p>
                                    
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <i class="fa fa-times"></i>
                                        Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal 3 -->
        <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 mx-auto">
                                <div class="modal-body">
                                    <!-- Project Details Go Here -->
                                    <h2 class="text-uppercase">HOW TO GO ORGANIC?</h2>
                                   
                                    <img class="img-fluid d-block mx-auto" src="img/getstarted/howtogoorganic.jpg" alt="">
                                    <p align="center" class="text-uppercase"><b>Assembling Your Garden</b><br></p>
<p align="justify">
<br>1) Test your soil. Your soil may need to be adjusted if it is not healthy enough to support the crop.

<br>2) Make any corrections required for your land. Once you know the condition of your land, you may have your work for you. If you are lucky, your land will only need a little work before you start the farm.

<br>3) Take a climate of considerations. You will not be able to plant the kind of plant you want in your farm. The climate in your area affects the plants that can be planted organically.

<br>4) Visit the local farmers market. Most farmers here will practice organic techniques to plant their crops.

<br>5) Plant your crops. For organic farms, plants need to be planted in large areas. Extra space between these lines naturally fights fungal attacks as it improves air circulation.
</p>
                                    
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <i class="fa fa-times"></i>
                                        Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

       

        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Plugin JavaScript -->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
        <script src="vendor/scrollreveal/scrollreveal.min.js"></script>
        <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
       
        <!-- Contact form JavaScript -->
        <script src="js/jqBootstrapValidation.js"></script>
        <script src="js/contact_me.js"></script>

        <!-- Custom scripts for this template -->
        <script src="js/agency.min.js"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.js"></script>
        <script>
            baguetteBox.run('.tz-gallery');
        </script>
        
    </body>
</html>
