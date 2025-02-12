import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet(urlPatterns = "/delete", loadOnStartup = 0)
public class DeleteProServlet extends HttpServlet {
    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
        String conditionField = req.getParameter("conditionField"); 
        String conditionValue = req.getParameter("conditionValue"); 

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flipkart", "root", "Ankit@143");

            PreparedStatement ps = con.prepareStatement("DELETE FROM product WHERE " + conditionField + " = ?");
            ps.setString(1, conditionValue);

            int result = ps.executeUpdate();
            System.out.println(result + " : Product with "+conditionField+" = "+conditionValue+" deleted.");

            ps.close();
            con.close();
            
            RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp");
            dispatcher.forward(req, res);

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}