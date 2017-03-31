package invent;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class login
 */
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }
   
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String e=request.getParameter("password");
		
		  try{
			 
			  
			  Class.forName("com.mysql.jdbc.Driver"); 
		        
	          Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory", "root", "2309");
		 Statement stmt= conn.createStatement();
		 
		 ResultSet rs=stmt.executeQuery("SELECT * from login_table where password='"+e+"'");
		 if(rs.next())
			 
			 response.sendRedirect("inventory.jsp");
		 else
			 response.sendRedirect("index2.jsp");
		 
		 
		  }catch(Exception E){ 
	        	E.printStackTrace();
	        	
	        	
	        	} 
	}
}


