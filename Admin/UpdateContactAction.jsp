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
String course=request.getParameter("course");
String message=request.getParameter("message");
int i=0;
try{
	Connection conn=Db_Conn.getCon();
	String u="update contact set name=?,course=?,message=? where email=? ";
	PreparedStatement ps=conn.prepareStatement(u);
	ps.setString(1,name);
	ps.setString(2,course);
	ps.setString(3,message);
	ps.setString(4,email);
	i=ps.executeUpdate();
}catch(Exception e){
	e.printStackTrace();
}
	if(i>0){
		response.sendRedirect("AdminContact.jsp");
	}else{
		response.sendRedirect("UpdateContact.jsp");
	}
%>
</body>
</html>