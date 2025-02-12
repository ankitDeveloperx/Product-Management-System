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

@WebServlet(urlPatterns = "/create", loadOnStartup = 0)
public class CreateServlet extends HttpServlet {
	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		String productBatch = req.getParameter("product_batch");
		String productName = req.getParameter("product_name");
		String productPrice = req.getParameter("product_price");
		String productBrand = req.getParameter("product_brand");
		String productQuantity = req.getParameter("product_quantity");
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flipkart","root","Ankit@143");
			PreparedStatement ps = con.prepareStatement("INSERT INTO product (ProductBatchNo, ProductName, ProductPrice, ProductBrand, ProductQuantity) VALUES (?, ?, ?, ? ,?)");
			ps.setString(1, productBatch);
			ps.setString(2, productName);
            ps.setString(3, productPrice);
            ps.setString(4, productBrand);
            ps.setString(5, productQuantity);
            
            int result = ps.executeUpdate();
            System.out.println(result+" : rows affected.");
            con.close();
            ps.close();
            
            RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp");
            dispatcher.forward(req, res);
            
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
}
