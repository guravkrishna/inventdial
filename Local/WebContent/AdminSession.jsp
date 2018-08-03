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
    String name = request.getParameter("uname");
	String password = request.getParameter("pwd");
	
	Connection con = null;
	PreparedStatement ps=null;
	ResultSet rs = null;
	String query="";
	//PrintWriter pw=response.getWriter();
	try
	{
		con = JDBCHelper.getConnection();
		query="select mail,pass from signup where mail=? and pass=?";
	    ps=con.prepareStatement(query);
	    ps.setString(1, name);
	    ps.setString(2, password);
	    rs=ps.executeQuery();
	    if(rs.next())
	    {
	    	request.getSession(true);
	    	session.setAttribute("uname",name);
			response.sendRedirect("admin.jsp");
	    }
	    else
		{
	    	//session.invalidate();
	        out.print("Invalid User or Password");
           // request.setAttribute("errorMessage", "Invalid user or password");
            //RequestDispatcher rd = request.getRequestDispatcher("/admin-login.jsp");
            //rd.forward( request, response);
			//response.sendRedirect("admin-login.jsp");
		}
	}
	    catch(SQLException e)
		{
			out.append(e.getMessage());
			//e.printStackTrace();
		}
		finally
		{
			JDBCHelper.close(rs);
			JDBCHelper.close(ps);
			JDBCHelper.close(con);
		}
	%>
    
</body>
</html>