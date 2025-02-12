import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet(urlPatterns="/delFromView" , loadOnStartup = 0)
public class DelFromViewPageServlet extends HttpServlet {

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		
	String productBatch = req.getParameter("product_batch");
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flipkart" , "root" , "Ankit@143" );
		PreparedStatement ps = con.prepareStatement("delete from product where ProductBatchNo = ?");

		ps.setString(1, productBatch);

		
		int row = ps.executeUpdate();
		System.out.println(row + "row Deleted");
		ps. close();
		con.close();
	} 
	
	catch (Exception e) {
		e.printStackTrace();
	}
	
	
	RequestDispatcher rd = req.getRequestDispatcher("allProducts");
	 rd.forward(req, res);

}
}