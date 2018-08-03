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
 * Servlet implementation class AddPaidCategory
 */
//@WebServlet("/AddPaidCategory")
@MultipartConfig(fileSizeThreshold=1024*1024*100, // 2MB
maxFileSize=1024*1024*100,      // 10MB
maxRequestSize=1024*1024*100)
public class AddPaidCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SAVE_DIR="uploadimg";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPaidCategory() {
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
		try{
			 response.setContentType("text/html;charset=UTF-8");
		       
			    PrintWriter out = response.getWriter();
			        String savePath = "C:/Users/ravi/git/LocalSearchEngine/Local/WebContent" + File.separator + SAVE_DIR;
			            File fileSaveDir=new File(savePath);
			            if(!fileSaveDir.exists()){
			                fileSaveDir.mkdir();
			            }
			            
			            int year,landline,fax,toll,pin;
			            String email=request.getParameter("email");
			            String btype=request.getParameter("btype");  
	 
		                String subcate=request.getParameter("subcate");  
		           
		               
		               /* String email=request.getParameter("email"); */
		              
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
				        landline=Integer.parseInt(request.getParameter("landline")); 
				     
				        fax=Integer.parseInt(request.getParameter("fax")); 
				       
				        toll=Integer.parseInt(request.getParameter("toll")); 
				     
				        pin=Integer.parseInt(request.getParameter("pin")); 
				        
				        
		                String weblink=request.getParameter("weblink"); 
		                System.out.println(weblink);
		                String fblink=request.getParameter("fblink"); 
		                System.out.println(fblink);
		                String gglink=request.getParameter("gglink"); 
		                String ytblink=request.getParameter("ytblink"); 
		                String ltdlink=request.getParameter("ltdlink"); 

		                
		                String map=request.getParameter("map"); 
		                System.out.println(map);
		                
		                
		                
		                
				        DB_Connection obj_DB_Connection=new DB_Connection();
						Connection connection=obj_DB_Connection.get_connection();
						
						
						   String jdbc_insert_sql = "INSERT INTO category(email,category,subcategory,address,day,open,close,package,content,year,coverimg,logo,img,bimg,gimg,video,land,fax,toll,pin,linkone,linktwo,linkthree,linkfour,linkfive,map)VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

				   	         PreparedStatement ps = connection.prepareStatement(jdbc_insert_sql);
				   	      ps.setString(1, email);
				   	         ps.setString(2, btype);
				   	       
				   	   ps.setString(3, subcate);
				 /*  	 ps.setString(4, contact);*/
				   	
				   	 ps.setString(4, add);
				   	
				   	 ps.setNString(5, days);
				   	         ps.setString(6, open);
				   	         ps.setString(7, close);
				   	      ps.setString(8, ptype);
				   	         ps.setString(9, desc);
				   	      ps.setLong(10, year);
				   	      
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
				            
				            String filePath5= fileName5 ;
				            ps.setString(16,filePath5);
				   	      
				            ps.setLong(17, landline);
				            ps.setLong(18, fax);
				            ps.setLong(19, toll);
				            ps.setLong(20, pin);
				   	         ps.setString(21, weblink);
				   	         ps.setString(22, fblink);
				   	         ps.setString(23, gglink);
				   	        ps.setString(24, ytblink);
				   	        ps.setString(25, ltdlink);
				   	     
				   	        ps.setString(26, map);
				   	      
				   	      
				            
				            
				            
				            
				           /* ps.executeUpdate();*/
				   	         
				   	     
				   	       
				   	   
				   	ps.execute();
				   /*	out.println("<script type=\"text/javascript\">");
				   	out.println("alert('Record is Inserted');");
				   	out.println("location='adminpayment.jsp';");
				   	out.println("</script>");*/
				   	
				      request.getRequestDispatcher("adminpayment.jsp").include(request, response);
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



			            
			            
			            