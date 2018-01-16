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
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
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
		int i;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/organiccdb","root","241m1e2r3t4");
		
			String user = request.getParameter("username");    
		    String pwd = request.getParameter("password");
		    String pwd2 = request.getParameter("password2");
		
		    stmt = con.prepareStatement("SELECT * FROM users WHERE username='" + user +"'");
            rs = stmt.executeQuery();
            
            boolean userExists = rs.next();
            if (userExists){
                String message = "Username already exists"; 
                response.sendRedirect("register.jsp?message=" + URLEncoder.encode(message, "UTF-8"));
            }
		    
		    if(pwd.equals(pwd2)){
	
	
				stmt = con.prepareStatement("INSERT INTO users(username, password) values ('" + user + "','" + pwd + "')");
	
				i = stmt.executeUpdate();
				
				if(i>0){
				
					session.setAttribute("loginUser", user);
						
					response.sendRedirect("index.jsp");
				
				}else{
					
					String message = "Something has gone wrong!";
					response.sendRedirect("register.jsp?message=" + URLEncoder.encode(message, "UTF-8"));
				}
			
		    }else{
		    	String message = "Passwords do not match!";
		    	response.sendRedirect("register.jsp?message=" + URLEncoder.encode(message, "UTF-8"));
		    	
		    }
			
			}catch (Exception e) {
				System.out.println(e.getMessage());
			}
		
		
	}
		
}
