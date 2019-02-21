package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controllers.EventController;
import models.Events;


@WebServlet("/EventInsert")
public class EventInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EventInsert() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		try {
			EventInsert(request, response);
		} catch(Exception ex) {
			throw new ServletException();
		}
	}

	private void EventInsert(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("*************************");
		Events sh = new Events(request.getParameter("eName"), request.getParameter("meetType"), request.getParameter("gType"), Integer.parseInt(request.getParameter("maxNo")));
		
		//System.out.println(request.getIntHeader("eId"));
		System.out.println(request.getParameter("eName"));
		System.out.println(request.getParameter("meetType"));
		System.out.println(request.getParameter("gType"));
		System.out.println(request.getParameter("maxNo"));
		
		EventController Econ = new EventController();
		Econ.EventInsert(sh);
		
		try {
			request.getRequestDispatcher("/EventIndex.jsp").forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
