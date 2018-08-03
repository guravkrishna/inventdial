<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/localsearchengine";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String mail = request.getParameter("mail");
System.out.println(mail);

String pass=request.getParameter("pass");
System.out.println(pass);


Connection con = null;
PreparedStatement ps = null;
//int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update localsearchengine.signup  set email=?, password=?  where email='"+mail+"'";
System.out.println(sql);
ps = con.prepareStatement(sql);
//ps.setString(1,id);
ps.setString(1,mail);
ps.setString(2, pass);


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