package Local;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddPaidListing
 */
//@WebServlet("/AddPaidListing")
public class AddPaidListing extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPaidListing() {
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
		
		PreparedStatement ps_sel=null;
		ResultSet rs=null;
		PrintWriter pw=response.getWriter();
		try{
			 response.setContentType("text/html;charset=UTF-8");
		       
			    PrintWriter out = response.getWriter();
			    
			    
			    String title=request.getParameter("title");  
			    String fname=request.getParameter("fname");  
               String lname=request.getParameter("lname");  
             
              String phone=request.getParameter("phone"); 
              /* float rat = Float.parseFloat(request.getParameter("rat"));  */
               String email=request.getParameter("email"); 
             /*  year=Integer.parseInt(request.getParameter("year")); */ 
               String city=request.getParameter("city"); 
               
               DB_Connection obj_DB_Connection=new DB_Connection();
				Connection connection=obj_DB_Connection.get_connection();
				
				ps_sel = connection.prepareStatement("select fname from listing where email = ?");
				ps_sel.setString(1, email);
				ps_sel.execute();
				rs = ps_sel.getResultSet();
				if(rs.next())
				{
					pw.println("<script type=\"text/javascript\">");	
		    	    pw.println("alert('Email Already Exist');");
		    	    pw.println("location='adminpaidlisting.jsp';");
		    	    pw.println("</script>");
				}
				else
				{
					  String jdbc_insert_sql = "INSERT INTO listing(BusinessTitle,fname,lname,phone,email,city)VALUES(?,?,?,?,?,?)";
					  System.out.println(jdbc_insert_sql);
					  PreparedStatement ps = connection.prepareStatement(jdbc_insert_sql);
					  ps.setString(1, title);  
					  ps.setString(2, fname);
			   	         ps.setString(3,lname);
			   	 
				   	 ps.setString(4, phone);
				   	 ps.setString(5, email);
				   	 ps.setString(6, city);
				  	ps.execute();
			       request.getRequestDispatcher("adminpaidcategory.jsp").include(request, response);
				}
			}catch(SQLException e)
		   {
				System.out.println(e.getLocalizedMessage());
		   		e.printStackTrace();
		   } 
		}
}
               
               