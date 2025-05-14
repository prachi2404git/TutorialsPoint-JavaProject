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
String id=request.getParameter("id");
try{
	Connection con=Db_Conn.getCon();
	String s="select * from mcourse where id=?";
	PreparedStatement ps=con.prepareStatement(s);
	ps.setString(1,id);
	ResultSet rs=ps.executeQuery();
	while(rs.next()){%>
	<form action="UpdateAction1.jsp">
<div class="offset-lg-3 col-lg-6 mt-6 ">
<div class="card" style="margin-top:25px; margin-left:0px;">
<div class="container mt-1">
<div class="card-header">
<h2 class="text-center">Update Mern Stack</h2></div>
<div class="card-body">
<div class="row">
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Course Id:</label>
    <input type="text" class="form-control" id="inputEmail4" name="id" value="<%=rs.getString("id")%>">
  </div>
   <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Course Name:</label>
    <input type="text" class="form-control" id="inputEmail4" name="cname" value="<%=rs.getString("coursename")%>">
  </div>
   </div>
  <div class="row">
  <div class="form-group col-md-4">
      <label for="inputState">Project:</label>
      <select id="inputState" class="form-control" name="project">
        <option>Mini Project</option>
      <option>Major Project</option>
      </select>
    </div>
  <div class="form-group col-md-4">
      <label for="inputState">fees:</label>
      <select id="inputState" class="form-control" name="fees">
        <option>8000</option>
      <option>12000</option>
      <option>16000</option>
      <option>24000</option>
      <option>30000</option>
      <option>35000</option>
      </select>
    </div>
    <div class="form-group col-md-4">
      <label for="inputState">Duration:</label>
      <select id="inputState" class="form-control" name="duration">
        <option>3 months</option>
      <option>6 months</option>
      <option>8 months</option>
      <option>1 year</option>
      </select>
    </div>
    
   
  </div>
  <div class="row">
  <label for="input" class="form-label">Description:</label>
  <textarea name="description" class="form-control" row="4"></textarea></div>
  </div></div>
 <button type="submit" class="btn btn-primary">Update</button>
</div>
</div>
</form>
	<%	
	}
}catch(Exception e){
	e.printStackTrace();
}%>
</body>
</html>