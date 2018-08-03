package Local;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import Local.DbUtil;

/**
 * Servlet implementation class AdminListingServlet
 */
@MultipartConfig(maxFileSize = 16177215)
public class BusinesskeyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private Connection conn;

	    public BusinesskeyServlet() {
	        conn = DbUtil.getConnection();
	    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		 String businessinfo=request.getParameter("businessinfo");  
		 
         
		

		
	        String message=null;
		try {
           PreparedStatement statement = conn.prepareStatement("insert into businesskeyinfo(businessinfo)values(?)");
           statement.setString(1,businessinfo);
           
          
           
           
           
           int row=statement.executeUpdate();
           if (row > 0) {
               message = "inserted successfully into the Database";
           }
		}catch (SQLException ex) {
           message = "ERROR: " + ex.getMessage();
           ex.printStackTrace();
       }
		request.setAttribute("Message", message);
		getServletContext().getRequestDispatcher("/submit.jsp").forward(
               request, response);
		out.close();
	}

}
