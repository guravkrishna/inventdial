package Local;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddPayment
 */
//@WebServlet("/AddPayment")
public class AddPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPayment() {
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
			    int cardNumber;
			    String amount=request.getParameter("amount");  
			    cardNumber=Integer.parseInt(request.getParameter("cardNumber"));   
			    String cardExpiry=request.getParameter("cardExpiry");  
              String cardCVC=request.getParameter("cardCVC");  
            
             String couponCode=request.getParameter("couponCode"); 
          
              
              DB_Connection obj_DB_Connection=new DB_Connection();
				Connection connection=obj_DB_Connection.get_connection();
				  String jdbc_insert_sql = "INSERT INTO payment(amount,card,exdate,cvc,coupn)VALUES(?,?,?,?,?)";
				  System.out.println(jdbc_insert_sql);
				  PreparedStatement ps = connection.prepareStatement(jdbc_insert_sql);
				  ps.setString(1, amount);
				  ps.setLong(2, cardNumber);  
				  ps.setString(3, cardExpiry);
		   	         ps.setString(4,cardCVC);
		   	 
		   	 ps.setString(5, couponCode);
		   	
		  	ps.execute();
		       request.getRequestDispatcher("adminpayment.jsp").include(request, response);
			}catch(SQLException e){
		   				e.printStackTrace();
		   			} 
		}
}

