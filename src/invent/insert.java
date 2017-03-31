package invent;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;
/**
* Servlet implementation class Register
*/
@WebServlet("/register")
public class insert extends HttpServlet {
private static final long serialVersionUID = 1L;

/**
 * @see HttpServlet#HttpServlet()
 */
public insert() {
    super();
    // TODO Auto-generated constructor stub
}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub


            response.setContentType("text/html");  
            
          
            
        
         
            try{
          
             String i = request.getParameter("item"); 
             String c = request.getParameter("cust"); 
             String d = request.getParameter("date");
             String p = request.getParameter("pcs");
             String r = request.getParameter("price");
             String re = request.getParameter("remain");
            
          Class.forName("com.mysql.jdbc.Driver"); 
        
          Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory", "root", "2309");
         
          PreparedStatement pst=conn.prepareStatement("insert into inventory_table(ITEM_NAME,CUST_NAME,DATE,PCS,PRICE,REMAIN)value(?,?,?,?,?,?)");
 
   
          pst.setString(1,i);        
          pst.setString(2,c);
          pst.setString(3,d);
          pst.setString(4,p);
          pst.setString(5,r);
          pst.setString(6,re);
          
            
         int i1= pst.executeUpdate();
         if(i1>0)
        	 response.sendRedirect("edit.jsp");
        
  
        }catch(Exception E){ 
        	E.printStackTrace();
        	
        	
        	} 
        
        }

    	

          
}

