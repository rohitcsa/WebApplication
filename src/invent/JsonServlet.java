package invent;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

import org.json.JSONArray;
import org.json.JSONObject;

/**
 * Servlet implementation class JsonServlet
 */
public class JsonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public JsonServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();

		try {

			JSONArray array = new JSONArray();
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory", "root", "2309");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select ITEM_NAME,REMAIN from inventory_table");
			while (rs.next()) {
				JSONObject obj = new JSONObject();

				obj.put("ITEM", rs.getString("ITEM_NAME"));
				obj.put("REMAIN", rs.getString("REMAIN"));
				array.put(obj);

			}

			out.print(array);
		}

		catch (Exception e) {
			e.printStackTrace();
		}
	}
}

















