<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Conn.Db_Conn"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TutorialsPoint</title>
<!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Nunito:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: FlexStart
  * Template URL: https://bootstrapmade.com/flexstart-bootstrap-startup-template/
  * Updated: Nov 01 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<body>
<%@ include file="Navbar.jsp" %>
<%@include file="Slider.jsp" %>
<main class="main">

   <!-- About Section -->
    <section id="about" class="about section">

      <div class="container" data-aos="fade-up">
        <div class="row gx-0">

          <div class="col-lg-6 d-flex flex-column justify-content-center" data-aos="fade-up" data-aos-delay="200">
            <div class="content">
              <h2>Empowering Your Future with Knowledge and Opportunity</h2>
              <p>
              At Tutorialpoint, we are dedicated to transforming the way you learn and grow in today’s competitive world. Our platform offers a wide range of high-quality, industry-relevant courses designed to equip you with the skills you need to succeed.
              Whether you're a student aiming to build a strong foundation or a professional looking to upgrade your expertise, Tutorialpoint is your trusted learning partner.
              <br/>
              We bring together some of the best educators and industry experts to deliver engaging, easy-to-understand content that makes learning effective and enjoyable. But we don’t stop at education
               – we also offer exclusive placement support to help you land your dream job in top companies.From personalized guidance to career-focused training, we’re here to support every step of your journey.
               </p>
              <div class="text-center text-lg-start">
                <a href="#" class="btn-read-more d-inline-flex align-items-center justify-content-center align-self-center">
                  <span>Read More</span>
                  <i class="bi bi-arrow-right"></i>
                </a>
              </div>
            </div>
          </div>

          <div class="col-lg-6 d-flex align-items-center" data-aos="zoom-out" data-aos-delay="200">
            <img src="assets/img/About.jpeg" class="img-fluid" alt="" style="height:30rem; width:50rem">
          </div>

        </div>
      </div>

    </section><!-- /About Section -->

     <!-- Stats Section -->
    <section id="stats" class="stats section">

      <div class="container" data-aos="fade-up" data-aos-delay="100">

        <div class="row gy-4">

          <div class="col-lg-3 col-md-6">
            <div class="stats-item d-flex align-items-center w-100 h-100">
              <i class="bi bi-emoji-smile color-blue flex-shrink-0"></i>
              <div>
                <span data-purecounter-start="0" data-purecounter-end="1000" data-purecounter-duration="1" class="purecounter"></span>
                <p>Happy Clients</p>
              </div>
            </div>
          </div><!-- End Stats Item -->

          <div class="col-lg-3 col-md-6">
            <div class="stats-item d-flex align-items-center w-100 h-100">
              <i class="bi bi-journal-richtext color-orange flex-shrink-0" style="color: #ee6c20;"></i>
              <div>
                <span data-purecounter-start="0" data-purecounter-end="500" data-purecounter-duration="1" class="purecounter"></span>
                <p>Projects</p>
              </div>
            </div>
          </div><!-- End Stats Item -->

          <div class="col-lg-3 col-md-6">
            <div class="stats-item d-flex align-items-center w-100 h-100">
              <i class="bi bi-headset color-green flex-shrink-0" style="color: #15be56;"></i>
              <div>
                <span data-purecounter-start="0" data-purecounter-end="24" data-purecounter-duration="1" class="purecounter"></span>
                <p>Hours Of Support</p>
              </div>
            </div>
          </div><!-- End Stats Item -->

          <div class="col-lg-3 col-md-6">
            <div class="stats-item d-flex align-items-center w-100 h-100">
              <i class="bi bi-people color-pink flex-shrink-0" style="color: #bb0852;"></i>
              <div>
                <span data-purecounter-start="0" data-purecounter-end="100" data-purecounter-duration="1" class="purecounter"></span>
                <p>Hard Workers</p>
              </div>
            </div>
          </div><!-- End Stats Item -->

        </div>

      </div>

    </section><!-- /Stats Section -->
    
    
     <!-- Services Section -->
    <section id="services" class="services section">

      <!-- Section Title -->
      <div class="container section-title mt-2" data-aos="fade-up">
        <p>Courses<br></p>
      </div><!-- End Section Title -->

      <div class="container">

        <div class="row gy-4">
