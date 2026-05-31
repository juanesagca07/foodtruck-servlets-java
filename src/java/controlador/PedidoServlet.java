package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "PedidoServlet", urlPatterns = {"/PedidoServlet"})
public class PedidoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        PrintWriter out = response.getWriter();

        out.println("<html>");
        out.println("<body>");
        out.println("<h1>Módulo de pedidos FoodTruck</h1>");
        out.println("<p>El servlet está funcionando mediante método GET.</p>");
        out.println("<a href='index.jsp'>Ir al formulario de pedidos</a>");
        out.println("</body>");
        out.println("</html>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String cliente = request.getParameter("cliente");
        String producto = request.getParameter("producto");
        String total = request.getParameter("total");

        response.setContentType("text/html;charset=UTF-8");

        PrintWriter out = response.getWriter();

        out.println("<html>");
        out.println("<body>");
        out.println("<h1>Pedido registrado correctamente</h1>");
        out.println("<p>Cliente: " + cliente + "</p>");
        out.println("<p>Producto: " + producto + "</p>");
        out.println("<p>Total: $" + total + "</p>");
        out.println("<br>");
        out.println("<a href='index.jsp'>Registrar otro pedido</a>");
        out.println("</body>");
        out.println("</html>");
    }
}