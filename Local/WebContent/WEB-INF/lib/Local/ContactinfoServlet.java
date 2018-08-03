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
public class ContactinfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private Connection conn;

	    public ContactinfoServlet() {
	        conn = DbUtil.getConnection();
	    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		 String name=request.getParameter("name");  
          
         String landlinenum=request.getParameter("landlinenum"); 
         System.out.println(landlinenum);
         
         String mobilenum=request.getParameter("mobilenum");
         String faxnum=request.getParameter("faxnum");
         String tollfreenum=request.getParameter("tollfreenum");
         String email=request.getParameter("email"); 
         
         String website=request.getParameter("website"); 
         
       
         
         String map=request.getParameter("map"); 
        
		

		
	        String message=null;
		try {
           PreparedStatement statement = conn.prepareStatement("insert into contactinfo(name,landlinenum,mobilenum,faxnum,tollfreenum,email,website,map)values(?,?,?,?,?,?,?,?)");
           statement.setString(1,name);
           
           statement.setString(2,landlinenum);
           statement.setString(3,mobilenum);
           statement.setString(4,faxnum);
          
           statement.setString(5,tollfreenum);
           statement.setString(6,email);
           statement.setString(7, website);   
           statement.setString(8,tollfreenum);
           
           
           
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
