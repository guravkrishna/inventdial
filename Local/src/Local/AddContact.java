package Local;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddContact
 */
//@WebServlet("/AddContact")
public class AddContact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddContact() {
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
		       
			    PrintWriter out = response.getWriter();
			    
			    
			    String contact=request.getParameter("contact");  
			    String fname=request.getParameter("fname");  
			    String lname=request.getParameter("lname");  
			    String email=request.getParameter("email");  
			    String subcategory=request.getParameter("subcategory");  
			    System.out.println(subcategory);
			    String invent=request.getParameter("invent");  
			    System.out.println(invent);
			
              
              DB_Connection obj_DB_Connection=new DB_Connection();
				Connection connection=obj_DB_Connection.get_connection();
				  String jdbc_insert_sql = "INSERT INTO endusersignup(contact,subcategory,firstname,lastname,endemail,invent)VALUES(?,?,?,?,?,?)";
				  System.out.println(jdbc_insert_sql);
				  PreparedStatement ps = connection.prepareStatement(jdbc_insert_sql);
				  ps.setString(1, contact);  
				  ps.setString(2, subcategory); 
				  ps.setString(3, fname); 
				  ps.setString(4, lname); 
				  ps.setString(5, email); 
				  ps.setString(6, invent); 
				  
				 
		  	ps.execute();
		       request.getRequestDispatcher("message.jsp").include(request, response);
			}catch(SQLException e){
		   				e.printStackTrace();
		   			} 
		}
}