<%-- 
    Document   : expertindex
    Created on : Dec 26, 2017, 1:29:21 AM
    Author     : Azimjon Khamdamov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Welcome Expert</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

    <!-- Plugin CSS -->
    <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/creative.min.css" rel="stylesheet">
        
                
    </head>
    <body id="page-top">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">Welcome ${username}</a>
        <a href='logout.jsp'>Log out</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#about">Get Started</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#services">Web Details</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#portfolio">Personal Datails</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#contact">News</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <header class="masthead text-center text-white d-flex">
      <div class="container my-auto">
        <div class="row">
          <div class="col-lg-10 mx-auto">
            <h1 class="text-uppercase">
              <strong>Welcome Info Admin</strong>
            </h1>
            <hr>
          </div>
          <div class="col-lg-8 mx-auto">
            
            <a class="btn btn-primary btn-xl js-scroll-trigger" href="#portfolio">FILL IN YOUR CONTACT INFO</a>
          </div>
        </div>
      </div>
    </header>

    <section class="bg-primary" id="about">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto text-center">
            <h2 class="section-heading text-white">We've got what you need!</h2>
            <hr class="light my-4">
            <p class="text-faded mb-4">Start Bootstrap has everything you need to get your new website up and running in no time! All of the templates and themes on Start Bootstrap are open source, free to download, and easy to use. No strings attached!</p>
            <a class="btn btn-light btn-xl js-scroll-trigger" href="#services">Get Started!</a>
          </div>
        </div>
      </div>
    </section>

    <section id="services">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading">Add Organic Agriculture News</h2>
            <hr class="my-4">
          </div>
        </div>
      </div>
      <div class="container">
        
         
            <div class="card">
                <div class="card bg-primary text-black">
                    <div align="center" class="card-header">Add News</div>
                    <div class="card-body bg-light">
                        
                        <form name="form" class="form-horizontal" method="post" action="addnews.jsp">

                <div class="form-group">
                    <label for="author">Author</label>
                    <input type="text" class="form-control" name="author" placeholder="Author" required="">
                </div>
                
                <div class="form-group">
                    <label for="title">Title</label>
                    <input type="text" class="form-control" name="title" placeholder="Title" required="">
                </div>
                
                <div class="form-group">
                     <label for="content">Content</label>
                     <textarea class="form-control" rows="6" name="content" required=""></textarea>
                </div>
                
                


                
                

                <button style="float:right" type="submit" class="btn btn-success">Sign Up</button>
                <button style=float:center; type="reset" class="btn btn-default">Reset</button>
            </form>
                    </div>
                </div>
            </div>
            
        
      </div>
    </section>

    <section class="p-0" id="portfolio">
       <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading">Add Your Contact Information</h2>
            <hr class="my-4">
          </div>
        </div>
      </div>
      <div class="container">
        
         
            <div class="card">
                <div class="card bg-dark text-black">
                    <div align="center" class="card-header" style="color:white">Add Contact Info</div>
                    <div class="card-body bg-light">
                        
                        <form name="form" class="form-horizontal" method="post" action="addcontactinfo.jsp">

                <div class="form-group">
                    <label for="author">Full Name</label>
                    <input type="text" class="form-control" name="fullname" placeholder="Full Name" required>
                </div>
                
                <div class="form-group">
                    <label for="expertin">Expert in</label>
                    <input type="text" class="form-control" name="expertin" placeholder="Expert In" required>
                </div>
                            
                <div class="form-group">
                    <label for="address">Address</label>
                    <input type="text" class="form-control" name="address" placeholder="Address" required>
                </div>
                <div class="form-group">
                    <label for="phonenumber">Phone Number</label>
                    <input type="number" class="form-control" name="phonenumber" placeholder="Phone Number" required>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" name="email" placeholder="Email Address" required>
                </div>       
                <div class="form-group">
                    <label for="fblink">Facebook Account Link</label>
                    <input type="text" class="form-control" name="fblink" placeholder="Facebook Account Link" required>
                </div>
                   
                <button style="float:right" type="submit" class="btn btn-success">Submit</button>
                <button style=float:center; type="reset" class="btn btn-default">Reset</button>
                        </form>
                    </div>
                </div>
            </div>
            
        
      </div>
        <br><br>
    </section>

    <section class="bg-dark text-white">
      <div class="container text-center">
        <h2 class="mb-4">Free Download at Start Bootstrap!</h2>
        <a class="btn btn-light btn-xl sr-button" href="http://startbootstrap.com/template-overviews/creative/">Download Now!</a>
      </div>
    </section>

    <section id="contact">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto text-center">
            <h2 class="section-heading">Let's Get In Touch!</h2>
            <hr class="my-4">
            <p class="mb-5">Ready to start your next project with us? That's great! Give us a call or send us an email and we will get back to you as soon as possible!</p>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-4 ml-auto text-center">
            <i class="fa fa-phone fa-3x mb-3 sr-contact"></i>
            <p>123-456-6789</p>
          </div>
          <div class="col-lg-4 mr-auto text-center">
            <i class="fa fa-envelope-o fa-3x mb-3 sr-contact"></i>
            <p>
              <a href="mailto:your-email@your-domain.com">feedback@startbootstrap.com</a>
            </p>
          </div>
        </div>
      </div>
    </section>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="vendor/scrollreveal/scrollreveal.min.js"></script>
    <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/creative.min.js"></script>

  </body>
</html>
