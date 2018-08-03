package Local;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddPackage
 */
//@WebServlet("/AddPackage")
public class AddPackage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPackage() {
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
			    
			    
			    String type=request.getParameter("type");  
			    String one=request.getParameter("one");  
               String two=request.getParameter("two");  
             
              String three=request.getParameter("three"); 
              /* float rat = Float.parseFloat(request.getParameter("rat"));  */
           /*   String sdate = request.getParameter("sdate");*/
              SimpleDateFormat formater = new SimpleDateFormat("yyyy-MM-dd");
             
              java.util.Date util_StartDate = formater.parse(request.getParameter("sdate"));
              java.sql.Date sdate = new java.sql.Date( util_StartDate.getTime() );
              java.util.Date util_EndDate = formater.parse(request.getParameter("edate"));
              java.sql.Date edate = new java.sql.Date( util_StartDate.getTime() );
               String amount=request.getParameter("amount"); 
               
               DB_Connection obj_DB_Connection=new DB_Connection();
				Connection connection=obj_DB_Connection.get_connection();
				  String jdbc_insert_sql = "INSERT INTO package1(package,one,two,three,sdate,edate,amount)VALUES(?,?,?,?,?,?,?)";
				  System.out.println(jdbc_insert_sql);
				  PreparedStatement ps = connection.prepareStatement(jdbc_insert_sql);
				  ps.setString(1, type);  
				  ps.setString(2, one);
		   	         ps.setString(3,two);
		   	 
		   	 ps.setString(4, three);
		   	 ps.setDate(5, sdate);
		   	 ps.setDate(6, edate);
		   	 ps.setString(7, amount);
		  	ps.execute();
		       request.getRequestDispatcher("adminpackage.jsp").include(request, response);
			}catch(SQLException e){
		   				e.printStackTrace();
		   			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
		}
}
               