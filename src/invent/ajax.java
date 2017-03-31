package invent;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




public class ajax extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public ajax() {
        super();
       
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory", "root", "2309");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from inventory_table");
			out.println("<html><head></head>");
			out.println("<body>");
			out.println("<table>");
			
			
			while(rs.next())
			
			out.println("<tr>"
					+"<td>"+rs.getString("NO")+"</td>"+"<td>"+rs.getString("ITEM_NAME")+"</td>"
			+"<td>"+rs.getString("CUST_NAME")+"</td>"+"<td>"+rs.getString("DATE")+"</td>"+
			"<td>"+rs.getString("PCS")+"</td>"+"<td>"+rs.getString("PRICE")+"</td>"
			+"<td>"+rs.getString("REMAIN")+"</td>"+"</tr>");	
				
		
			out.println("</table>");
			out.println("</body>");
			out.println("</html>");

		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}




