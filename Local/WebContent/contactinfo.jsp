<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/localsearchengine";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
//String id = request.getParameter("id");
String fname=request.getParameter("fname");

String phone=request.getParameter("phone");
String fax=request.getParameter("fax");
String pin=request.getParameter("pin");
String toll=request.getParameter("toll");
String email=request.getParameter("email");
String linkone=request.getParameter("linkone");
String map=request.getParameter("map"); 



Connection con = null;
PreparedStatement ps = null;
//int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update localsearchengine.listing l join localsearchengine.category c on l.email=c.email set l.fname=?,l.phone=?,c.fax=?,c.pin=?,c.toll=?,l.email=?,c.linkone=?,c.map=?   where l.email='"+email+"'";

ps = con.prepareStatement(sql);

//ps.setString(1,id);
ps.setString(1, fname);

ps.setString(2, phone);
ps.setString(3, fax);
ps.setString(4, pin);
ps.setString(5, toll);
ps.setString(6, email);
ps.setString(7, linkone);
ps.setString(8, map);  




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