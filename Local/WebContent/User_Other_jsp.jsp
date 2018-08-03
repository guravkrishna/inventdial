<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/localsearchengine";%>
<%!String user = "root";%>
<%!String psw = "root";%>
		<%
		/* String email = request.getParameter("email"); */
		String name=(String)session.getAttribute("name");
		System.out.println(name);
		String fax=request.getParameter("fax");
		System.out.println(fax);
		
		String toll=request.getParameter("toll");
		System.out.println(toll);
		String pin=request.getParameter("pin");
		System.out.println(pin);
		
		String linkone=request.getParameter("linkone");
		String linktwo=request.getParameter("linktwo");
		String linkthree=request.getParameter("linkthree");
		String linkfour=request.getParameter("linkfour");
		String link=request.getParameter("link");
		String map=request.getParameter("map");
		System.out.println(map);
		
		Connection con = null;
		PreparedStatement ps = null;
		//int personID = Integer.parseInt(id);
		try
		{
		Class.forName(driverName);
		con = DriverManager.getConnection(url,user,psw);
		String sql="Update category set email=?,fax=?,toll=?,pin=?,linkone=?,linktwo=?,linkthree=?,linkfour=?,linkfive=?,map=? where email='"+name+"'";
		ps = con.prepareStatement(sql);
		//ps.setString(1,id);
		ps.setString(1, name);
		
		ps.setString(2, fax);
		ps.setString(3, toll);
		ps.setString(4, pin);
		ps.setString(5, linkone);
		ps.setString(6, linktwo);
		ps.setString(7, linkthree);
		ps.setString(8, linkfour);
		ps.setString(9, link);
		ps.setString(10, map);
		int i = ps.executeUpdate();
		if(i > 0)
		{
		//out.print("Record Updated Successfully");
		request.getRequestDispatcher("Useradmin.jsp").include(request,response);
		con.close();
		ps.close();
		}
		else
		{
		     out.print("There is a problem in updating Record.");
		} 
		}
		catch(SQLException sql)
		{
		request.setAttribute("error", sql);
		out.println(sql);
		}
		
		%>