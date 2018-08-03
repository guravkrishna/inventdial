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

import LocalSimple.DbUtil;

/**
 * Servlet implementation class AdminListingServlet
 */
@MultipartConfig(maxFileSize = 16177215)
public class BasicinfouserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private Connection conn;

	    public BasicinfouserServlet() {
	        conn = DbUtil.getConnection();
	    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		 String name=request.getParameter("name");  
          
         String contact=request.getParameter("contact"); 
         System.out.println(contact);
         String email=request.getParameter("email"); 
         
         String address=request.getParameter("address"); 
         
       
         
         String city=request.getParameter("city"); 
        
		

		
	        String message=null;
		try {
           PreparedStatement statement = conn.prepareStatement("insert into basicinfo(name,contact,email,address,city)values(?,?,?,?,?)");
           statement.setString(1,name);
           
           statement.setString(2,contact);
           statement.setString(3,email);
           statement.setString(4,address);
          
           statement.setString(5,city);
          
           
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
