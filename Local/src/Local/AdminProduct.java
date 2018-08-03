package Local;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class AdminProduct
 */
//@WebServlet("/AdminProduct")
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
maxFileSize=1024*1024*10,      // 10MB
maxRequestSize=1024*1024*50)
public class AdminProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SAVE_DIR="uploadimages";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminProduct() {
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
			        String savePath = "D:/JUSTDial/LocalSearch/WebContent" + File.separator + SAVE_DIR;
			            File fileSaveDir=new File(savePath);
			            if(!fileSaveDir.exists()){
			                fileSaveDir.mkdir();
			            }
		        
		  
		        	
			            String pname=request.getParameter("product_name");  
		        		String plist=request.getParameter("product_title");
		                String phone=request.getParameter("list_phone"); 
		                String email=request.getParameter("email");
		                String address=request.getParameter("list_addr"); 
		                String category=request.getParameter("category_name");
		                String city=request.getParameter("city_name");
		                String listdec=request.getParameter("textarea1");
		                
				        Part part=request.getPart("fgal");
				        String fileName=extractFileName(part);
				        System.out.println(fileName);
				        part.write(savePath + File.separator + fileName);
				        
				        Part part1=request.getPart("sgal");
				        String fileName1=extractFileName(part1);
				        System.out.println(fileName1);
				        part1.write(savePath + File.separator + fileName1);
				        
				        Part part2=request.getPart("tgal");
				        String fileName2=extractFileName(part2);
				        System.out.println(fileName2);
				        part2.write(savePath + File.separator + fileName2);
				        
		                
				        DB_Connection obj_DB_Connection=new DB_Connection();
						Connection connection=obj_DB_Connection.get_connection();
						PreparedStatement ps=null;
		   	        // @SuppressWarnings("unused")
		   	         
		   	         String query = "INSERT into adminproduct(name, title, phone, email, address, category, city, content, photo, img, bimg) values (?,?,?,?,?,?,?,?,?,?,?)";
		   	         ps=connection.prepareStatement(query);
		   	        
		   	         ps.setString(1, pname);
		   	         
		   	         ps.setString(2, plist);
		   	         ps.setString(3, phone);
		   	         ps.setString(4, email);
		   	         ps.setString(5, address);
		   	         ps.setString(6, category);
		   	         ps.setString(7, city);
		   	         ps.setString(8, listdec);
		   	         
		   	         String filePath= fileName ;
		   	         ps.setString(9,filePath);
		   	         
		   	         String filePath1= fileName1 ;
		   	         ps.setString(10,filePath1);
		        
		   	         String filePath2= fileName2 ;
		   	         ps.setString(11,filePath2);
		 
		   	   
		   	 
		           /* ps.executeUpdate();*/
		   	         
		   	     
		   	       
		   	   
		   	ps.execute();
		       request.getRequestDispatcher("adminproduct.jsp").include(request, response);
			}catch(SQLException e){
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