<%
try{
Connection dbs=Db_Conn.getCon();
String q="select * from dcourse";
PreparedStatement ps=dbs.prepareStatement(q);
ResultSet rs=ps.executeQuery();
while(rs.next()){
	String c=rs.getString("coursename");
	String p=rs.getString("project");
	String f=rs.getString("fees");
	String du=rs.getString("duration");
	String desc=rs.getString("description");
	%>
	 <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="100">
            <div class="service-item item-cyan position-relative">
               <img src="assets/img/SymbolDa.png" class="img-fluid" style="height:18rem;width:20rem;" alt="">
              <h3><%=c %></h3>
              <p style="text-align:justify;"><%=desc %></p>
              <h5 style="text-align:left;">Duration:<%=du %></h5>
              <h5 style="text-align:left;">Charge:<%=f %></h5>
            </div>
          </div><!-- End Service Item -->
	<%
}}catch(Exception e){
	e.printStackTrace();
}
%>
<%
try{
Connection dbs=Db_Conn.getCon();
String q="select * from ccourse";
PreparedStatement ps=dbs.prepareStatement(q);
ResultSet rs=ps.executeQuery();
while(rs.next()){
	String c=rs.getString("coursename");
	String p=rs.getString("project");
	String f=rs.getString("fees");
	String du=rs.getString("duration");
	String desc=rs.getString("description");
	%>
	 <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="200">
            <div class="service-item item-orange position-relative">
              <img src="assets/img/SymbolC.jpg" class="img-fluid" style="height:18rem;width:20rem;" alt="">
              <h3><%=c %></h3>
              <p style="text-align:justify;"><%=desc %></p>
              <h5 style="text-align:left;">Duration:<%=du %></h5>
              <h5 style="text-align:left;">Charge:<%=f %></h5>
            </div>
          </div><!-- End Service Item -->
	<%
}}catch(Exception e){
	e.printStackTrace();
}
%>
<%
try{
Connection dbs=Db_Conn.getCon();
String q="select * from dacourse";
PreparedStatement ps=dbs.prepareStatement(q);
ResultSet rs=ps.executeQuery();
while(rs.next()){
	String c=rs.getString("coursename");
	String p=rs.getString("project");
	String f=rs.getString("fees");
	String du=rs.getString("duration");
	String desc=rs.getString("description");
	%>
	 <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="300">
            <div class="service-item item-teal position-relative">
              <img src="assets/img/SymbolD.png" class="img-fluid" style="height:18rem;width:20rem;" alt="">
              <h3><%=c %></h3>
              <p style="text-align:justify;"><%=desc %></p>
              <h5 style="text-align:left;">Duration:<%=du %></h5>
              <h5 style="text-align:left;">Charge:<%=f %></h5>
            </div>
          </div><!-- End Service Item -->
	<%
}}catch(Exception e){
	e.printStackTrace();
}
%>
<%
try{
Connection dbs=Db_Conn.getCon();
String q="select * from acourse";
PreparedStatement ps=dbs.prepareStatement(q);
ResultSet rs=ps.executeQuery();
while(rs.next()){
	String c=rs.getString("coursename");
	String p=rs.getString("project");
	String f=rs.getString("fees");
	String du=rs.getString("duration");
	String desc=rs.getString("description");
	%>
	 <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="400">
            <div class="service-item item-red position-relative">
              <img src="assets/img/Aws.png" class="img-fluid" style="height:15rem;width:20rem;" alt="">
              <h3><%=c %></h3>
              <p style="text-align:justify;"><%=desc %></p>
              <h5 style="text-align:left;">Duration:<%=du %></h5>
              <h5 style="text-align:left;">Charge:<%=f %></h5>
            </div>
          </div><!-- End Service Item -->
	<%
}}catch(Exception e){
	e.printStackTrace();
}
%>
<%
try{
Connection dbs=Db_Conn.getCon();
String q="select * from jcourse";
PreparedStatement ps=dbs.prepareStatement(q);
ResultSet rs=ps.executeQuery();
while(rs.next()){
	String c=rs.getString("coursename");
	String p=rs.getString("project");
	String f=rs.getString("fees");
	String du=rs.getString("duration");
	String desc=rs.getString("description");
	%>
	 <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="500">
            <div class="service-item item-indigo position-relative">
              <img src="assets/img/SymbolJ.jpg" class="img-fluid" style="height:15rem;width:20rem;" alt="">
              <h3><%=c %></h3>
              <p style="text-align:justify;"><%=desc %></p>
              <h5 style="text-align:left;">Duration:<%=du %></h5>
              <h5 style="text-align:left;">Charge:<%=f %></h5>
            </div>
          </div><!-- End Service Item -->
	<%
}}catch(Exception e){
	e.printStackTrace();
}
%>
<%
try{
Connection dbs=Db_Conn.getCon();
String q="select * from course";
PreparedStatement ps=dbs.prepareStatement(q);
ResultSet rs=ps.executeQuery();
while(rs.next()){
	String c=rs.getString("coursename");
	String p=rs.getString("project");
	String f=rs.getString("fees");
	String du=rs.getString("duration");
	String desc=rs.getString("description");
	%>
	 <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="600">
            <div class="service-item item-pink position-relative">
              <img src="assets/img/Autocad.jpeg" class="img-fluid" style="height:15rem;width:20rem;" alt="">
              <h3><%=c %></h3>
              <p style="text-align:justify;"><%=desc %></p>
              <h5 style="text-align:left;">Duration:<%=du %></h5>
              <h5 style="text-align:left;">Charge:<%=f %></h5>
            </div>
          </div><!-- End Service Item -->
	<%
}}catch(Exception e){
	e.printStackTrace();
}%>

        </div>

      </div>

    </section><!-- /Services Section -->
    
    

    
    
    <!-- Team Section -->
    <section id="team" class="team section">

      <!-- Section Title -->
      <div class="container section-title mt-5" data-aos="fade-up">
        <p>Our Trainers</p>
      </div><!-- End Section Title -->

      <div class="container">

        <div class="row gy-4">

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
            <div class="team-member">
              <div class="member-img">
                <img src="assets/img/team/team-1.jpg" class="img-fluid" alt="">
                <div class="social">
                  <a href=""><i class="bi bi-twitter-x"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
              <div class="member-info">
                <h4>Mr. Deepak Gupta</h4>
                <span>Java Full Stack</span>
                <p>With over 5 years of experience,Deepak sir specializes in Java,Spring Boot and Web Developement. He believes in hands on learning and focuses on real-world project Training.</p>
              </div>
            </div>
          </div><!-- End Team Member -->

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="200">
            <div class="team-member">
              <div class="member-img">
                <img src="assets/img/team/team-2.jpg" class="img-fluid" alt="">
                <div class="social">
                  <a href=""><i class="bi bi-twitter-x"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
              <div class="member-info">
                <h4>Miss. Hina Varshney</h4>
                <span>English Speaking and PD classes</span>
                <p>Hina Ma'am helps student improve their communication and confidence. She combined interactive activities with practical sessions to build soft skills.</p>
              </div>
            </div>
          </div><!-- End Team Member -->

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="300">
            <div class="team-member">
              <div class="member-img">
                <img src="assets/img/team/team-3.jpg" class="img-fluid" alt="">
                <div class="social">
                  <a href=""><i class="bi bi-twitter-x"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
              <div class="member-info">
                <h4>Mr. Nitin Chauhan</h4>
                <span>Mern Stack</span>
                <p>With over 6 years of Experience,Nitin sir specializes in MongoDB,ExpressJs,React and Node js.His class are known for live projects and deep technical insights.</p>
              </div>
            </div>
          </div><!-- End Team Member -->

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="400">
            <div class="team-member">
              <div class="member-img">
                <img src="assets/img/team/team-4.jpg" class="img-fluid" alt="">
                <div class="social">
                  <a href=""><i class="bi bi-twitter-x"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
              <div class="member-info">
                <h4>Miss. Prerna Sharma</h4>
                <span>Python Full Stack</span>
                <p>Prerna Ma'am has expertise in Python,Django and data driven web apps.She encourages students to explore coding challenges and build strong logic.</p>
              </div>
            </div>
          </div><!-- End Team Member -->

        </div>

      </div>

    </section><!-- /Team Section -->

