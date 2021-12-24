package controlador;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Recetas;
import modelo.RecetasDAO;

@WebServlet(name = "RecetasController", urlPatterns = {"/RecetasController"})
public class RecetasController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            response.setContentType("text/html;charset=UTF-8");
            request.setCharacterEncoding("UTF-8");
            RecetasDAO recetasDao = new RecetasDAO();
            String accion;
            RequestDispatcher dispatcher =null;
            accion = request.getParameter("accion");
            if(accion == null || accion.isEmpty()){
                dispatcher = request.getRequestDispatcher("Vistas/recetas.jsp");
            }else if(accion.equals("modificar")){
                dispatcher = request.getRequestDispatcher("Vistas/modificar.jsp");
            }else if(accion.equals("actualizar")){
                String nombre = request.getParameter("nombre");
                String tiempo = request.getParameter("tiempo");
                String porciones = request.getParameter("porciones");
                String ingredientes = request.getParameter("ingredientes");
                String preparacion = request.getParameter("preparacion");
                int id = Integer.parseInt(request.getParameter("id"));
                
                Recetas receta = new Recetas(id,nombre,tiempo,porciones,ingredientes,preparacion); 
                recetasDao.actualizarReceta(receta);
                dispatcher = request.getRequestDispatcher("Vistas/recetas.jsp");
            }else if(accion.equals("eliminar")){
                int id = Integer.parseInt(request.getParameter("id"));
                recetasDao.eliminarReceta(id);
                dispatcher = request.getRequestDispatcher("Vistas/recetas.jsp");
            }else if(accion.equals("nuevo")){
                dispatcher = request.getRequestDispatcher("Vistas/nueva.jsp");
            }else if(accion.equals("insert")){
                String nombre = request.getParameter("nombre");
                String tiempo = request.getParameter("tiempo");
                String porciones = request.getParameter("porciones");
                String ingredientes = request.getParameter("ingredientes");
                String preparacion = request.getParameter("preparacion");
                
                Recetas receta = new Recetas(0,nombre,tiempo,porciones,ingredientes,preparacion);
                recetasDao.insertarReceta(receta);
                dispatcher = request.getRequestDispatcher("Vistas/recetas.jsp");
            }else if(accion.equals("ingresar")){
                String usuario = request.getParameter("email");
                String password = request.getParameter("password");
                boolean ingresa = recetasDao.ingresarUsuario(usuario,password);
                if(ingresa){
                    dispatcher = request.getRequestDispatcher("Vistas/recetas.jsp");
                }else{
                    dispatcher = request.getRequestDispatcher("acceder.jsp");
                }
            }
            dispatcher.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            doGet(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
