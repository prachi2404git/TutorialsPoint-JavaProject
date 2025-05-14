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
@WebServlet("/SignupAction")
public class SignupAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignupAction() {
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
		String password=request.getParameter("password");
		String phone=request.getParameter("phone");
		String city=request.getParameter("city");
		String course=request.getParameter("course");
		String branch=request.getParameter("branch");
		String address=request.getParameter("address");
		String pincode=request.getParameter("pincode");
		String state=request.getParameter("state");
		int i=0;
		try {
			Connection conn=Db_Conn.getCon();
			PreparedStatement ps=conn.prepareStatement("insert into register(name,email,course,branch,phone,city,address,pincode,state,password)values(?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, course);
			ps.setString(4, branch);
			ps.setString(5, phone);
			ps.setString(6, city);
			ps.setString(7, address);
			ps.setString(8, pincode);
			ps.setString(9, state);
			ps.setString(10, password);
			i=ps.executeUpdate();
			if(i>0) {
				response.sendRedirect("Login.jsp");
			}else {
				response.sendRedirect("Signup.jsp");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
				}

}
