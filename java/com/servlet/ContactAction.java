package com.servlet;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Conn.Db_Conn;

/**
 * Servlet implementation class SignupAction
 */
@WebServlet("/ContactAction")
public class ContactAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		response.setContentType("text/html");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String course=request.getParameter("course");
		String message=request.getParameter("message");
		int i=0;
		try {
			Connection conn=Db_Conn.getCon();
			String in="insert into contact(name,email,course,message)values(?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(in);
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, course);
			ps.setString(4, message);
			i=ps.executeUpdate();
			if(i>0) {
				response.sendRedirect("index.jsp");
			}else {
				RequestDispatcher rd=request.getRequestDispatcher("Contact.jsp");
				rd.include(request, response);
			}
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
}
