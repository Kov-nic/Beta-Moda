/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package loginForm;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/loginForm")
public class Formulario extends HttpServlet {
    private static final String USUARIO_VALIDO = "Nicolas";
    private static final String CONTRASEÑA_VALIDA = "1234";
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("index.html");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String usuario = request.getParameter("usuario");
        String contraseña = request.getParameter("password");
        
        if (USUARIO_VALIDO.equals(usuario) && CONTRASEÑA_VALIDA.equals(contraseña)) {
            request.getRequestDispatcher("Bienvenido.jsp").forward(request, response);
        } else {
            request.setAttribute("error", "Usuario o contraseña inválidos");
            request.getRequestDispatcher("Error.jsp").forward(request, response);
        }
    }
}
