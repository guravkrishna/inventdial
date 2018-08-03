<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*" %>

<%!String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/localsearchengine";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
			int year;
			String id = request.getParameter("id");
			String category=request.getParameter("category");  
			String bname=request.getParameter("business_name");
			String subname=request.getParameter("sub_business"); 
			String email=request.getParameter("email");
			String address=request.getParameter("list_addr");
			String days="";
			String[] day=request.getParameterValues("daynames"); 
			for(int i=0; i<day.length; i++){
			    days+=day[i]+" ";
			}
			/*String day=request.getParameter("daynames");*/
			String opentime=request.getParameter("open");
			String closetime=request.getParameter("close");
			String packagename=request.getParameter("btype");
			String listdec=request.getParameter("description");
			year=Integer.parseInt(request.getParameter("year"));
			String website=request.getParameter("weblink");
			String facelink=request.getParameter("facelink");
			String googlelink=request.getParameter("googlelink");
			String map=request.getParameter("map");
         
         if(id != null)
         {
         Connection con = null;
         PreparedStatement ps = null;
         int personID = Integer.parseInt(id);
         try
         {
         Class.forName(driverName);
         con = DriverManager.getConnection(url,user,psw);
          String sql="Update category set category=?,title=?,subcategory=?,email=? ,address=?,day=?,open=?,close=?,package=?,content=?,linkone=?,linktwo=?,linkthree=?,map=?where id="+id;
         ps = con.prepareStatement(sql);
        	 ps.setString(1, category);
	         ps.setString(2, bname);
	         ps.setString(3, subname);
	         ps.setString(4, email);
	         ps.setString(5, address);
	         ps.setString(6, days);
	         ps.setString(7, opentime);
	         ps.setString(8, closetime);
	         ps.setString(9, packagename);
	         ps.setString(10, listdec);
	         ps.setLong(11, year);
	         ps.setString(12, website);
	         ps.setString(13, facelink);
	         ps.setString(14, googlelink);
	         ps.setString(15, map);
        


         int i = ps.executeUpdate();
         if(i > 0)
         {
       out.print("Record Updated Successfully");
         }
         else
         {
       out.print("There is a problem in updating Record.");
         } 
         
         
        
         }catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		

	
         } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

%>