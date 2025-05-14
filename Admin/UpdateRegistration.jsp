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
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
<%
String email=request.getParameter("email");
try{
Connection conn=Db_Conn.getCon();
String s="select * from registration where email=?";
PreparedStatement ps=conn.prepareStatement(s);
ps.setString(1,email);
ResultSet rs=ps.executeQuery();
while(rs.next()){
	%>
	<div class="row">
<div class="container">
<div class="offset-lg-3 col-lg-6 mt-3">
<div class="card" style="margin-top:100px">
<h3  style="color:blue;" >Online Registration Form</h3>
<p>Register online today and take the first step towards success!</p>
<div class="card-body">
<form class="row g-3" action="UpdateRegisterAction.jsp" method="post">
<div class="row">
  <div class="col-md-12">
    <label for="inputEmail4" class="form-label">Name:</label>
    <input type="text" class="form-control" name="name" value=<%=rs.getString("name") %>>
  </div>
  </div>
  <div class="row">
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">Email:</label>
    <input type="email" class="form-control"  name="email" value=<%=rs.getString("email") %>>
  </div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">Phone No:</label>
    <input type="text" class="form-control"  name="phone" value=<%=rs.getString("phone") %>>
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
    <input type="text" class="form-control"  name="city" value=<%=rs.getString("city") %>>
  </div>
 <div class="col-md-6">
  <label for="inputEmail4" class="form-label">Country:</label>
    <input type="text" class="form-control"  name="country" value=<%=rs.getString("country") %>>
 </div></div>
 <div class="row">
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Zip Code:</label>
    <input type="text" class="form-control"  name="zip" value=<%=rs.getString("zip") %>>
  </div>
 <div class="col-md-6">
  <label for="inputEmail4" class="form-label">Amount:</label>
    <input type="text" class="form-control"  name="amount" value=<%=rs.getString("amount") %>>
 </div></div>
 <div class="card-footer">
    <button type="submit" class="btn btn-primary text-light">Update</button>
   </div></form></div></div>
</div>
</div>
</div>
          <%
}}catch(Exception e){
	e.printStackTrace();
}
%>

</body>
</html>