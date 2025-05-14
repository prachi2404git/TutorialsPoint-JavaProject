package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Conn.Db_Conn;

/**
 * Servlet implementation class LoginAction
 */
@WebServlet("/LoginAction")
public class LoginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginAction() {
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
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		if("admin24@gmail.com".equals(email) && "admin".equals(password)) {
			HttpSession session=request.getSession();
			session.setAttribute("email",email);
			response.sendRedirect("Admin/AdminHome.jsp");
		}else {
			int i=0;
			try {
				Connection conn=Db_Conn.getCon();
				PreparedStatement ps=conn.prepareStatement("select * from register where email='"+email+"' and password='"+password+"'");
				ResultSet rs=ps.executeQuery();
				while(rs.next()) {
					response.sendRedirect("index.jsp");
				}
				if(i==0) {
					response.sendRedirect("Login.jsp");
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	}

}
