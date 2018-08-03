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
@MultipartConfig(fileSizeThreshold=1024*1024*100, // 2MB
maxFileSize=1024*1024*100,      // 10MB
maxRequestSize=1024*1024*100)
public class UploadmediasServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static final String SAVE_DIR="uploadimg";
	private Connection conn;

	    public UploadmediasServlet() {
	        conn = DbUtil.getConnection();
	    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		String savePath = "C:/Users/Sushmitha.B/git/LocalSearchEngine/Local/WebContent" + File.separator + SAVE_DIR;
        File fileSaveDir=new File(savePath);
        if(!fileSaveDir.exists()){
            fileSaveDir.mkdir();
        }

		PrintWriter out=response.getWriter();
		String email=request.getParameter("email");
		
        Part part=request.getPart("nimg");
        String fileName=extractFileName(part);
        System.out.println(fileName);
        part.write(savePath + File.separator + fileName);

        Part part1=request.getPart("neimg");
        String fileName1=extractFileName(part1);
        System.out.println(fileName1);
        part1.write(savePath + File.separator + fileName1);
        
        Part part2=request.getPart("vid");
        String fileName2=extractFileName(part2);
        System.out.println(fileName2);
        part1.write(savePath + File.separator + fileName2);

       

        
	        String message=null;
		try {
           PreparedStatement statement = conn.prepareStatement("Update localsearchengine.listing l join localsearchengine.category c on l.email=c.email set c.nimg=?,c.neimg=?,c.vid=?  where l.email='"+email+"'");
           
           
           String filePath= fileName ;
	   	   statement.setString(1,filePath);
	   	   
	       String filePath1= fileName1 ;
	   	   statement.setString(2,filePath1);
           
	   	String filePath2= fileName2 ;
	   	   statement.setString(3,filePath2);
	   	  
	  	  statement.execute();
	      request.getRequestDispatcher("Useradmin.jsp").include(request, response);

           
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