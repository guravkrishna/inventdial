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
public class MyratingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private Connection conn;

	    public MyratingServlet() {
	        conn = DbUtil.getConnection();
	    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		
		String reviewid=request.getParameter("reviewid");
		String businessid=request.getParameter("businessid");
		String businessname=request.getParameter("businessname");
		
		String businessreviewstars=request.getParameter("businessreviewstars");
		String review_name=request.getParameter("review_name");  
          
         String review_mobile=request.getParameter("review_mobile"); 
         System.out.println(review_mobile);
         
         String review_email=request.getParameter("review_email");
         String review_city=request.getParameter("review_city"); 
        
         String review_review=request.getParameter("review_review"); 
         String review_date=request.getParameter("review_date"); 

		
	        String message=null;
		try {
           PreparedStatement statement = conn.prepareStatement("insert into myrating(reviewid,businessid,businessname,businessreviewstars,review_name,review_mobile,review_email,review_city,review_review,review_date)values(?,?,?,?,?,?,?,?,?,?)");
          
           statement.setString(1,reviewid);
           statement.setString(2,businessid);
           statement.setString(3,businessname);
           statement.setString(4,businessreviewstars);
           statement.setString(5,review_name);
           
           
           
           statement.setString(6,review_mobile);
           
           statement.setString(7,review_email);
           statement.setString(8,review_city);
           statement.setString(9,review_review);
          
           statement.setString(10,review_date);
          
           
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
