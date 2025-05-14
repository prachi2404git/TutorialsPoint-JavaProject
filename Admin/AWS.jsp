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
<title>AWS</title>
</head>
<body>
<div class="row">
<div class="col-sm-2">
<%@ include file="AdminNav.jsp" %></div>
<div class="col-sm-10">
<form action="Aaction.jsp">
<div class="offset-lg-3 col-lg-6 mt-6 ">
<div class="card" style="margin-top:25px; margin-left:0px;">
<div class="container mt-1">
<div class="card-header">
<h2 class="text-center">AWS</h2></div>
<div class="card-body">
<div class="row">
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Course Id:</label>
    <input type="text" class="form-control" id="inputEmail4" name="id">
  </div>
   <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Course Name:</label>
    <input type="text" class="form-control" id="inputEmail4" name="cname">
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
 <button type="submit" class="btn btn-primary">Submit</button>
</div>
</div>
</form>


<div class="container-fluid mt-2">
<h5 class="text-center bg-primary text-light py-1">Course Data</h5>
<table class="table table-borderd table-hover">
<thead class="bg-primary text-dark">
<tr>
<th>Course Id</th>
<th>Course Name</th>
<th>Project</th>
<th>Fees</th>
<th>Duration</th>
<th>Description</th>
<th>Action</th>
</tr>
</thead>
<tbody>
<%
try{
Connection dbs=Db_Conn.getCon();
String q="select * from acourse";
PreparedStatement ps=dbs.prepareStatement(q);
ResultSet rs=ps.executeQuery();
while(rs.next()){
	String i=rs.getString("id");
	String c=rs.getString("coursename");
	String p=rs.getString("project");
	String f=rs.getString("fees");
	String du=rs.getString("duration");
	String desc=rs.getString("description");
	%>
	<tr>
	<td><%=i %></td>
	<td><%=c %></td>
	<td><%=p %></td>
	<td><%=f %></td>
	<td><%=du %></td>
	<td><%=desc %></td>
	<td>
	<a type="button" href="UpdateA.jsp?id=<%=i %>" class="btn btn-warning">Update</a>
	<a type="button" href="DeleteA.jsp?id=<%=i %>" class="btn btn-danger btn-sm">Delete</a>
	</td>
	</tr>
	<%
}}catch(Exception e){
	e.printStackTrace();
}
%>
</tbody>
</table>
</div>
</div>
</div>
</body>
</html>