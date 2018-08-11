<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/localsearchengine";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String con1 = request.getParameter("con");
String land=request.getParameter("land");
String fax=request.getParameter("fax");
String pin=request.getParameter("pin");
String toll=request.getParameter("toll");
String linkone=request.getParameter("linkone");
String linktwo=request.getParameter("linktwo");
String linkthree=request.getParameter("linkthree");
String linkfour=request.getParameter("linkfour");
String link=request.getParameter("link");
String map=request.getParameter("map");

Connection con = null;
PreparedStatement ps = null;
//int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update category set land=?,fax=?,toll=?,pin=?,linkone=?,linktwo=?,linkthree=?,linkfour=?,linkfive=?,map=? where contact='"+con1+"'";
ps = con.prepareStatement(sql);
//ps.setString(1,id);
/* ps.setString(1, con1); */
ps.setString(1, land);
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

request.getRequestDispatcher("Recordsuccess.jsp").include(request,response);
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