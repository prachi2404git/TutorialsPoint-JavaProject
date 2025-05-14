<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online Registration Form</title>
<link rel="stylesheet" href="css/bootstrap.css">
</head>
<style>
body{
margin:0;
overflow-x:hidden;
}</style>
<body>
<%@include file="Navbar.jsp" %>
<div class="row">
<div class="offset-lg-3 col-lg-6 mt-3">
<div class="card" style="margin-top:95px">
<h3  style="color:blue;" >Online Registration Form</h3>
<p>Register online today and take the first step towards success!</p>
<div class="card-body">
<form class="row g-3" action="RegisterAction" method="post">
<div class="row">
  <div class="col-md-12">
    <label for="inputEmail4" class="form-label">Name:</label>
    <input type="text" class="form-control" name="name" placeholder="Enter your name">
  </div>
  </div>
  <div class="row">
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">Email:</label>
    <input type="email" class="form-control"  name="email" placeholder="Enter email address">
  </div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">Phone No:</label>
    <input type="text" class="form-control"  name="phone" placeholder="Enter phone number">
  </div></div>
   <div class="row">
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Course:</label>
    <select id="inputState" class="form-select" name="course">
      <option selected>Choose Course</option>
      <option>Choose Course</option>
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
    <label for="inputEmail4" class="form-label">City:</label>
    <input type="text" class="form-control"  name="city" placeholder="Enter city">
  </div>
 <div class="col-md-6">
  <label for="inputEmail4" class="form-label">Country:</label>
    <input type="text" class="form-control"  name="country" placeholder="Enter country">
 </div></div>
 <div class="row">
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Zip Code:</label>
    <input type="text" class="form-control"  name="zip" placeholder="Enter zipcode">
  </div>
 <div class="col-md-6">
  <label for="inputEmail4" class="form-label">Amount:</label>
    <input type="text" class="form-control"  name="amount" placeholder="Enter amount">
 </div></div>
 <div class="card-footer">
    <button type="submit" class="btn btn-primary text-light">Submit</button>
   </div></form></div></div>
</div>
</div>
</body>
</html>