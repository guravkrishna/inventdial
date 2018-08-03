package Local;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
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

import Local.DbUtil;

/**
 * Servlet implementation class AdminListingServlet
 */
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
maxFileSize=1024*1024*10,      // 10MB
maxRequestSize=1024*1024*50)
public class AdminListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static final String SAVE_DIR="uploadfile";
	private Connection conn;

	    public AdminListServlet() {
	        conn = DbUtil.getConnection();
	    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		String savePath = "C:/Users/Manju/eclipse-workspace/LocalSearch/WebContent" + File.separator + SAVE_DIR;
        File fileSaveDir=new File(savePath);
        if(!fileSaveDir.exists()){
            fileSaveDir.mkdir();
        }

		PrintWriter out=response.getWriter();
		String first_name=request.getParameter("first_name");
		String last_name=request.getParameter("last_name");
		String list_name=request.getParameter("list_name");
		String list_phone=request.getParameter("list_phone");
		String email=request.getParameter("email");
		String list_addr=request.getParameter("list_addr");
		String list_type=request.getParameter("list_type");
		String choose_city=request.getParameter("choose_city");
		String select_category=request.getParameter("select_category");
		String opening_days=request.getParameter("opening_days");
		String open_time=request.getParameter("open_time");
		String closing_time=request.getParameter("closing_time");
		String textarea1=request.getParameter("textarea1");
		String facebook=request.getParameter("facebook");
		String googleplus=request.getParameter("googleplus");
		String twitter=request.getParameter("twitter");
		String service=request.getParameter("service");
		String professional=request.getParameter("professional");
		String insurance=request.getParameter("insurance");

        Part part=request.getPart("file1");
        String fileName=extractFileName(part);
        System.out.println(fileName);
        part.write(savePath + File.separator + fileName);

        Part part1=request.getPart("file2");
        String fileName1=extractFileName(part1);
        System.out.println(fileName1);
        part1.write(savePath + File.separator + fileName1);

        Part part2=request.getPart("file3");
        String fileName2=extractFileName(part2);
        System.out.println(fileName2);
        part2.write(savePath + File.separator + fileName2);

        Part part3=request.getPart("file4");
        String fileName3=extractFileName(part3);
        System.out.println(fileName3);
        part3.write(savePath + File.separator + fileName3);

        Part part4=request.getPart("file5");
        String fileName4=extractFileName(part4);
        System.out.println(fileName4);
        part4.write(savePath + File.separator + fileName4);

	        String message=null;
		try {
           PreparedStatement statement = conn.prepareStatement("insert into listing(first_name,last_name,list_name,list_phone,email,list_addr,list_type,choose_city,select_category,opening_days,open_time,closing_time,textarea1,facebook,googleplus,twitter,service,professional,insurance,file1,file2,file3,file4,file5)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
           statement.setString(1,first_name);
           statement.setString(2,last_name);
           statement.setString(3,list_name);
           statement.setString(4,list_phone);
           statement.setString(5,email);
           statement.setString(6,list_addr);
           statement.setString(7,list_type);
           statement.setString(8,choose_city);
           statement.setString(9,select_category);
           statement.setString(10,opening_days);
           statement.setString(11,open_time);
           statement.setString(12,closing_time);
           statement.setString(13,textarea1);
           statement.setString(14,facebook);
           statement.setString(15,googleplus);
           statement.setString(16,twitter);
           statement.setString(17,service);
           statement.setString(18,professional);
           statement.setString(19,insurance);
           
           String filePath= fileName ;
	   	   statement.setString(20,filePath);
	   	   
	       String filePath1= fileName1 ;
	   	   statement.setString(21,filePath1);
           
		   String filePath2= fileName2 ;
	   	   statement.setString(22,filePath2);
	   	   
	  	  String filePath3= fileName3 ;
	   	  statement.setString(23,filePath3);
	   	  
	   	  String filePath4= fileName4 ;
	   	  statement.setString(24,filePath4);
	   	  
	  	  statement.execute();
	      request.getRequestDispatcher("admin.jsp").include(request, response);

           
		}
		catch (SQLException ex) {
           message = "ERROR: " + ex.getMessage();
           ex.printStackTrace();
        }
	   }
		private String extractFileName(Part part) 
		{
		    String contentDisp = part.getHeader("content-disposition");
		    String[] items = contentDisp.split(";");
		    for (String s : items)
		    {
		        if (s.trim().startsWith("filename")) {
		            return s.substring(s.indexOf("=") + 2, s.length()-1);
		        }
		    }
		    return "";
	   }
}
