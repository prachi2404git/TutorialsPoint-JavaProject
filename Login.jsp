<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>
<%@ include file="Navbar.jsp" %>
<div class="offset-lg-3 col-lg-6 mt-5" >
    <div class="row" style="margin-top:150px">
  <div class="offset-lg-3 col-lg-6">  
<form action="LoginAction" method="post">
<div class="card">
<div class="card-header">
<h1 class="text-center">Login Form</h1></div>
<div class="card-body">

<div class="form-group">
<label for="email" class="form-label">Email:</label>
<input type="email" name="email" placeholder="Enter Email" class="form-control" required/>
</div>

<div class="form-group">
<label for="password" class="form-label">Password:</label>
<input type="password" name="password" class="form-control" placeholder="Enter Password" required/>
</div>

<div class="card-footer">
<button type="submit" class="btn btn-primary ">Login</button>
<a href="Forget.html" type="button" class="btn btn-primary">Forget Password</a>
 </div>
 
 </div></div>
</form></div></div></div>
</body>
</html>