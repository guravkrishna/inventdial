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
<title>Change Password</title>
</head>
<body>
     <%
        String pass=request.getParameter("cpass");
		String pass1=request.getParameter("npass");
		String pass2=request.getParameter("rpass");
		//PrintWriter pw=resultSet.getWriter();
		Connection con = null;
		PreparedStatement ps=null;
		PreparedStatement ps2=null;
		ResultSet rs = null;
		String query="";
		String query2="";
		
		HttpSession hs=request.getSession(false);
		String s=(String)hs.getAttribute("email");
		//System.out.println(s);
		
		  try
		  {
			con = JDBCHelper.getConnection();
			query="select password from signup where email=? and pwd=?";
		    ps=con.prepareStatement(query);
		    ps.setString(1, s);
		    ps.setString(2, pass);
		    rs=ps.executeQuery();
		    if(rs.next())
		    {
		    	query2="update signup set password=? where  email=?";
		    	ps2=con.prepareStatement(query2);
		    	ps2.setString(1, pass1);
		    	//ps.setString(2, pass);
		    	ps2.setString(2,s);
		    	if(ps2.executeUpdate()!=0)
		    	   out.print("Password Changed Successfully");
		    	else
		    		out.print("failed");
		    }
		    else
		    {
		    	out.write("Plz type ur Current Password Correct");
		    }
		}
		catch(SQLException e)
		{
			out.write(e.getMessage());
			//e.printStackTrace();
		}
		finally
		{
			JDBCHelper.close(rs);
			JDBCHelper.close(ps2);
			JDBCHelper.close(ps);
			JDBCHelper.close(con);
		}
     %>
</body>
</html>