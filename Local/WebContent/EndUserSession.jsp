<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*"%>
<%@ page import="Local.JDBCHelper"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    
  <%
    response.setContentType("text/html");
    String contact = request.getParameter("con");
    System.out.println(contact);
	
    try
	{
		 Class.forName("com.mysql.jdbc.Driver");
		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/localsearchengine",
		            "root", "root");
		    Statement st = con.createStatement();
		    ResultSet rs;
		  /*   rs = st.executeQuery("select * from endusersignup where contact='" + con + "'"); */
		  String sql= "select * from endusersignup where contact='" + contact + "'";
		  System.out.println(sql);
		  rs = st.executeQuery(sql);
		
		 if (rs.next())
		 {
			 System.out.println("hi");
		        session.setAttribute("contact", contact);
		        //out.println("welcome " + userid);
		        //out.println("<a href='logout.jsp'>Log out</a>");
		        response.sendRedirect("EndUserMain.jsp");
		    } else {
		    	out.println("<script type=\"text/javascript\">");
			   	out.println("alert('Incorrect OTP!');");
			   	out.println("location='EndUserLogin.jsp';");
			   	out.println("</script>");
		       /*  out.println("Invalid password <a href='EndUserLogin.jsp'>try again</a>"); */
		    }
	   
	}
	    catch(SQLException e)
		{
			out.append(e.getMessage());
			//e.printStackTrace();
		}
	/* 	finally
		{
			JDBCHelper.close(rs);
			JDBCHelper.close(ps);
			JDBCHelper.close(con);
		} */
	%>
    
</body>
</html>
