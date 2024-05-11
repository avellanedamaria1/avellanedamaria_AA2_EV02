import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;



@WebServlet(urlPatterns = {"/NewServlet"})
public class NewServlet extends HttpServlet {
    
    private Object request;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("Mostrar.jsp");
      
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
                   Connection conexion = DataBasesConnection.initializeDatabase();
                   
               PreparedStatement st= conexion.prepareStatement("insert datos personales values(?,?,?)");    
            
            
          st.setString(1, request.getParameter(""));
          st.setString(2, request.getParameter("nombre"));
          st.setString(3, request.getParameter("apellido"));
          
          st.execute();     
       
                  
       PrintWriter out = response.getWriter();
       out.println("<html><body><script> alert('Exito'); location.href='index.jsp'; </script></body></htmlt>");        
  }catch (IOException | ClassNotFoundException | NumberFormatException | SQLException e){
       
        } 
              
    }
      
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
