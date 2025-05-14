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
String email=request.getParameter("email");
int i=0;
try{
	Connection dbs=Db_Conn.getCon();
	String d="delete from contact where email=?";
	PreparedStatement ps=dbs.prepareStatement(d);
	ps.setString(1,email);
	i=ps.executeUpdate();
	if(i>0){
		response.sendRedirect("AdminHome.jsp");
	}else{
		RequestDispatcher rd=request.getRequestDispatcher("UpdateContact.jsp");
		rd.include(request,response);
	}
}catch(Exception e){
	e.printStackTrace();
}%>
</body>
</html>