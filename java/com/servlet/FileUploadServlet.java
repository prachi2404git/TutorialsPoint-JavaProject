package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class FileUploadServlet
 */
@WebServlet("/FileUploadServlet")
@MultipartConfig(
	    fileSizeThreshold = 1024 * 1024 * 2,  // 2MB
	    maxFileSize = 1024 * 1024 * 10,       // 10MB
	    maxRequestSize = 1024 * 1024 * 50     // 50MB
	)
public class FileUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public static final String UPLOAD_DIR = "images";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FileUploadServlet() {
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
		response.setContentType("text/html;charset=UTF-8");

        String name = request.getParameter("name");
        String dsg = request.getParameter("dsg");
        String exp = request.getParameter("exp");

        Part part = request.getPart("file");
        String originalFileName = extractFileName(part);
        String contentType = part.getContentType();

        // Allow only image files
        if (!contentType.startsWith("image/")) {
            response.getWriter().println("Error: Only image files are allowed.");
            return;
        }

        // Generate unique file name
        String fileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
        String newFileName = System.currentTimeMillis() + fileExtension;

        // Build upload path
        String applicationPath = getServletContext().getRealPath("");
        String uploadPath = applicationPath + File.separator + UPLOAD_DIR;

        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdirs();
        }

        String fullSavePath = uploadPath + File.separator + newFileName;
        part.write(fullSavePath);  // Save file to disk

        String dbFilePath = UPLOAD_DIR + File.separator + newFileName;

        // Save metadata to DB
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tutorial", "root", "mysql");

            PreparedStatement pst = con.prepareStatement(
                "INSERT INTO trainer(name, dsg, exp, filename, path) VALUES (?, ?, ?, ?, ?)"
            );
            pst.setString(1, name);
            pst.setString(2, dsg);
            pst.setString(3, exp);
            pst.setString(4, dbFilePath);
            pst.setString(5, fullSavePath);

            pst.executeUpdate();
            con.close();

            // Redirect to view page
            response.sendRedirect("admin/View-Trainers.jsp");

        } catch (Exception e) {
            response.getWriter().println("Error: " + e.getMessage());
            e.printStackTrace();
        }
    }

    // Extract filename from HTTP header
    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        for (String token : contentDisp.split(";")) {
            if (token.trim().startsWith("filename")) {
                return token.substring(token.indexOf("=") + 2, token.length() - 1);
            }
        }
        return "";
    }
}

