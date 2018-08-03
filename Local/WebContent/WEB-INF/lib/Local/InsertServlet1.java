package Local;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InsertServlet
 */
//@WebServlet("/InsertServlet")
public class InsertServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertServlet1() {
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
	
               String first=request.getParameter("fname");  
               String last=request.getParameter("lname"); 
               String phone=request.getParameter("con"); 
               System.out.println(phone);
               String mail=request.getParameter("mail"); 
               String pass=request.getParameter("pass"); 
               
               String rpass=request.getParameter("rpass"); 
               
               
               Class.forName("com.mysql.jdbc.Driver");
  	         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/justdial","root", "root");
  	         System.out.println("Connection :"+con);
  	        // @SuppressWarnings("unused")
  	         Statement sql_statement = con.createStatement();
  	         String jdbc_insert_sql = "INSERT INTO signup(firstname,lastname,contact,email, password,confirmpass) VALUES(?,?,?,?,?,?)";

  	         PreparedStatement ps = con.prepareStatement(jdbc_insert_sql);
  	         ps.setString(1, first);
  	         ps.setString(2, last);
  	         ps.setString(3, phone);
  	         ps.setString(4, mail);
  	         ps.setString(5, pass);
  	       ps.setString(6, rpass);
  	         
  		   
  		   	ps.execute();
  		       request.getRequestDispatcher("register.html").include(request, response);
  			}catch(SQLException e){
  		   				e.printStackTrace();
  		   			} catch (ClassNotFoundException e) {
  				// TODO Auto-generated catch block
  				e.printStackTrace();
  			} 
               
	}

}
