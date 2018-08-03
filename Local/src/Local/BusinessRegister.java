package Local;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BusinessRegister
 */
//@WebServlet("/BusinessRegister")
public class BusinessRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BusinessRegister() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		PrintWriter pw=response.getWriter();
		 String category=request.getParameter("category");  
		 System.out.println(category);
         String telephone=request.getParameter("telephone"); 
         System.out.println(telephone);
         String city=request.getParameter("city");
         System.out.println(city);
         String mail=request.getParameter("email");
         PreparedStatement ps_sel=null;
         ResultSet rs=null;
         try
         {
        	    DB_Connection obj_DB_Connection=new DB_Connection();
				Connection connection=obj_DB_Connection.get_connection();
				ps_sel = connection.prepareStatement("select * from signup where email = ?");
				ps_sel.setString(1, mail);
				
				ps_sel.execute();
				rs = ps_sel.getResultSet();
				if(rs.next())
				{
					pw.println("<script type=\"text/javascript\">");
                pw.println("alert('Already Registered')");
                pw.println("location='register.jsp';");
                pw.println("</script>");
				}
				else
				{
					String sql = "INSERT INTO listing(category,land,city,email)VALUES(?,?,?,?)";
	
		   	         PreparedStatement ps = connection.prepareStatement(sql);
		   	         ps.setString(1, category);
		   	         ps.setString(2,telephone);
		   	         ps.setString(3,city);
		   	         ps.setString(4,mail);
		   	  	     ps.execute();
			         request.getRequestDispatcher("SendOTP.jsp").include(request, response);
				}
         }
         catch(Exception e)
         {
        	 System.out.println(e.getMessage());
        	 e.printStackTrace();
         }
	}

}
