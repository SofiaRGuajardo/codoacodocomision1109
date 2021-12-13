
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.RecetasDAO;


@WebServlet(name = "RecetasController", urlPatterns = {"/RecetasController"})
public class RecetasController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            RecetasDAO rece = new RecetasDAO();
            String accion;
            RequestDispatcher dispatcher = null;
            accion = request.getParameter("accion");
            if(accion == null || accion.isEmpty()){
                dispatcher = request.getRequestDispatcher("Vistas/recetas.jsp");
            }else if(accion.equals("modificar")){
                dispatcher = request.getRequestDispatcher("Vistas/modificar.jsp");
            }
            dispatcher.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            doGet(request,response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
