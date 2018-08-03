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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class AddBusiness
 */
//@WebServlet("/AddBusiness")
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
maxFileSize=1024*1024*10,      // 10MB
maxRequestSize=1024*1024*50)
public class AddBusiness extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SAVE_DIR="uploadimages";
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddBusiness() {
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
	        
	  
	        	
	        		String fname=request.getParameter("fname");  
	                String lname=request.getParameter("lname");  
	                String title=request.getParameter("title");  
	               String contact=request.getParameter("phone"); 
	               /* float rat = Float.parseFloat(request.getParameter("rat"));  */
	                String email=request.getParameter("email"); 
	              /*  year=Integer.parseInt(request.getParameter("year")); */ 
	                String add=request.getParameter("add"); 
	                String btype=request.getParameter("btype"); 
	                System.out.println(btype);
	                String city=request.getParameter("city"); 
	                String category=request.getParameter("category"); 
	                String subcategory=request.getParameter("subcategory");
	                String days="";
	                String[] day=request.getParameterValues("daynames"); 
	                for(int i=0; i<day.length; i++){
	                    days+=day[i]+" ";
	                }
	                String open=request.getParameter("open"); 
	                String close=request.getParameter("close"); 
	                String desc=request.getParameter("desc"); 
	                String link=request.getParameter("link"); 
	                System.out.println(link);
	                String secondlink=request.getParameter("secondlink"); 
	                System.out.println(secondlink);
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
			        
			        Part part2=request.getPart("img1");
			        String fileName2=extractFileName(part2);
			        System.out.println(fileName2);
			        part.write(savePath + File.separator + fileName2);
			        
			        Part part3=request.getPart("img2");
			        String fileName3=extractFileName(part3);
			        System.out.println(fileName3);
			        part3.write(savePath + File.separator + fileName3);
			        
			        Part part4=request.getPart("img3");
			        String fileName4=extractFileName(part4);
			        System.out.println(fileName4);
			        part4.write(savePath + File.separator + fileName4);
			        
			        Part part5=request.getPart("img4");
			        String fileName5=extractFileName(part5);
			        System.out.println(fileName5);
			        part5.write(savePath + File.separator + fileName5);
			        DB_Connection obj_DB_Connection=new DB_Connection();
					Connection connection=obj_DB_Connection.get_connection();
				/*	PreparedStatement ps=null;*/
	                
	              /*  Class.forName("com.mysql.jdbc.Driver");
	   	         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/justdial","root", "root");
	   	         System.out.println("Connection :"+con);
	   	        // @SuppressWarnings("unused")
	   	         Statement sql_statement = con.createStatement();*/
	   	         String jdbc_insert_sql = "INSERT INTO adminbusi(fname,lname,title,phone,email,address,type,city,category,subcategory,day,open,close,content,link,linktwo,map,cover,logo,photo,img,gimg,bimg)VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

	   	         PreparedStatement ps = connection.prepareStatement(jdbc_insert_sql);
	   	         ps.setString(1, fname);
	   	         ps.setString(2,lname);
	   	   ps.setString(3, title);
	   	 ps.setString(4, contact);
	   	 ps.setString(5, email);
	   	 ps.setString(6, add);
	   	 ps.setString(7, btype);
	   	 ps.setString(8, city);
	   	 ps.setString(9, category);
	   	ps.setString(10, subcategory);
	   	
	   	 ps.setNString(11, days);
	   	         ps.setString(12, open);
	   	         ps.setString(13, close);
	   	         ps.setString(14, desc);
	   	         ps.setString(15, link);
	   	         ps.setString(16, secondlink);
	   	         ps.setString(17, map);
	   	      
	   	      String filePath= fileName ;
	         ps.setString(18,filePath);
	         
	            String filePath1= fileName1 ;
	            ps.setString(19,filePath1);
	            
	            String filePath2= fileName2 ;
	            ps.setString(20,filePath2);
	            
	            String filePath3= fileName3 ;
	            ps.setString(21,filePath3);
	            String filePath4= fileName4 ;
	            ps.setString(22,filePath4);
	            
	            String filePath5= fileName5 ;
	            ps.setString(23,filePath5);
	            
	            
	            
	            
	           /* ps.executeUpdate();*/
	   	         
	   	     
	   	       
	   	   
	   	ps.execute();
	       request.getRequestDispatcher("main.html").include(request, response);
		}catch(SQLException e){
	   				e.printStackTrace();
	   			} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
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


