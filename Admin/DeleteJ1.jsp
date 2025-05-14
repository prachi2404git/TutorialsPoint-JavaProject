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
int i=0;
try{
	Connection conn=Db_Conn.getCon();
	String d="delete from jcourse where id=?";
	PreparedStatement ps=conn.prepareStatement(d);
	ps.setString(1,id);
	i=ps.executeUpdate();
	if(i>0){
		response.sendRedirect("Java.jsp");
	}else{
		RequestDispatcher rd=request.getRequestDispatcher("Java.jsp");
		rd.include(request,response);
	}
}catch(Exception e){
	e.printStackTrace();
}%>
</body>
</html>