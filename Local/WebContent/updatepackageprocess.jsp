<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*" %>
<%@page import=" java.sql.Date" %>
<%@ page import= "java.text.ParseException"%>
<%@ page import="java.text.SimpleDateFormat"%>

<%!String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/localsearchengine";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String pack = request.getParameter("package");
		/*  String fname=request.getParameter("pa");   */
         
         String one=request.getParameter("one");  
        String two=request.getParameter("two"); 
        /* float rat = Float.parseFloat(request.getParameter("rat"));  */
         String three=request.getParameter("three"); 
       /*  year=Integer.parseInt(request.getParameter("year")); */ 
         /* String sdate=request.getParameter("sdate"); 
        
         String edate=request.getParameter("edate");  */
        
         SimpleDateFormat formater = new SimpleDateFormat("yyyy-MM-dd");
         
         java.util.Date util_StartDate = formater.parse(request.getParameter("sdate"));
         java.sql.Date sdate = new java.sql.Date( util_StartDate.getTime() );
         java.util.Date util_EndDate = formater.parse(request.getParameter("edate"));
         java.sql.Date edate = new java.sql.Date( util_StartDate.getTime() );
         
         
         
       String amount=request.getParameter("amount"); 
         String link=request.getParameter("link"); 
         System.out.println(link);
         String secondlink=request.getParameter("secondlink"); 
         System.out.println(secondlink);
         String map=request.getParameter("map"); 
         System.out.println(map);
         
         if(pack != null)
         {
         Connection con = null;
         PreparedStatement ps = null;
        /*  int personID = Integer.parseInt(id); */
         try
         {
         Class.forName(driverName);
         con = DriverManager.getConnection(url,user,psw);
         String sql="Update package1 set package=?,one=?,two=?,three=? ,sdate=?,edate=?,amount=?where package='"+pack+"'";
         ps = con.prepareStatement(sql);
         ps.setString(1,pack);
         ps.setString(2,one);
         ps.setString(3,two);
         ps.setString(4,three);
         ps.setDate(5, sdate);
         ps.setDate(6, edate);
       /*   ps.setString(7,days);  */
         ps.setString(7, amount);
         
        


         int i = ps.executeUpdate();
         if(i > 0)
         {
        	 out.println("<script type=\"text/javascript\">");
        	   out.println("alert('Package is Successfully Updated');");
        	   out.println("location='adminpackage.jsp';");
        	   out.println("</script>");
         }
         else
         {
        	 out.println("<script type=\"text/javascript\">");
      	   out.println("alert('Package is not Successfully Updated');");
      	   out.println("location='adminpackage.jsp';");
      	   out.println("</script>");
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