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
public class OtherinfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private Connection conn;

	    public OtherinfoServlet() {
	        conn = DbUtil.getConnection();
	    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		 String opentime=request.getParameter("opentime");  
		 String closetime=request.getParameter("closetime");   
         
         
         String day=request.getParameter("day");
         
         String paymentmode=request.getParameter("paymentmode");
        
         String companyinfo=request.getParameter("companyinfo"); 
         
         
		

		
	        String message=null;
		try {
           PreparedStatement statement = conn.prepareStatement("insert into otherinfo(opentime,closetime,day,paymentmode,companyinfo)values(?,?,?,?,?)");
           statement.setString(1,opentime);
           
           statement.setString(2,closetime);
           statement.setString(3,day);
           statement.setString(4,paymentmode);
          
           statement.setString(5,companyinfo);
           
           
           
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
