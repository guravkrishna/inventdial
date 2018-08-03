<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String email=request.getParameter("email");
System.out.println(email);
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/localsearchengine", "root", "root");
Statement st=conn.createStatement();
int i=st.executeUpdate("delete l from listing l inner join category c on l.email=c.email where l.email='"+email+"'");
/*  out.println("Data Deleted Successfully!");  */

out.println("<script type=\"text/javascript\">");
out.println("alert('Record is Deleted');");
out.println("location='admin.jsp';");
out.println("</script>");


 }
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}%>
