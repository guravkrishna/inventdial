package Local;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertServlet() {
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
		
			 response.setContentType("text/html;charset=UTF-8");
		       
			    PrintWriter out = response.getWriter();
	
               String fname=request.getParameter("fname");  
               String lname=request.getParameter("lname"); 
               String phone=request.getParameter("phone");
               String altphone=request.getParameter("altphone");
               System.out.println(phone);
               String email=request.getParameter("email");
               System.out.println(email);
               String pass=request.getParameter("pass");
               System.out.println(pass);
               
             PreparedStatement ps_sel=null;
             PreparedStatement ps=null;
             ResultSet rs=null;
            try
            {   
	             Class.forName("com.mysql.jdbc.Driver");
	  	         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/localsearchengine","root", "root");
	  	         System.out.println("Connection :"+con);
	  	        // @SuppressWarnings("unused")
	  	        ps_sel = con.prepareStatement("select firstname from signup where email = ?");
	  	        System.out.println(ps_sel);
				ps_sel.setString(1, email);
				
				ps_sel.execute();
				rs = ps_sel.getResultSet();
				if(rs.next())
				{
					out.println("<script type=\"text/javascript\">");
	                out.println("alert('Already Your Email Registered ')");
	                out.println("location='register.jsp';");
	                out.println("</script>");
				}
				else
				{
					    ps = con.prepareStatement("INSERT INTO signup(firstname,lastname,contact,altcontact,email,password) VALUES(?,?,?,?,?,?)");
			  	         //inst = con.prepareStatement();
			  	        // String jdbc_insert_sql = "INSERT INTO signup(firstname,lastname,contact,altcontact,email,password) VALUES(?,?,?,?,?,?)";
			
			  	        // PreparedStatement ps = con.prepareStatement(jdbc_insert_sql);
			  	         ps.setString(1, fname);
			  	         ps.setString(2, lname);
			  	         ps.setString(3, phone);
			  	         ps.setString(4, altphone);
			  	         ps.setString(5, email);
			  	         ps.setString(6, pass);
			  		   	ps.execute();
			  		       request.getRequestDispatcher("BusinessRegister.jsp").include(request, response);
				}
  			}catch(SQLException e){
  		   				e.printStackTrace();
  		   			} catch (ClassNotFoundException e) {
  				// TODO Auto-generated catch block
  				e.printStackTrace();
  			} 
               
	}

}
