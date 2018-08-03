package Local;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class AddFreeCategory
 */
//@WebServlet("/AddFreeCategory")
@MultipartConfig(fileSizeThreshold=1024*1024*100, // 2MB
maxFileSize=1024*1024*100,      // 10MB
maxRequestSize=1024*1024*100)
public class AddFreeCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SAVE_DIR="uploadimg";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddFreeCategory() {
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
			        String savePath = "C:/Users/ravi/git/LocalSearchEngine/Local/WebContent" + File.separator + SAVE_DIR;
			            File fileSaveDir=new File(savePath);
			            if(!fileSaveDir.exists()){
			                fileSaveDir.mkdir();
			            }
			            
			            int year;
			            String btype=request.getParameter("btype");  
		                String subname=request.getParameter("subname");  
		                String subcate=request.getParameter("subcate");  
		           
		               
		                String email=request.getParameter("email"); 
		              
		                String add=request.getParameter("add"); 
		              
		                
		                
		                String days="";
		                String[] day=request.getParameterValues("daynames"); 
		                for(int i=0; i<day.length; i++){
		                    days+=day[i]+" ";
		                }
		                String open=request.getParameter("open"); 
		                String close=request.getParameter("close"); 
		                String ptype=request.getParameter("ptype"); 
		                String desc=request.getParameter("desc"); 
		                year=Integer.parseInt(request.getParameter("year")); 
		                String link=request.getParameter("link"); 
		                System.out.println(link);
		                String secondlink=request.getParameter("secondlink"); 
		                System.out.println(secondlink);
		                String thirdlink=request.getParameter("thirdlink"); 
		                String map=request.getParameter("map"); 
		                System.out.println(map);
		                
		                
		                
		                Part part=request.getPart("coverimage");
				        String fileName=extractFileName(part);
				        System.out.println(fileName);
				        part.write(savePath + File.separator + fileName);
				        
				        Part part1=request.getPart("logo");
				        String fileName1=extractFileName(part1);
				        System.out.println(fileName1);
				        part1.write(savePath + File.separator + fileName1);
				        
				        Part part2=request.getPart("imgone");
				        String fileName2=extractFileName(part2);
				        System.out.println(fileName2);
				        part.write(savePath + File.separator + fileName2);
				        
				        Part part3=request.getPart("imgtwo");
				        String fileName3=extractFileName(part3);
				        System.out.println(fileName3);
				        part3.write(savePath + File.separator + fileName3);
				        
				        Part part4=request.getPart("imgthree");
				        String fileName4=extractFileName(part4);
				        System.out.println(fileName4);
				        part4.write(savePath + File.separator + fileName4);
				        
				        Part part5=request.getPart("video");
				        String fileName5=extractFileName(part5);
				        System.out.println(fileName5);
				        part5.write(savePath + File.separator + fileName5);
				        DB_Connection obj_DB_Connection=new DB_Connection();
						Connection connection=obj_DB_Connection.get_connection();
						
						
						   String jdbc_insert_sql = "INSERT INTO category(category,title,subcategory,email,address,day,open,close,package,content,year,linkone,linktwo,linkthree,map,coverimg,logo,img,bimg,gimg,video)VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

				   	         PreparedStatement ps = connection.prepareStatement(jdbc_insert_sql);
				   	         ps.setString(1, btype);
				   	         ps.setString(2,subname);
				   	   ps.setString(3, subcate);
				 /*  	 ps.setString(4, contact);*/
				   	 ps.setString(4, email);
				   	 ps.setString(5, add);
				   	
				   	 ps.setNString(6, days);
				   	         ps.setString(7, open);
				   	         ps.setString(8, close);
				   	      ps.setString(9, ptype);
				   	         ps.setString(10, desc);
				   	      ps.setLong(11, year);
				   	         ps.setString(12, link);
				   	         ps.setString(13, secondlink);
				   	         ps.setString(14, thirdlink);
				   	      ps.setString(15, map);
				   	      
				   	      String filePath= fileName ;
				         ps.setString(16,filePath);
				         
				            String filePath1= fileName1 ;
				            ps.setString(17,filePath1);
				            
				            String filePath2= fileName2 ;
				            ps.setString(18,filePath2);
				            
				            String filePath3= fileName3 ;
				            ps.setString(19,filePath3);
				            String filePath4= fileName4 ;
				            ps.setString(20,filePath4);
				            
				            String filePath5= fileName5 ;
				            ps.setString(21,filePath5);
				            
				            
				            
				            
				           /* ps.executeUpdate();*/
				   	         
				   	     
				   	       
				   	   
				   	ps.execute();
				      request.getRequestDispatcher("adminfreecategory.jsp").include(request, response);
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



			            
			            
			            
			            
			            
			            
			            
			            
			            
			            
			            
			            
			            
			            
			            
			            
			            
			            
			            
			            