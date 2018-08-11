package Local;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class InsertReview
 */
//@WebServlet("/InsertReview")
public class InsertReview extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertReview() {
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
		Connection connection=null;
		PreparedStatement ps=null;
		try{
			 response.setContentType("text/html;charset=UTF-8");
		       
			    PrintWriter out = response.getWriter();
			    HttpSession session = request.getSession(true);
			    String title=(String)session.getAttribute("title");
			    System.out.println(title);
			    String fname=request.getParameter("fname");  
			    String lname=request.getParameter("lname");  
              String contact=request.getParameter("con");  
            
             String email=request.getParameter("email"); 
           
              String review=request.getParameter("review"); 
              String custemail=request.getParameter("custemail"); 
              
              DB_Connection obj_DB_Connection=new DB_Connection();
				 connection=obj_DB_Connection.get_connection();
				  String jdbc_insert_sql = "INSERT INTO review(firstname,lastname,endcontact,endemail,review,contact)VALUES(?,?,?,?,?,?)";
				  System.out.println(jdbc_insert_sql);
				  ps = connection.prepareStatement(jdbc_insert_sql);
				  ps.setString(1, fname);  
				  ps.setString(2, lname);
		   	         ps.setString(3,contact);
		   	 
		   	 ps.setString(4, email);
		   	 ps.setString(5, review);
		   	 ps.setString(6, custemail);
		  
		  	ps.execute();
		    request.getRequestDispatcher("enduserlistgrid.jsp?BusinessTitle="+title).include(request, response);
			}catch(SQLException e){
		   				e.printStackTrace();
		   			} 
		finally
		{
			try {
				ps.close();
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		}
}
              