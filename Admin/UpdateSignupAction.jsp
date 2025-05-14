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
String password=request.getParameter("password");
String phone=request.getParameter("phone");
String city=request.getParameter("city");
String course=request.getParameter("course");
String branch=request.getParameter("branch");
String address=request.getParameter("address");
String pincode=request.getParameter("pincode");
String state=request.getParameter("state");
int i=0;
try{
	Connection conn=Db_Conn.getCon();
	String u="update register set name=?,password=?,phone=?,city=?,course=?,branch=?,address=?,pincode=?,state=? where email=? ";
	PreparedStatement ps=conn.prepareStatement(u);
	ps.setString(1,name);
	ps.setString(2,password);
	ps.setString(3,phone);
	ps.setString(4,city);
	ps.setString(5,course);
	ps.setString(6,branch);
	ps.setString(7,address);
	ps.setString(8,pincode);
	ps.setString(9,state);
	ps.setString(10,email);
	i=ps.executeUpdate();
}catch(Exception e){
	e.printStackTrace();
}
	if(i>0){
		response.sendRedirect("AdminSignup.jsp");
	}else{
		response.sendRedirect("UpdateSignup.jsp");
	}
%>
</body>
</html>