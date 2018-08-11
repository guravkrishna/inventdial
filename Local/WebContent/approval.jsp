<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/localsearchengine";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String con1 = request.getParameter("contact");
System.out.println(con1);

Connection con = null;
PreparedStatement ps = null;
//int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update category set approval='Approval' where contact='"+con1+"'";
ps = con.prepareStatement(sql);
/* //ps.setString(1,id);
/* ps.setString(1, con1); */
//ps.setString(1, con1); 

int i = ps.executeUpdate();
if(i > 0)
{
//out.print("Record Updated Successfully");
request.getRequestDispatcher("admin.jsp").include(request,response);

}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(Exception sql)
{
	sql.printStackTrace();
request.setAttribute("error", sql);
out.println(sql);
}
finally
{
	ps.close();
	con.close();
}

%>