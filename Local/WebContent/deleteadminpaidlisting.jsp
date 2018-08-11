<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String title=request.getParameter("BusinessTitle");
 System.out.println(title); 
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/localsearchengine", "root", "root");
Statement st=conn.createStatement();
int i=st.executeUpdate("delete c from listing l inner join category c on l.contact=c.contact where c.BusinessTitle='"+title+"'");
request.getRequestDispatcher("deletesuccess.jsp");
 

 }
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}%>
