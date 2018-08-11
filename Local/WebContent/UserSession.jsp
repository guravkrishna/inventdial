


<%@ page import="java.sql.*" %>
<%-- <%@ page import="java.io.*" %>
<%@ page import="java.util.*"%>
<%@ page import="Local.JDBCHelper"%> --%>

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
    String name = request.getParameter("phone");
    System.out.println(name);
  
	String password = request.getParameter("passw");
	
	/* Connection con = null;
	PreparedStatement ps=null;
	ResultSet rs = null;
	String query=""; */
	//PrintWriter pw=response.getWriter();
	try
	{
		 Class.forName("com.mysql.jdbc.Driver");
		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/localsearchengine",
		            "root", "root");
		    Statement st = con.createStatement();
		    ResultSet rs;
		    rs = st.executeQuery("select * from signup where contact='"+name+"' and password='" + password + "'");
		
		 if (rs.next()) {
		        session.setAttribute("name", name);
		        //out.println("welcome " + userid);
		        //out.println("<a href='logout.jsp'>Log out</a>");
		        response.sendRedirect("Useradmin.jsp");
		    } 
		    else
		    {
		    	/* out.println("<script type=\"text/javascript\">");
                out.println("alert('Invalid Email or Password')");
                out.println("location='UserLogin.jsp';");
                out.println("</script>"); */
		    	response.sendRedirect("error_msg.jsp");
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











