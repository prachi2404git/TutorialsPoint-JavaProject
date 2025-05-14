<%@page import="Conn.Db_Conn"%>
<%@page import="java.sql.PreparedStatement"%>
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
        String cname=request.getParameter("cname");
		String project=request.getParameter("project");
		String fees=request.getParameter("fees");
		String duration=request.getParameter("duration");
		String description=request.getParameter("description");
		int i=0;
		try {
			Connection c=Db_Conn.getCon();
			String q="insert into acourse(id,coursename,project,fees,duration,description)values(?,?,?,?,?,?)";
			PreparedStatement ps=c.prepareStatement(q);
			ps.setString(1,id);
			ps.setString(2, cname);
			ps.setString(3,project);
			ps.setString(4,fees);
			ps.setString(5,duration);
			ps.setString(6,description);
			
			i=ps.executeUpdate();
			if(i>0) {
				response.sendRedirect("AWS.jsp");
			}else {
				out.print("enter valid input");
				RequestDispatcher rd=request.getRequestDispatcher("AWS.jsp");
				rd.include(request, response);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}%>

</body>
</html>