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
<title>Course</title>
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
<%@include file="Navbar.jsp"%>
  <!-- Recent Posts Section -->
    <section id="recent-posts" class="recent-posts section">

      <!-- Section Title -->
      <div class="container section-title mt-5" data-aos="fade-up">
        <p>Top Courses</p>
      </div><!-- End Section Title -->

      <div class="container">

        <div class="row gy-5">
        <% 
        try{
            Connection dbs=Db_Conn.getCon();
            String s="select * from jcourse";
            PreparedStatement ps=dbs.prepareStatement(s);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
            	String c=rs.getString("coursename");
            	String p=rs.getString("project");
            	String f=rs.getString("fees");
            	String du=rs.getString("duration");
            	String desc=rs.getString("description");
            %>
            <div class="col-xl-4 col-md-4">
            <div class="post-item position-relative h-100" data-aos="fade-up" data-aos-delay="100">

              <div class="post-img position-relative overflow-hidden">
                <img src="assets/img/SymbolJava.jpg" class="img-fluid " style="border:2px solid black; height:20rem; width:28rem;" alt="">
              </div>

              <div class="post-content d-flex flex-column">

                <h3 class="post-title" style="text-align:center"><%=c %></h3>

                <p style="text-align:justify;"><%=desc %></p>
                 <br/><h5 style="text-align:left;">Duration:<%=du %></h5>
              <h5 style="text-align:left;">Charge:<%=f %></h5>
                </div></div>

              </div>
         <%    
        }}catch(Exception e){
        e.printStackTrace();}%>

          <%
          try{
        	  Connection conn=Db_Conn.getCon();
        	  String s="select * from mcourse";
        	  PreparedStatement ps=conn.prepareStatement(s);
        	  ResultSet rs=ps.executeQuery();
        	  while(rs.next()){
        		  String c=rs.getString("coursename");
              	String p=rs.getString("project");
              	String f=rs.getString("fees");
              	String du=rs.getString("duration");
              	String desc=rs.getString("description");
              	%><div class="col-xl-4 col-md-4 ml-5">
            <div class="post-item position-relative h-100" data-aos="fade-up" data-aos-delay="100">

              <div class="post-img position-relative overflow-hidden">
                <img src="assets/img/SymbolMern1.png" class="img-fluid" style="border:2px solid black; height:20rem;width:28rem;" alt="">
              </div>

              <div class="post-content d-flex flex-column">

                <h3 class="post-title" style="text-align:center"><%=c %></h3>

                <p style="text-align:justify;"><%=desc %></p>
                 <br/><h5 style="text-align:left;">Duration:<%=du %></h5>
              <h5 style="text-align:left;">Charge:<%=f %></h5>
                </div></div>

              </div><% 
        	  }
          }
          catch(Exception e){
        	  e.printStackTrace();
          }%>
          
          <% 
          try{
          Connection dbs=Db_Conn.getCon();
          String s="select * from pcourse";
          PreparedStatement ps=dbs.prepareStatement(s);
          ResultSet rs=ps.executeQuery();
          while(rs.next()){
          String c=rs.getString("coursename");
              	String p=rs.getString("project");
              	String f=rs.getString("fees");
              	String du=rs.getString("duration");
              	String desc=rs.getString("description");%>
        	 <div class="col-xl-4 col-md-4 ml-5">
            <div class="post-item position-relative h-100" data-aos="fade-up" data-aos-delay="100">

              <div class="post-img position-relative overflow-hidden">
                <img src="assets/img/SymbolPython1.jpg" class="img-fluid" style="border:2px solid black; height:19rem" alt="">
              </div>

              <div class="post-content d-flex flex-column">

                <h3 class="post-title" style="text-align:center"><%=c %></h3>

                <p style="text-align:justify;"><%=desc %>
                 </p>
                 <br/><h5 style="text-align:left;">Duration:<%=du%></h5>
              <h5 style="text-align:left;">Charge:<%=f %></h5>
                 
                </div></div>
              </div>

            </div>
          </div><!-- End post item -->
        	<% 
          }
          }catch(Exception e){
          e.printStackTrace();}%>
              
    
    </section><!-- /Recent Posts Section -->






     <!-- Services Section -->
    <section id="services" class="services section">

      <!-- Section Title -->
      <div class="container section-title mt-5" data-aos="fade-up">
        <p>Other Courses<br></p>
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
    <%@include file="Footer.jsp" %>
</body>
</html>