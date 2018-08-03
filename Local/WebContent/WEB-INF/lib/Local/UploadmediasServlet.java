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

import LocalSimple.DbUtil;

/**
 * Servlet implementation class AdminListingServlet
 */
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
maxFileSize=1024*1024*10,      // 10MB
maxRequestSize=1024*1024*50)
public class UploadmediasServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static final String SAVE_DIR="uploadfile";
	private Connection conn;

	    public UploadmediasServlet() {
	        conn = DbUtil.getConnection();
	    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		String savePath = "C:/Users/Sushmitha.B/eclipse-workspace/LocalSearch/WebContent" + File.separator + SAVE_DIR;
        File fileSaveDir=new File(savePath);
        if(!fileSaveDir.exists()){
            fileSaveDir.mkdir();
        }

		PrintWriter out=response.getWriter();
		
		
        Part part=request.getPart("image");
        String fileName=extractFileName(part);
        System.out.println(fileName);
        part.write(savePath + File.separator + fileName);

        Part part1=request.getPart("logo");
        String fileName1=extractFileName(part1);
        System.out.println(fileName1);
        part1.write(savePath + File.separator + fileName1);

       

        
	        String message=null;
		try {
           PreparedStatement statement = conn.prepareStatement("insert into uploadmedia(image,logo)values(?,?)");
           
           
           String filePath= fileName ;
	   	   statement.setString(1,filePath);
	   	   
	       String filePath1= fileName1 ;
	   	   statement.setString(2,filePath1);
           
		  
	   	  
	  	  statement.execute();
	      request.getRequestDispatcher("useradmin.jsp").include(request, response);

           
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