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
<title>Admin Registration</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
<div class="container-fluid mt-2">
<h4 class="text-center bg-primary text-light py-1">Registration Data </h4>
<table class="table table-borderd table-hover">
<thead class="bg-primary text-dark">
<tr>
<th>Name</th>
<th>Email</th>
<th>Phone</th>
<th>Course</th>
<th>Branch</th>
<th>Address</th>
<th>City</th>
<th>Country</th>
<th>Zip</th>
<th>Amount</th>
<th>Action</th>
</tr>
</thead>
<tbody>
<%
try{
Connection dbs=Db_Conn.getCon();
String q="select * from registration";
PreparedStatement ps=dbs.prepareStatement(q);
ResultSet rs=ps.executeQuery();
while(rs.next()){
	String n=rs.getString("name");
	String e=rs.getString("email");
	String ph=rs.getString("phone");
	String c=rs.getString("course");
	String b=rs.getString("branch");
	String a=rs.getString("address");
	String ci=rs.getString("city");
	String co=rs.getString("country");
	String z=rs.getString("zip");
	String am=rs.getString("amount");
	
	%>
	<tr>
	<td><%=n %></td>
	<td><%=e %></td>
	<td><%=ph %></td>
	<td><%=c%></td>
	<td><%=b %></td>
	<td><%=a %></td>
	<td><%=ci %></td>
	<td><%=co%></td>
	<td><%=z%></td>
	<td><%=am %></td>
	<td>
	<a type="button" href="UpdateRegistration.jsp?email=<%=e%>" class="btn btn-warning">Update</a>
	<a type="button" href="DeleteRegistration.jsp?email=<%=e%>" class="btn btn-danger btn-sm">Delete</a>
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