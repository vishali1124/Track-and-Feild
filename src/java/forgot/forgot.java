/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package forgot;

import java.sql.*;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/forgot")
public class forgot extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	
	
	
    
    public forgot() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		PrintWriter out = response.getWriter();
		
		try {
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field", "root", "");
			
				
			String email = request.getParameter("email");
			String pass = request.getParameter("pass");
		

		String query="UPDATE userlogin SET password= '"+pass+ "' where email = '"+email+ "'";
		
		

		Statement stmt = conn.createStatement();
	 	int result = stmt.executeUpdate(query);
	 	
	 	if (result > 0)
	 		response.sendRedirect("home.jsp");
	 	else 
	 		System.out.println("problem occured");
		}
		
		catch(Exception e){
			
			response.sendRedirect("viewprofile.jsp");
		}
		
	}

}