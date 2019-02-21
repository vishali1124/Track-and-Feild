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
@WebServlet(urlPatterns = {"/expenseServlet"})
public class expenseServlet extends HttpServlet {



   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        
         double expenses = Double.parseDouble(request.getParameter("expenses"));

          Insert n = new Insert();     
        
        n.addExpenses(expenses);
       double b = n.calBalance();
       n.addBalance(b);
        

        request.getRequestDispatcher("/expenses.jsp").forward(request, response);
         
         
            }

}


