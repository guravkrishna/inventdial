package Local;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
//@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        	
        	
        		String name=request.getParameter("uname");  
        		System.out.println(name);
                String password=request.getParameter("pwd");  
                System.out.println(password);
                  
                
                if(name.equals("tricky@gmail.com") && password.equals("tricky1234"))
                {  
	                HttpSession session=request.getSession(true);  
	                session.setAttribute("uname",name);  
	                out.println("<script type=\"text/javascript\">");
	                out.println("alert('Admin Login Sucessfully')");
	                out.println("location='admin.jsp';");
	                out.println("</script>");
	               request.getRequestDispatcher("admin.jsp").include(request, response);
                }  
                else
                {  
                	out.println("<script type=\"text/javascript\">");
	                out.println("alert('Invalid Email or Password')");
	                out.println("location='admin_login.jsp';");
	                out.println("</script>");
                    //request.getRequestDispatcher("main.jsp").include(request, response);  
                }  
                out.close();  
            }

}