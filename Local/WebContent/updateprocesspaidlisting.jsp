<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*" %>


<%!String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/localsearchengine";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String email = request.getParameter("email");
System.out.println(email);
		 String fname=request.getParameter("fname");  
		 String lname=request.getParameter("lname"); 
		  String cont=request.getParameter("cont"); 
         String subname=request.getParameter("subname"); 
         String btype=request.getParameter("btype"); 
         String subcate=request.getParameter("subcate"); 
      
        /* float rat = Float.parseFloat(request.getParameter("rat"));  */
        
       /*  year=Integer.parseInt(request.getParameter("year")); */ 
         String add=request.getParameter("add"); 
        
         String city=request.getParameter("city"); 
        
         /*  String days="";
         String[] day=request.getParameterValues("daynames"); 
         for(int i=0; i<day.length; i++){
             days+=day[i]+" ";
         }  */
         /* String open=request.getParameter("open"); 
         String close=request.getParameter("close"); */
         String ptype=request.getParameter("ptype");
       String desc=request.getParameter("desc"); 
       String year=request.getParameter("year");
         String link=request.getParameter("link"); 
         /* System.out.println(link);
         String secondlink=request.getParameter("secondlink"); 
         
         System.out.println(secondlink);
         String thirdlink=request.getParameter("thirdlink");  */
         String map=request.getParameter("map"); 
         System.out.println(map);
         
         if(email != null)
         {
         Connection con = null;
         PreparedStatement ps = null;
        /*  String  personID = String .parseInt(email); */
         try
         {
         Class.forName(driverName);
         con = DriverManager.getConnection(url,user,psw);
         String sql="Update listing l join category c on l.id=c.id set fname=?,lname=?,phone=?,BusinessTitle=?,category=?,subcategory=? ,address=?,city=?,package=?,content=?,year=?,linkone=?,map=? where l.email='"+email+"'";
         ps = con.prepareStatement(sql);
         ps.setString(1,fname);
         ps.setString(2,lname);
         ps.setString(3,cont);
         ps.setString(4,subname);
         ps.setString(5,btype);
         ps.setString(6, subcate);
        
       /*   ps.setString(7,days);  */
         ps.setString(7, add);
         ps.setString(8,city);
        /*  ps.setString(9,open);
         ps.setString(10,close); */
         ps.setString(9,ptype);
         ps.setString(10,desc);
         ps.setString(11,year);
  ps.setString(12,link);
  /*ps.setString(15,secondlink);
         ps.setString(16,thirdlink); */
         ps.setString(13,map);
        


         int i = ps.executeUpdate();
         if(i > 0)
         
        	 
        	
{
   out.println("<script type=\"text/javascript\">");
   out.println("alert('Record is Successfully Updated');");
   out.println("location='admin.jsp';");
   out.println("</script>");
}
       
         else
         {
        	 out.println("<script type=\"text/javascript\">");
        	   out.println("alert('Record is Successfully not  Updated');");
        	   out.println("location='updateadminpaidlisting.jsp';");
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