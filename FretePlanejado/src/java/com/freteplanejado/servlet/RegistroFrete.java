/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.freteplanejado.servlet;

import com.freteplanejado.data.FreteDAO;
import com.freteplanejado.entity.Frete;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author 43596980895
 */
public class RegistroFrete extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegistroUsuario</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegistroUsuario at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        processRequest(request, response);
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

        HttpSession session = request.getSession(true);

        FreteDAO fd = new FreteDAO();

        String origem = request.getParameter("Origem");
        String destino = request.getParameter("Destino");
        String altura = request.getParameter("Altura");
        String largura = request.getParameter("Largura");
        String profundidade = request.getParameter("Profundidade");
        String peso = request.getParameter("Peso");
        String observacoes = request.getParameter("Observacoes");
        
        float alturaF = 0, larguraF = 0, profundidadeF = 0, pesoF = 0;

        if (origem.equals("")) {
            addError(request, "Campo origem é obrigatório!");
        }
        if (destino.equals("")) {
            addError(request, "Campo destino é obrigatório!");
        }
        if (!altura.equals("")) {
            alturaF = Float.valueOf(altura);
        }
        if (!largura.equals("")) {
            larguraF = Float.valueOf(largura);
        }
        if (!profundidade.equals("")) {
            profundidadeF = Float.valueOf(profundidade);
        }
        if (!peso.equals("")) {
            pesoF = Float.valueOf(peso);
        }
        if (session.getAttribute("message") == null) {
            fd.create(new Frete(origem, destino, alturaF, larguraF, profundidadeF, pesoF, observacoes));

            sendResponse(request, true, "Frete cadastrado com sucesso!");
        }

        response.sendRedirect("/FretePlanejado/Painel");
    }

    public void sendResponse(HttpServletRequest request, boolean success, String msg) {
        HttpSession session = request.getSession(true);

        session.setAttribute("success", success);
        session.setAttribute("message", msg);
    }

    public void addError(HttpServletRequest request, String msg) {
        HttpSession session = request.getSession(true);

        session.setAttribute("success", false);
        String message = (String) session.getAttribute("message");
        if (message == null) {
            message = msg;
        } else {
            message = message + "@" + msg;
        }
        session.setAttribute("message", message);
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
