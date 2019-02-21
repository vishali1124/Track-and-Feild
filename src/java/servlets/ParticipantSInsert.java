package servlets;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controllers.ParticipantController;
import dbConnection.DBConnector;
import models.Participants;

@WebServlet("/ParticipantSInsert")
public class ParticipantSInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public ParticipantSInsert() {

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	//HttpServlet#doPost
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
		try {
			ParticipantInsert(request,response);
			
			} catch (Exception ex) {
				throw new ServletException();
			}
	}

	private void ParticipantInsert(HttpServletRequest request, HttpServletResponse response) {

		// TODO Auto-generated method stub
		System.out.println("**************************");
		try {
			ArrayList<String> participants = new ArrayList<String>();
			Participants sh = new Participants(request.getParameter("StudentID"), request.getParameter("SportsID"), request.getParameter("PartName"), request.getParameter("Hundred"), request.getParameter("Twoh"), request.getParameter("Highj"), request.getParameter("Longj") , request.getParameter("Eight"));
	//		sh.setStudentID(request.getParameter("ship_ID"));		
	//		sh.setSportsID(request.getParameter("ship_PartName"));
	//		sh.setPartName(Float.parseFloat("capacity"));
			DBConnector dc = new DBConnector();
			Connection con = dc.getConnection();
			Statement getColumnNameStmt = con.createStatement();
			String getColumnNames = "SELECT * FROM participant";
			ResultSet columnNames = getColumnNameStmt.executeQuery(getColumnNames);
			ResultSetMetaData participantMetaData = columnNames.getMetaData();
			int columnCount = participantMetaData.getColumnCount();
			
			for (int i = 1; i <= columnCount; i++) {
				participants.add(request.getParameter(participantMetaData.getColumnName(i)));
			}
			
			System.out.println(request.getParameter("StudentID"));
			System.out.println(request.getParameter("SportsID"));
			System.out.println(request.getParameter("PartName"));
			System.out.println(request.getParameter("Hundred"));
			System.out.println(request.getParameter("Twoh"));
			System.out.println(request.getParameter("Highj"));
			System.out.println(request.getParameter("Longj"));
			System.out.println(request.getParameter("Eight"));
			System.out.println("**************************");
			
			ParticipantController shCon = new ParticipantController();
			shCon.ParticipantInsert(participants);
		
			request.getRequestDispatcher("/SuccessI.jsp").forward(request,response);
		} catch(ServletException e) {
			e.printStackTrace();
		} catch(IOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
	}

}
