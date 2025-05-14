<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trainer Data</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
<%@include file="AdminNav.jsp" %>
<div class="container">
<div class="row offset-4" style="margin-top:9rem; ">
<div class="col-6">
<form action="FileUploadServlet" method="post">
<table width="400px" align="center" border=2>
<tr>
<td align="center" colspan="2">Trainer Details</td>
</tr>
<tr>
<td>Name</td>
<td><input type="text" name="name" class="form-control"></td>
</tr>
<tr>
<td>Designation</td>
<td><input type="text" name="dsg" class="form-control"></td>
</tr>
<tr>
<td>Experience</td>
<td><textarea row="4" name="exp" class="form-control"></textarea></td>
</tr>
<tr>
<td>Image</td>
<td><input type="file" name="file" class="form-control"></td>
</tr>
<tr>
<td><button type="submit" class="btn btn-primary">Submit</button></td>
</tr>

</table></form></div></div></div>
</body>
</html>