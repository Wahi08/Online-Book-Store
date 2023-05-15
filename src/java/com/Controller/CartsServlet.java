/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.Controller;

import com.DAO.BookDAO;
import com.Model.Cart;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Lenovo
 */
@WebServlet("/cart")
public class CartsServlet extends HttpServlet {
    
    private static final long serailVersionUID = 1L;
    
    public CartsServlet(){
        super();
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {      
        String action = request.getParameter("action");
        
        if(action == null) {
            displayCart(request, response);
        }
        else {
            if (action.equalsIgnoreCase("buy")) {
                buyBook(request, response);
            }
            else if (action.equalsIgnoreCase("remove")) {
                removeBook(request, response);
            }
        }
    }
    
    protected void displayCart(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("Cart.jsp").forward(request, response);
    }
    
    protected void removeBook(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        List<Cart> cart = (List<Cart>) session.getAttribute("cart");
        int index = isExisting(Integer.parseInt(request.getParameter("id")), cart);
        
        cart.remove(index);
        session.setAttribute("cart", cart);
        response.sendRedirect("cart");
    }
    
    protected void buyBook(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        BookDAO bookDao = new BookDAO();
        HttpSession session = request.getSession();
        
        if (session.getAttribute("cart") == null) {
            List<Cart> cart = new ArrayList<>();
            cart.add(new Cart(bookDao.selectBook(Integer.parseInt(request.getParameter("id"))), 1));
            session.setAttribute("cart", cart);
        }
        else{
            List<Cart> cart = (List<Cart>) session.getAttribute("cart");
            int index = isExisting( (Integer.parseInt(request.getParameter("id"))), cart );
            
            if (index == -1) {
                cart.add(new Cart(bookDao.selectBook(Integer.parseInt(request.getParameter("id"))), 1));
            }
            else{
                int quantity = cart.get(index).getQuantity() + 1;
                cart.get(index).setQuantity(quantity);
            }
            session.setAttribute("cart", cart);
        }
        response.sendRedirect("cart");
    }
    
    private int isExisting(int id, List<Cart> cart) {
        for (int i = 0; i < cart.size(); i++) {
            if (cart.get(i).getBook().getId() == id ){
                return i;
            }
        }
        return -1;
    }

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
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}