<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String pack=request.getParameter("package");
System.out.println(pack);
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/localsearchengine", "root", "root");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM package1 WHERE package='"+pack+"'");
out.println("<script type=\"text/javascript\">");
out.println("alert('Package is Successfully Deleted');");
out.println("location='adminpackage.jsp';");
out.println("</script>");
 }

catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}%>
