<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/localsearchengine";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%

String contact=request.getParameter("contact");
//String phone=request.getParameter("phone");
String open = request.getParameter("open");
String close=request.getParameter("close");
String day=request.getParameter("day");
//String paymentmode=request.getParameter("paymentmode");
String content=request.getParameter("content");

Connection con = null;
PreparedStatement ps = null;
//int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update listing l join category c on l.contact=c.contact set c.open=?,c.close=?,c.day=?,c.content=? where l.contact='"+contact+"'";
ps = con.prepareStatement(sql);
//ps.setString(1,id);
ps.setString(1, open);
ps.setString(2, close);
ps.setString(3, day);
//ps.setString(4, paymentmode);
ps.setString(4, content);

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