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
<title>Admin Contact</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
<div class="container-fluid mt-2">
<h5 class="text-center bg-primary text-light py-1">Contact Data</h5>
<table class="table table-borderd table-hover">
<thead class="bg-primary text-dark">
<tr>
<th>Name</th>
<th>Email</th>
<th>Course</th>
<th>Message</th>
<th>Action</th>
</tr>
</thead>
<tbody>
<%
try{
Connection dbs=Db_Conn.getCon();
String q="select * from contact";
PreparedStatement ps=dbs.prepareStatement(q);
ResultSet rs=ps.executeQuery();
while(rs.next()){
	String n=rs.getString("name");
	String e=rs.getString("email");
	String c=rs.getString("course");
	String m=rs.getString("message");
	%>
	<tr>
	<td><%=n %></td>
	<td><%=e %></td>
	<td><%=c %></td>
	<td><%=m%></td>
	<td>
	<a type="button" href="UpdateContact.jsp?email=<%=e%>" class="btn btn-warning">Update</a>
	<a type="button" href="DeleteContact.jsp?email=<%=e%>" class="btn btn-danger btn-sm">Delete</a>
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
</body>
</html>