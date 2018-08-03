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
public class AddServletUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private Connection conn;

	    public AddServletUser() {
	        conn = DbUtil.getConnection();
	    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		 String firstname=request.getParameter("firstname");  
         String lastname=request.getParameter("lastname"); 
         String contact=request.getParameter("contact"); 
         System.out.println(contact);
         String email=request.getParameter("email"); 
         
         String address=request.getParameter("address"); 
         
         String usertype=request.getParameter("usertype"); 
         
         String city=request.getParameter("city"); 
         String userdes=request.getParameter("userdes");
		

		
	        String message=null;
		try {
           PreparedStatement statement = conn.prepareStatement("insert into adduser(firstname,lastname,contact,email,address,usertype,city,userdes)values(?,?,?,?,?,?,?,?)");
           statement.setString(1,firstname);
           statement.setString(2,lastname);
           statement.setString(3,contact);
           statement.setString(4,email);
           statement.setString(5,address);
           statement.setString(6,usertype);
           statement.setString(7,city);
           statement.setString(8,userdes);
           
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
