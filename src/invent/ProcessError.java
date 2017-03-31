package invent;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ProcessError")
public class ProcessError extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processError(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processError(request, response);
	}

	private void processError(HttpServletRequest request, HttpServletResponse response) throws IOException {
	
		
		Integer statusCode = (Integer) request.getAttribute("javax.servlet.error.status_code");
		
	
	
		response.setContentType("text/html");

		PrintWriter out = response.getWriter();
		out.write("<html><head><title>Error Details</title></head><body>");
		if (statusCode != 400) {
			out.write("<h3>Error Details</h3>");
			out.write("<strong>Status Code</strong>:" + statusCode + "<br>");
			
		} 

		out.write("<br><br>");
		out.write("<a href=\"index.jsp\">Home Page</a>");
		out.write("</body></html>");
	}
}