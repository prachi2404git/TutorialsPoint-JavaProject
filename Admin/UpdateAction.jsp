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
String id=request.getParameter("id");
String coursename=request.getParameter("cname");
String project=request.getParameter("project");
String fees=request.getParameter("fees");
String duration=request.getParameter("duration");
String description=request.getParameter("description");
int i=0;
try{
	Connection conn=Db_Conn.getCon();
	String u="update course set coursename=?,project=?,fees=?,duration=?,description=? where id=? ";
	PreparedStatement ps=conn.prepareStatement(u);
	ps.setString(1,coursename);
	ps.setString(2,project);
	ps.setString(3,fees);
	ps.setString(4,duration);
	ps.setString(5,description);
	ps.setString(6,id);
	i=ps.executeUpdate();
}catch(Exception e){
	e.printStackTrace();
}
	if(i>0){
		response.sendRedirect("C.jsp");
	}else{
		response.sendRedirect("Update.jsp");
	}
%>
</body>
</html>