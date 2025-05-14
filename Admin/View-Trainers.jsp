<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Trainer Image Gallery</title>
</head>
<body>
    <h2>Uploaded Trainer Images</h2>
    <%
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tutorial", "root", "mysql");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM trainer");
    %>
    <table style="width:100%" border="2">
        <tr>
            <th>Image</th>
            <th>Path</th>
        </tr>
        <%
            while (rs.next()) {
            	 String name = rs.getString("name");
            	 String designation = rs.getString("dsg");
            	 String exp = rs.getString("exp");
                String filename = rs.getString("filename");
                String path = rs.getString("path");
        %>
        <tr>
        <td><%=name %></td>
        <td><%=designation %></td>
        <td><%=exp %></td>
            <td><img src="<%=request.getContextPath() + "/" + filename%>" width="150" height="200"/></td>
            <td><%=path%></td>
        </tr>
        <% } %>
    </table>
    <%
        } catch (Exception e) {
            out.println("Error: " + e.getMessage());
        }
    %>
</body>
</html>
