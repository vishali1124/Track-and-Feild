package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import controllers.ParticipantController;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Participants;

@WebServlet("/ParticipantSUpdate")
public class ParticipantSUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public ParticipantSUpdate() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		try {
			ParticipantUpdate(request,response);
			
			} catch (Exception ex) {
				throw new ServletException();
			}
	}

	private void ParticipantUpdate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		Participants sh = new Participants(request.getParameter("StudentID"), request.getParameter("SportsID"), request.getParameter("PartName"), request.getParameter("Hundred"), request.getParameter("Twoh"), request.getParameter("Highj"), request.getParameter("Longj") , request.getParameter("Eight"));
		sh.setStudentID(request.getParameter("StudentID"));
		sh.setSportsID(request.getParameter("SportsID"));
		sh.setPartName(request.getParameter("PartName"));
		sh.setHundred(request.getParameter("Hundred"));
		sh.setTwoh(request.getParameter("Twoh"));
		sh.setHighj(request.getParameter("Highj"));
		sh.setLongj(request.getParameter("Longj"));
		sh.setEight(request.getParameter("Eight"));
//		sh.setCost_per_unit(Float.parseFloat("Cost_per_unit"));
		ParticipantController pc = new ParticipantController();
		
		sh.getStudentID();
		try {
			if (pc.ParticipantUpdate(sh)) {
				request.getRequestDispatcher("/SuccessU.jsp").forward(request,response);
			}
			else {
				out.println("not updated");
			}
		} catch(ServletException e) {
			e.printStackTrace();
		} catch(IOException e) {
			request.getRequestDispatcher("/ErrorPage.jsp").forward(request, response);
			e.printStackTrace();
		}
	
		
	}

}
