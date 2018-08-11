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
 * Servlet implementation class User_Free_Category_Listing
 */
//@WebServlet("/User_Free_Category_Listing")
@MultipartConfig(fileSizeThreshold=1024*1024*1000, // 2MB
maxFileSize=1024*1024*1000,      
maxRequestSize=1024*1024*1000)
public class User_Free_Category_Listing extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SAVE_DIR="uploadimg";
	   
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public User_Free_Category_Listing() {
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
			        String savePath = "C:/Users/admin/git/Local/WebContent/" + File.separator + SAVE_DIR;
			            File fileSaveDir=new File(savePath);
			            if(!fileSaveDir.exists()){
			                fileSaveDir.mkdir();
			            }
			           //int year;
			            String phone=request.getParameter("con"); 
			            System.out.println(phone);
			            String BusinessTitle=request.getParameter("BusinessTitle");  
		        		//String bname=request.getParameter("business_name");
		                String subcategory=request.getParameter("subcategory"); 
		                String year=request.getParameter("year");
		               // String email=request.getParameter("email");
		                String address=request.getParameter("list_addr");
		                String days="";
		                String[] day=request.getParameterValues("daynames"); 
		                for(int i=0; i<day.length; i++){
		                    days+=day[i]+" ";
		                }
/*		                String day=request.getParameter("day");*/
		                String open=request.getParameter("open");
		                String close=request.getParameter("close");
		                String ptype=request.getParameter("ptype");
		                String content=request.getParameter("description");
		              
		                /*int year;
		                year=Integer.parseInt(request.getParameter("year"));*/
		                System.out.println(year);
		               // int year=request.getParameter(year);
		               // String img=request.getParameter("img");
		               // String bimg=request.getParameter("bimg");
		               
		                
		                
				        Part part=request.getPart("coverimg");
				        String fileName=extractFileName(part);
				        System.out.println(fileName);
				        part.write(savePath + File.separator + fileName);
				        
				        Part part1=request.getPart("logo");
				        String fileName1=extractFileName(part1);
				        System.out.println(fileName1);
				        part1.write(savePath + File.separator + fileName1);
				      
				        
				        Part part2=request.getPart("img");
				        String fileName2=extractFileName(part2);
				        System.out.println(fileName2);
				        if(fileName2.contains("jpg")){
				        	 part2.write(savePath + File.separator + fileName2);
				        } else{
				        	
				        	part2.write(savePath + File.separator + null);
				        }
				       
				        
				        Part part3=request.getPart("bimg");
				        String fileName3=extractFileName(part3);
				        System.out.println(fileName3);
				        if(fileName3.contains("jpg")){
				        	 part3.write(savePath + File.separator + fileName3);
				        } else{
				        	
				        	part3.write(savePath + File.separator + null);
				        }
				        Part part4=request.getPart("gimg");
				        String fileName4=extractFileName(part4);
				        System.out.println(fileName4);
				        if(fileName4.contains("jpg")){
				        	 part4.write(savePath + File.separator + fileName4);
				        } else{
				        	
				        	part2.write(savePath + File.separator + null);
				        }
				       /* Part part5=request.getPart("video");
				        String fileName5=extractFileName(part5);
				        System.out.println(fileName5);
				        part5.write(savePath + File.separator + fileName5);*/
				        
				        /*String website=request.getParameter("weblink");
		                String facelink=request.getParameter("facelink");
		                String googlelink=request.getParameter("googlelink");
		                String youlink=request.getParameter("youlink");
		                String link=request.getParameter("link");
		                String map=request.getParameter("map");*/
				        
		                
				        DB_Connection obj_DB_Connection=new DB_Connection();
						Connection connection=obj_DB_Connection.get_connection();
						PreparedStatement ps=null;
						
		   	        // @SuppressWarnings("unused")
		   	        // String query="update signup s join category c on s.email=c.email set c.email=?,c.BusinessTitle=?,c.subcategory=?,c.year=?,c.address=?,c.day=?,c.open=?,c.close=?,c.content=?,c.coverimg=?,c.logo=?,c.img=?,c.bimg=?,c.gimg=?  where s.email='"+email+"' ";
		   	         String query = "INSERT into category(contact,BusinessTitle, subcategory,year, address, day, open, close,package, content, coverimg, logo, img, bimg,gimg) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		   	         ps=connection.prepareStatement(query);
		   	        
		   	         ps.setString(1, phone);
		   	         ps.setString(2, BusinessTitle);
		   	         ps.setString(3, subcategory);
		   	         ps.setString(4, year);
		   	         ps.setString(5, address);
		   	         ps.setString(6, days);
		   	         ps.setString(7, open);
		   	         ps.setString(8, close);
		   	      ps.setString(9, ptype);
		   	         ps.setString(10, content);
		   	         
		   	         String filePath= fileName ;
		   	         ps.setString(11,filePath);
		   	         
		   	         String filePath1= fileName1 ;
		   	         ps.setString(12,filePath1);
		        
		   	         String filePath2= fileName2 ;
		   	         ps.setString(13,filePath2);
		   	         
		   	         String filePath3= fileName3 ;
		   	         ps.setString(14,filePath3);
		   	         
		   	         String filePath4= fileName4 ;
		   	         ps.setString(15,filePath4);
		 
		   	ps.execute();
		       request.getRequestDispatcher("UserOtherListing.jsp").include(request, response);
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
