package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import Conn.Db_Conn;

/**
 * Servlet implementation class ForgetAction
 */
@WebServlet("/ForgetAction")
public class ForgetAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgetAction() {
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
		String Npassword= request.getParameter("password1");
		String Cpassword=request.getParameter("password2");
		int i=0;
		if(Npassword.equals(Cpassword)) {
		try {
			Connection conn=Db_Conn.getCon();
			PreparedStatement ps=conn.prepareStatement("update register set password='"+Npassword+"' where email='"+email+"'");
			i=ps.executeUpdate();
			if(i>0) {
				response.sendRedirect("Login.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}}else {
			response.sendRedirect("Forget.jsp");
		}
	}
	

}
