package Local;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class Update_Category
 */
//@WebServlet("/Update_Category")
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
maxFileSize=1024*1024*10,      // 10MB
maxRequestSize=1024*1024*50)
public class Update_Category extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SAVE_DIR="upload";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update_Category() {
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
		        String savePath = "G:/Arati_18/JUST18/WebContent" + File.separator + SAVE_DIR;
	            File fileSaveDir=new File(savePath);
	            if(!fileSaveDir.exists()){
	                fileSaveDir.mkdir();
	            }
		        
	            String id = request.getParameter("id");	
		        String pname=request.getParameter("product_name");  
        		String plist=request.getParameter("product_title");
                String phone=request.getParameter("list_phone"); 
                String email=request.getParameter("email");
                String address=request.getParameter("list_addr"); 
                String category=request.getParameter("category_name");
                String city=request.getParameter("city_name");
                String listdec=request.getParameter("textarea1"); 
		                
		                Class.forName("com.mysql.jdbc.Driver").newInstance();
		   	         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/justdial","root", "root");
		   	         System.out.println("Connection :"+con);
		   	         @SuppressWarnings("unused")
		   	         Statement sql_statement = con.createStatement();
		   	         String jdbc_insert_sql = "UPDATE  productlist set productname='"+pname+"',producttilte='"+plist+"',phone='"+phone+"',email='"+email+"',address='"+address+"',productcategory='"+category+"',city='"+city+"',description='"+listdec+"' where id="+id;
		   	         PreparedStatement ps = con.prepareStatement(jdbc_insert_sql);
		   	         
		   	       ps.execute();
		   	       request.getRequestDispatcher("admin.html").include(request, response);
		   	         
		   			}catch(SQLException | InstantiationException | IllegalAccessException | ClassNotFoundException e){
		   				e.printStackTrace();
		   			} 
  		
		   		}
	private String extractFileName(Part part) {
	    String contentDisp = part.getHeader("content-disposition");
	    String[] items = contentDisp.split(";");
	    for (String s : items) {
	        if (s.trim().startsWith("filename")) {
	            return s.substring(s.indexOf("=") + 2, s.length()-1);
	        }
	    }
	    return "";
  		


}
}
