package Local;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import Local.DB_Connection;

/**
 * Servlet implementation class AddBusiness
 */
//@WebServlet("/UserListing")
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
maxFileSize=1024*1024*10,      // 10MB
maxRequestSize=1024*1024*50)
public class UserListing extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SAVE_DIR="upload";
	

    /**
     * Default constructor. 
     */
   

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
		        String savePath = "G:/Arati_18/LocalSearch/WebContent" + File.separator + SAVE_DIR;
		            File fileSaveDir=new File(savePath);
		            if(!fileSaveDir.exists()){
		                fileSaveDir.mkdir();
		            }
	        
	  
	        	
		            String fname=request.getParameter("first_name");  
	        		String lname=request.getParameter("last_name");
	        		String list=request.getParameter("list_name");
	                String phone=request.getParameter("list_phone"); 
	                String email=request.getParameter("email");
	                String address=request.getParameter("list_adderss"); 
	                System.out.println(address);
	                String listtype=request.getParameter("type"); 
	                String city=request.getParameter("city");
	                String category=request.getParameter("category");  
	                String opening=request.getParameter("day"); 
	                String opentime=request.getParameter("otime");
	                String closetime=request.getParameter("ctime");
	                String listdec=request.getParameter("textarea1");
	                String facebook=request.getParameter("flink");
	                String google=request.getParameter("glink");
	                String service=request.getParameter("service");
	                String profess=request.getParameter("prof");
	                String limit=request.getParameter("limit");
	                String map=request.getParameter("map");
	                String degree=request.getParameter("degree");
	                
	                
	                Part part=request.getPart("cimg");
			        String fileName=extractFileName(part);
			        System.out.println(fileName);
			        part.write(savePath + File.separator + fileName);
			        
			        Part part1=request.getPart("limg");
			        String fileName1=extractFileName(part1);
			        System.out.println(fileName1);
			        part1.write(savePath + File.separator + fileName1);
			        
			        Part part2=request.getPart("fgal");
			        String fileName2=extractFileName(part2);
			        System.out.println(fileName2);
			        part2.write(savePath + File.separator + fileName2);
			        
			        Part part3=request.getPart("sgal");
			        String fileName3=extractFileName(part3);
			        System.out.println(fileName3);
			        part3.write(savePath + File.separator + fileName3);
			        
			        Part part4=request.getPart("tgal");
			        String fileName4=extractFileName(part4);
			        System.out.println(fileName4);
			        part4.write(savePath + File.separator + fileName4);
			        
			        Part part5=request.getPart("fogal");
			        String fileName5=extractFileName(part5);
			        System.out.println(fileName5);
			        part5.write(savePath + File.separator + fileName5);
	                
			        DB_Connection obj_DB_Connection=new DB_Connection();
					Connection connection=obj_DB_Connection.get_connection();
					PreparedStatement ps=null;
	   	        // @SuppressWarnings("unused")
	   	         
	   	         String query = "INSERT into listing(first_name, lastname, title, phone, email, address, type, city, category, day, opentime, closetime, description, linkf, linkg, service, professional, insurance, map, degree, coverimage, logo, galleryf, gallerys, galleryt, galleryfo) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	   	         ps=connection.prepareStatement(query);
	   	        
	   	         ps.setString(1, fname);
	   	         ps.setString(2, lname);
	   	         ps.setString(3, list);
	   	         ps.setString(4, phone);
	   	         ps.setString(5, email);
	   	         ps.setString(6, address);
	   	         ps.setString(7, listtype);
	   	         ps.setString(8, city);
	   	         ps.setString(9, category);
	   	         ps.setString(10, opening);
	   	         ps.setString(11, opentime);
	   	         ps.setString(12, closetime);
	   	         ps.setString(13, listdec);
	   	         ps.setString(14, facebook);
	   	         ps.setString(15, google);
	   	         ps.setString(16, service);
	   	         ps.setString(17, profess);
	   	         ps.setString(18, limit);
	   	         ps.setString(19, map);
	   	         ps.setString(20, degree);
	   	      
	   	      
	   	     String filePath= fileName ;
		   	   ps.setString(21,filePath);
	   	         
	   	         String filePath1= fileName1 ;
	   	   ps.setString(22,filePath1);
	        
	   	   String filePath2= fileName2 ;
	   	   ps.setString(23,filePath2);
	            
	   	 String filePath3= fileName3 ;
	   	   ps.setString(24,filePath3);
	            
	   	 String filePath4= fileName4 ;
	   	   ps.setString(25,filePath4);
	   	   
	   	 String filePath5= fileName5 ;
	   	   ps.setString(26,filePath5);
	   	   
	   	 
	           /* ps.executeUpdate();*/
	   	         
	   	     
	   	       
	   	   
	   	ps.execute();
	       request.getRequestDispatcher("main.html").include(request, response);
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



