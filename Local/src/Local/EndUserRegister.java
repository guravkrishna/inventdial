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



public class EndUserRegister extends HttpServlet
{
	private static final long serialVersionUID = 1L;
       
    
    public EndUserRegister() {
        super();
        
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		try{
			 response.setContentType("text/html;charset=UTF-8");
		       
			    PrintWriter out = response.getWriter();
			    
			   
               String fname=request.getParameter("fname");  
               String lname=request.getParameter("lname"); 
               String phone=request.getParameter("con"); 
               String mail=request.getParameter("mail");
               /*String membershiptype=request.getParameter("membershiptype");*/
               String pass=request.getParameter("password"); 
               
               String confirmpass=request.getParameter("confirm_pass"); 
               String subcategory=request.getParameter("subcategory"); 
               System.out.println(subcategory);
               
               Class.forName("com.mysql.jdbc.Driver");
  	         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/localsearchengine","root", "root");
  	         System.out.println("Connection :"+con);
  	        // @SuppressWarnings("unused")
  	         Statement sql_statement = con.createStatement();
  	         String jdbc_insert_sql = "INSERT INTO endusersignup(firstname,lastname,contact,endemail, password,confirmpass,subcategory) VALUES(?,?,?,?,?,?,?)";

  	         PreparedStatement ps = con.prepareStatement(jdbc_insert_sql);
  	         ps.setString(1, fname);
  	         ps.setString(2, lname);
  	         ps.setString(3, phone);
  	         ps.setString(4, mail);
  	        /* ps.setString(5,membershiptype);*/
  	         ps.setString(5, pass);
  	       ps.setString(6, confirmpass);
  	     ps.setString(7, subcategory);
   	    
  	         
  		   
  		   	ps.execute();
		  		out.println("<script type=\"text/javascript\">");	
		  		out.println("alert('Thank You For Registration');");
		  		out.println("location='EndUserLogin.jsp';");
		  		out.println("</script>");
  		      //request.getRequestDispatcher("EndUserLogin.jsp").include(request, response);
  			}catch(SQLException e){
  		   				e.printStackTrace();
  		   			} catch (ClassNotFoundException e) {
  				// TODO Auto-generated catch block
  				e.printStackTrace();
  			} 
               
	}

}
