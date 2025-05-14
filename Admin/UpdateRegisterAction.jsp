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
</head>
<body>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String course=request.getParameter("course");
String branch=request.getParameter("branch");
String address=request.getParameter("address");
String city=request.getParameter("city");
String country=request.getParameter("country");
String zip=request.getParameter("zip");
String amount=request.getParameter("amount");
int i=0;
try{
	Connection conn=Db_Conn.getCon();
	String u="update registration set name=?,phone=?,course=?,branch=?,address=?,city=?,country=?,zip=?,amount=? where email=? ";
	PreparedStatement ps=conn.prepareStatement(u);
	ps.setString(1,name);
	ps.setString(2,phone);
	ps.setString(3,course);
	ps.setString(4,branch);
	ps.setString(5,address);
	ps.setString(6,city);
	ps.setString(7,country);
	ps.setString(8,zip);
	ps.setString(9,amount);
	ps.setString(10,email);
	i=ps.executeUpdate();
}catch(Exception e){
	e.printStackTrace();
}
	if(i>0){
		response.sendRedirect("AdminRegistration.jsp");
	}else{
		response.sendRedirect("UpdateRegistration.jsp");
	}
%>
</body>
</html>