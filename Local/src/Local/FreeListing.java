package Local;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Free_Listing
 */
//@WebServlet("/FreeListing")
public class FreeListing extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FreeListing() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try{
			 response.setContentType("text/html;charset=UTF-8");
		           	
			 			
			 			String fname=request.getParameter("fname");  
		        		String lname=request.getParameter("lname");
		        		String phone=request.getParameter("phone");
		        		String land=request.getParameter("land");
		                String email=request.getParameter("email");
		                String city=request.getParameter("city");
		                String category=request.getParameter("category");
		               
		                
				        DB_Connection obj_DB_Connection=new DB_Connection();
						Connection connection=obj_DB_Connection.get_connection();
						PreparedStatement ps=null;
		   	        // @SuppressWarnings("unused")
		   	         
		   	         String query = "update signup s join listing l on s.email=l.email set l.fname=?,l.lname=?,l.category=?,l.phone=?,l.land=?,l.email=?,l.city=?  where s.email='"+email+"' ";
		   	         ps=connection.prepareStatement(query);
		   	        
		   	         
		   	         ps.setString(1, fname);
		   	         ps.setString(2, lname); 
		   	         ps.setString(3, category);
		   	         ps.setString(4, phone);
		   	         ps.setString(5, land);
		   	         ps.setString(6, email);
		   	         ps.setString(7, city);
		   	         
		   	         
		   	   
		   	 
		           /* ps.executeUpdate();*/
		   	         
		   	     
		   	       
		   	   
		   	ps.execute();
		       request.getRequestDispatcher("UserfreeCategory.jsp").include(request, response);
			}catch(SQLException e){
		   				e.printStackTrace();
		   			} 
		}
	}

