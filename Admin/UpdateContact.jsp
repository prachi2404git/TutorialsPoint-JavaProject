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
<title>Insert title here</title>
</head>
<body>
<%
String email=request.getParameter("email");
try{
Connection conn=Db_Conn.getCon();
String s="select * from contact where email=?";
PreparedStatement ps=conn.prepareStatement(s);
ps.setString(1,email);
ResultSet rs=ps.executeQuery();
while(rs.next()){
	%>
	<div class="col-lg-6">
            <form action="UpdateContactAction.jsp" method="post">
              <div class="row gy-4">

                <div class="col-md-6">
                  <input type="text" name="name" class="form-control" placeholder="Your Name" value="<%=rs.getString("name")%>" >
                </div>

                <div class="col-md-6 ">
                  <input type="email" class="form-control" name="email" placeholder="Your Email" value="<%=rs.getString("email")%>" >
                </div>

                <div class="col-12">
                  <input type="text" class="form-control" name="course" placeholder="Course" value="<%=rs.getString("course")%>" >
                </div>

                <div class="col-12">
                  <textarea class="form-control" name="message" rows="6" placeholder="Message" ></textarea>
                </div>


                  <button type="submit">Update</button>
                  </div>
            </form>
          </div><!-- End Contact Form -->
          <%
}}catch(Exception e){
	e.printStackTrace();
}
%>

</body>
</html>