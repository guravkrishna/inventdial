<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/localsearchengine";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String id = request.getParameter("id");

String membershiptype=request.getParameter("membershiptype");


Connection con = null;
PreparedStatement ps = null;
//int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update signup set membershiptype=? where id="+id;
ps = con.prepareStatement(sql);
//ps.setString(1,id);
ps.setString(1, membershiptype);


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