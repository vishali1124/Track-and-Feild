package sport;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author User
 */
@WebServlet(urlPatterns = {"/allowance"})
public class allowance extends HttpServlet {

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        double balance = Double.parseDouble(request.getParameter("balance"));

        if (balance <= 20000) {

            String m = "Sorry..You don't have enough money to allocate allowances for meet managers.";
            request.setAttribute("m", m);
            request.getRequestDispatcher("/allowance.jsp").forward(request, response);

        } else {

         
       
            
            
            
            request.setAttribute("balance", balance);
            
            request.getRequestDispatcher("/allowance.jsp").forward(request, response);

        }

    }

}
