package com.ecommerce;

import java.io.IOException;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class loginAuthanticate
 */
@WebServlet("/loginAuthanticate")
public class LoginAuthenticate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginAuthenticate() {
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
		
		HttpSession session = request.getSession(true);
		
		Connection con = null;

		PreparedStatement stmt = null;
		
		ResultSet rs;
		
		try {
			
		
			String username = request.getParameter("username");    
		    String pwd = request.getParameter("password");
		    

		    Class.forName("com.mysql.jdbc.Driver");

			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/organiccdb","root","241m1e2r3t4");

			stmt = con.prepareStatement("select * from users where username='" + username + "' and password ='" + pwd + "'");

			rs = stmt.executeQuery();
			
			if (rs.next()) {
			
				session.setAttribute("loginUser", username);
					
				response.sendRedirect("index.jsp");
			
			} else {
				
		        	String message = "Invalid password/username combination!";
		        	response.sendRedirect("login.jsp?message=" + URLEncoder.encode(message, "UTF-8"));
		        	
		    }
			
			}catch (Exception e) {
				System.out.println(e.getMessage());
			}
		
		
		}
		
	}