<!-- Features Section -->
    <section id="features" class="features section">

      <!-- Section Title -->
      <div class="container section-title" data-aos="fade-up">
        <h2>Features</h2>
        <p>Top Placement Company<br></p>
      </div><!-- End Section Title -->

      <div class="container">

        <div class="row gy-5">

          <div class="col-xl-6" data-aos="zoom-out" data-aos-delay="100">
            <img src="assets/img/features.png" class="img-fluid" alt="">
          </div>

          <div class="col-xl-6 d-flex">
            <div class="row align-self-center gy-4">

              <div class="col-md-6" data-aos="fade-up" data-aos-delay="200">
                <div class="feature-box d-flex align-items-center">
                  <i class="bi bi-check"></i>
                  <a href="https://www.hcltech.com/">HCL</a>
                </div>
              </div><!-- End Feature Item -->
              
              <div class="col-md-6" data-aos="fade-up" data-aos-delay="200">
                <div class="feature-box d-flex align-items-center">
                  <i class="bi bi-check"></i>
                  <a href="https://www.amazon.in/">Amazon</a>
                </div>
              </div><!-- End Feature Item -->
              
              <div class="col-md-6" data-aos="fade-up" data-aos-delay="200">
                <div class="feature-box d-flex align-items-center">
                  <i class="bi bi-check"></i>
                  <a href="https://www.flipkart.com/">Flipkart</a>
                </div>
              </div><!-- End Feature Item -->
              
              <div class="col-md-6" data-aos="fade-up" data-aos-delay="200">
                <div class="feature-box d-flex align-items-center">
                  <i class="bi bi-check"></i>
                  <a href="https://www.techmahindra.com/">Tech-Mahindra</a>
                </div>
              </div><!-- End Feature Item -->

              <div class="col-md-6" data-aos="fade-up" data-aos-delay="400">
                <div class="feature-box d-flex align-items-center">
                  <i class="bi bi-check"></i>
                  <a href="https://www.wipro.com/">Wipro</a>
                </div>
              </div><!-- End Feature Item -->

              <div class="col-md-6" data-aos="fade-up" data-aos-delay="500">
                <div class="feature-box d-flex align-items-center">
                  <i class="bi bi-check"></i>
                  <a href="https://www.google.co.in/">Google</a>
                </div>
              </div><!-- End Feature Item -->

              <div class="col-md-6" data-aos="fade-up" data-aos-delay="600">
                <div class="feature-box d-flex align-items-center">
                  <i class="bi bi-check"></i>
                  <a href="https://www.apple.com/in/">Apple</a>
                </div>
              </div><!-- End Feature Item -->

              <div class="col-md-6" data-aos="fade-up" data-aos-delay="700">
                <div class="feature-box d-flex align-items-center">
                  <i class="bi bi-check"></i>
                  <a href="https://account.microsoft.com/">Microsoft</a>
                </div>
              </div><!-- End Feature Item -->

            </div>
          </div>

        </div>

      </div>

    </section><!-- /Features Section -->
    


    <!-- Faq Section -->
    <section id="faq" class="faq section">

      <!-- Section Title -->
      <div class="container section-title" data-aos="fade-up">
        <h2>F.A.Q</h2>
        <p>Frequently Asked Questions</p>
      </div><!-- End Section Title -->

      <div class="container">

        <div class="row">

          <div class="col-lg-6" data-aos="fade-up" data-aos-delay="100">

            <div class="faq-container">

              <div class="faq-item faq-active">
                <h3>How do I choose the right course for me?</h3>
                <div class="faq-content">
                  <p>Choosing the right course depends on your current skills,career goals and interests.Start by identifying what you want to work in the future.if you are a beginner,look for beginner-friendly courses with no prerequists.</p>
                </div>
                <i class="faq-toggle bi bi-chevron-right"></i>
              </div><!-- End Faq item-->


              <div class="faq-item faq-active">
                <h3>Will I receive a certificate after completing a course?</h3>
                <div class="faq-content">
                  <p>Yes, I will give you a certificate after completing the course and also give placement in top tech company with high package.</p>
                </div>
                <i class="faq-toggle bi bi-chevron-right"></i>
              </div><!-- End Faq item-->

            </div>

          </div><!-- End Faq Column-->

          <div class="col-lg-6" data-aos="fade-up" data-aos-delay="200">

            <div class="faq-container">

              <div class="faq-item faq-active">
                <h3>How long will I have access to the course after purchasing?</h3>
                <div class="faq-content">
                  <p>You will have access to the course for a specific period after purcahse.this could be limited time like a 6 or 12 months.</p>
                </div>
                <i class="faq-toggle bi bi-chevron-right"></i>
              </div><!-- End Faq item-->

              <div class="faq-item faq-active">
                <h3>Do you help with resume building and interview preparation?</h3>
                <div class="faq-content">
                  <p>Yes I will help you in making resume and also provide some classes for interview preparation. We provide tips how to crack for technical and HR rounds.</p>      </div>
                <i class="faq-toggle bi bi-chevron-right"></i>
              </div><!-- End Faq item-->


            </div>

          </div><!-- End Faq Column-->

        </div>

      </div>

    </section><!-- /Faq Section -->

    

    

    
    <!-- Clients Section -->
    <section id="clients" class="clients section">

      <!-- Section Title -->
      <div class="container section-title" data-aos="fade-up">
        <h2 style="font-size:1rem;">Our learners work at</h2>
        <p style="font-size:1.5rem;">TutorialsPoint learners work at some of the leading and innovative organizations<br/> of today, solving core business problems.<br></p>
      </div><!-- End Section Title -->

      <div class="container" data-aos="fade-up" data-aos-delay="100">

        <div class="swiper init-swiper">
          <script type="application/json" class="swiper-config">
            {
              "loop": true,
              "speed": 600,
              "autoplay": {
                "delay": 5000
              },
              "slidesPerView": "auto",
              "pagination": {
                "el": ".swiper-pagination",
                "type": "bullets",
                "clickable": true
              },
              "breakpoints": {
                "320": {
                  "slidesPerView": 2,
                  "spaceBetween": 40
                },
                "480": {
                  "slidesPerView": 3,
                  "spaceBetween": 60
                },
                "640": {
                  "slidesPerView": 4,
                  "spaceBetween": 80
                },
                "992": {
                  "slidesPerView": 6,
                  "spaceBetween": 120
                }
              }
            }
          </script>
          <div class="swiper-wrapper align-items-center">
            <div class="swiper-slide"><img src="assets/img/clients/client-1.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="assets/img/clients/client-2.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="assets/img/clients/client-3.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="assets/img/clients/client-4.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="assets/img/clients/client-5.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="assets/img/clients/client-6.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="assets/img/clients/client-7.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="assets/img/clients/client-8.png" class="img-fluid" alt=""></div>
          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>

    </section><!-- /Clients Section -->


    <!-- Contact Section -->
    <section id="contact" class="contact section">

      <!-- Section Title -->
      <div class="container section-title" data-aos="fade-up">
        <h2>Contact</h2>
        <p>Contact Us</p>
      </div><!-- End Section Title -->

      <div class="container" data-aos="fade-up" data-aos-delay="100">

        <div class="row gy-4">

          <div class="col-lg-6">

            <div class="row gy-4">
              <div class="col-md-6">
                <div class="info-item" data-aos="fade" data-aos-delay="200">
                  <i class="bi bi-geo-alt"></i>
                  <h3>Address</h3>
                  <p>G-70,Behind MC Donald</p>
                  <p>Noida Sector-22 </p>
                </div>
              </div><!-- End Info Item -->

              <div class="col-md-6">
                <div class="info-item" data-aos="fade" data-aos-delay="300">
                  <i class="bi bi-telephone"></i>
                  <h3>Call Us</h3>
                  <p>+91 9389929429</p>
                  <p>+91 9389929429</p>
                </div>
              </div><!-- End Info Item -->

              <div class="col-md-6">
                <div class="info-item" data-aos="fade" data-aos-delay="400">
                  <i class="bi bi-envelope"></i>
                  <h3>Email Us</h3>
                  <p>tutorialspoint22@gmail.com</p>
                  <p>tutorial@gmail.com</p>
                </div>
              </div><!-- End Info Item -->

              <div class="col-md-6">
                <div class="info-item" data-aos="fade" data-aos-delay="500">
                  <i class="bi bi-clock"></i>
                  <h3>Open Hours</h3>
                  <p>Monday - Saturday</p>
                  <p>9:00AM - 08:00PM</p>
                </div>
              </div><!-- End Info Item -->

            </div>

          </div>

          <div class="col-lg-6">
            <form action="ContactAction" method="post">
              <div class="row gy-4">

                <div class="col-md-6">
                  <input type="text" name="name" class="form-control" placeholder="Your Name" required="">
                </div>

                <div class="col-md-6 ">
                  <input type="email" class="form-control" name="email" placeholder="Your Email" required="">
                </div>

                <div class="col-12">
                  <input type="text" class="form-control" name="course" placeholder="Course" required="">
                </div>

                <div class="col-12">
                  <textarea class="form-control" name="message" rows="6" placeholder="Message" required=""></textarea>
                </div>

                <button type="submit" class="btn btn-primary">Submit</button>

              </div>
            </form>
          </div><!-- End Contact Form -->

        </div>

      </div>

    </section><!-- /Contact Section -->

  </main>

  <%@ include file="Footer.jsp" %>

  <!-- Scroll Top -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>

  <!-- Main JS File -->
  <script src="assets/js/main.js"></script>

</body>
</html>