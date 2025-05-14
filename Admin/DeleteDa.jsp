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
	Connection c=Db_Conn.getCon();
	String d="delete from dacourse where id=?";
	PreparedStatement ps=c.prepareStatement(d);
	ps.setString(1,id);
	i=ps.executeUpdate();
}catch(Exception e){
	e.printStackTrace();
}
	if(i>0){
		response.sendRedirect("DataA.jsp");
	}else{
		RequestDispatcher rd=request.getRequestDispatcher("DataA.jsp");
		rd.include(request, response);
	}
	%>
</body>
</html>