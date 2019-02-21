package sport;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import sport.Insert;
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
@WebServlet(urlPatterns = {"/search"})
public class search extends HttpServlet {

   
   

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
        
          String id = request.getParameter("id");
         // double balance = Double.parseDouble(request.getParameter("balance"));

          Insert n = new Insert();
         double balance = n.getBalance();
          double all = n.calAllowances(id, balance);
         
          n.addAllowances(id, all);
           double net = n.calNetBalance(balance,all);
           n.addNetBalance(net);
           
           request.setAttribute("id", id);
          request.getRequestDispatcher("/allowance.jsp").forward(request, response);
         

        
    }

 

}
