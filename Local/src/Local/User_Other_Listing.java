package Local;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class User_Other_Listing
 */
//@WebServlet("/User_Other_Listing")
public class User_Other_Listing extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public User_Other_Listing() {
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
			 String con = request.getParameter("con");
			 System.out.println(con);
			 			String land=request.getParameter("land");
			 			String fax=request.getParameter("fax");  
		        		String toll=request.getParameter("toll");
		        		String pin=request.getParameter("pin"); 
		        		
		        		String website=request.getParameter("weblink");
		                String facelink=request.getParameter("facelink");
		                String googlelink=request.getParameter("googlelink");
		                String youlink=request.getParameter("youlink");
		                String link=request.getParameter("link");
		                String map=request.getParameter("map");
		                
		        		
				        DB_Connection obj_DB_Connection=new DB_Connection();
						Connection connection=obj_DB_Connection.get_connection();
						PreparedStatement ps=null;
		   	        // @SuppressWarnings("unused")
		   	         
		   	         String query = "Update category set land=?, fax=?, toll=?, pin=?, linkone=?, linktwo=?, linkthree=?, linkfour=?, linkfive=? ,map=?where contact='"+con+"'";
		   	         ps=connection.prepareStatement(query);
		   	        
		   	         ps.setString(1, land);
		   	         ps.setString(2, fax);
		   	         ps.setString(3, toll); 
		   	         ps.setString(4, pin);
		   	         ps.setString(5, website);
		   	         ps.setString(6, facelink);
		   	         ps.setString(7, googlelink);
		   	         ps.setString(8, youlink);
		   	         ps.setString(9, link);
		   	         ps.setString(10, map);
		   	         
		   	         
		   	   
		   	 
		           /* ps.executeUpdate();*/
		   	         
		   	     
		   	       
		   	   
		   	ps.execute();
		       request.getRequestDispatcher("main.jsp").include(request, response);
			}catch(SQLException e){
		   				e.printStackTrace();
		   			} 
		}
	}

