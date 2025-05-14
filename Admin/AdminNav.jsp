<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<style>
body{
margin:0;
overflow-x:hidden;}
.sidenav{
margin-top:45px;
height:100%;
width:200px;
position:fixed;
z-index:1;
top:0;
left:0;
font-size:25px;
background-color:#1e3a8a;
overflow-x:hidden;
color:white;
}
.sidenav a{
padding:6px 8px 6px 16px;
text-decoration:none;
font-size:20px;
color:white;
display:block;
}
.sidenav a:hover{
color:#f1f1f1;}
.main{
margin-left:200px;
padding:0px 10px;}
#navbarid{
height:30px;}
@media screen and (max-height:450px){
.sidenav{
padding-top:15px;
}
.sidenav a{
font-size:18px;}}</style>
</head>
<body>
<div class="sidenav">
<a href="C.jsp">Autocad</a><br>
<a href="Mern.jsp">Mern Stack</a><br>
<a href="Java.jsp">Java</a><br>
<a href="Python.jsp">Python</a><br>
<a href="Cyber.jsp">Cyber Security</a><br>
<a href="Digital.jsp">Digital Marketing</a><br>
<a href="DataA.jsp">Data Analytics</a><br>
<a href="AWS.jsp">AWS</a><br>
<div class="main">
<div class="navbar navbar-expand-sm navbar-dark bg-info fixed-top">
<div class="container">
<div class="collase navbar-collapse" id="navbarid">
<ul class="navbar-nav text-center ml-auto"></ul>
<a href="Trainer.jsp">Trainer</a>
<ul class="navbar-nav ml-auto ml-auto ml-md-0">
<a href="AdminContact.jsp">Contact</a>
<a href="AdminSignup.jsp">Signup</a>
<a href="AdminRegistration.jsp">Registration</a>
<li class="nav-item dropdown no-arrow">
<a href="Logout.jsp">Logout</a></li></ul></div></div></div></div></div>
<a href="AdminContact.jsp">Contact</a>
<script src="../js/jquery.js"></script>
<script src="../js/bootstrap.min.js"> </script>

</body>
</html>