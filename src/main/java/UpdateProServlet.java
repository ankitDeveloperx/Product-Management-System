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

@WebServlet(urlPatterns = "/update", loadOnStartup = 0)
public class UpdateProServlet extends HttpServlet {
	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		String field = req.getParameter("field");
		String newValue = req.getParameter("newValue");
		String conditionField = req.getParameter("conditionField");
		String conditionValue = req.getParameter("conditionValue");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flipkart", "root", "Ankit@143");
			
			PreparedStatement ps = con.prepareStatement("UPDATE product SET " + field + " = ? WHERE "+conditionField+" = ?");
			
	        ps.setString(1, newValue); 
			ps.setString(2, conditionValue);
			
			int result = ps.executeUpdate();
            System.out.println(result + " : "+field+" Updated.");
            
			ps.close();
            con.close();
            
            RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp");
            dispatcher.forward(req, res);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		catch (NumberFormatException e) {
            System.out.println("Invalid number format: " + e.getMessage());
        }
}
}