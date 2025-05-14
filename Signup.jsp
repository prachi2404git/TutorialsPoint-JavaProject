<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup</title>
<link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>
<%@ include file="Navbar.jsp"%>
<div class="offset-lg-3 col-lg-6 mt-3">
<div class="card" style="margin-top:100px">
<div class="container">
<h2 class="text-center" style="background-color:#1E90FF; color:black;">Registration Form</h2>
<div class="row">
<div class="col-sm-4">
<img src="assets/img/JavaP1.jpg" style="width:250px; height:510px"/>
</div>
<div class="col-sm-8">
<div class="card-body">
<form class="row g-3" action="SignupAction" method="post">
<div class="row">
  <div class="col-md-12">
    <label for="inputEmail4" class="form-label">Full Name:</label>
    <input type="text" class="form-control" name="name">
  </div>
  </div>
  <div class="row">
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">Email:</label>
    <input type="email" class="form-control"  name="email">
  </div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">Password:</label>
    <input type="password" class="form-control"  name="password">
  </div></div>
  <div class="row">
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Phone No:</label>
    <input type="number" class="form-control"  name="phone">
  </div>
  <div class="col-md-6">
    <label for="inputAddress" class="form-label">City:</label>
    <input type="text" class="form-control"  name="city">
  </div></div>
   <div class="row">
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Course:</label>
    <select id="inputState" class="form-select" name="course">
      <option selected>Choose Course</option>
      <option>Java Full Stack</option>
      <option>Mern Stack</option>
      <option>Python Full Stack</option>
      <option>Cyber Security</option>
      <option>Data Analytics</option>
      <option>Digital Marketing</option>
    </select>
    
  </div>
  <div class="col-md-6">
    <label for="inputAddress" class="form-label">Branch:</label>
    <select id="inputState" class="form-select" name="branch">
      <option selected>Choose Branch</option>
      <option>Noida Sector 16</option>
      <option>Noida Sector 63</option>
      <option>Faridabad</option>
      <option>Gurgaon</option>
      <option>South Extension</option>
      <option>Pitampura</option>
    </select>
  </div></div>
  
  
   <div class="row">
  <label for="address" class="form-label">Address:</label>
  <textarea name="address" class="form-control" row="4"></textarea></div>
  
  <div class="row">
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Pincode:</label>
    <input type="text" class="form-control"  name="pincode">
  </div>
 <div class="col-md-6">
  <label for="inputState" class="form-label">State:</label>
    <select id="inputState" class="form-select" name="state">
      <option selected>Choose State</option>
      <option>UP</option>
      <option>UK</option>
      <option>Haryana</option>
      <option>Himachal</option>
    </select>
 </div></div>
 <div class="card-footer">
    <button type="submit" class="btn btn-primary text-light">Sign in</button>
    <a href="index.jsp" type="button" class="btn btn-primary text-light">Back</a>
   </div></form></div></div>
</div>
</div>
</div>
</div>

</body>
</html>