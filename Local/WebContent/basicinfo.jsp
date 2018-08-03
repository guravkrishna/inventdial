<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/localsearchengine";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
//String id = request.getParameter("id");
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String phone=request.getParameter("phone");
String land=request.getParameter("land");
String email=request.getParameter("email");
String category=request.getParameter("category");
String address=request.getParameter("address");
String city=request.getParameter("city");
 /* String landlinenum=request.getParameter("landlinenum");
String faxnum=request.getParameter("faxnum");
String tollfreenum=request.getParameter("tollfreenum");
String linkone=request.getParameter("linkone"); */
/* String map=request.getParameter("map"); 
String open=request.getParameter("open");
String close=request.getParameter("close");
String day=request.getParameter("day");
String paymentmode=request.getParameter("paymentmode");
String content=request.getParameter("content");
 */

Connection con = null;
PreparedStatement ps = null;
//int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update localsearchengine.listing l join localsearchengine.category c on l.email=c.email set l.fname=?,l.lname=?,l.phone=?,l.land=?,l.email=?,l.category=?,c.address=?,l.city=?   where l.email='"+email+"'";

ps = con.prepareStatement(sql);

//ps.setString(1,id);+

ps.setString(1, fname);
ps.setString(2, lname);
ps.setString(3, phone);
ps.setString(4, land);
ps.setString(5, email);
ps.setString(6, category);
ps.setString(7, address);
ps.setString(8, city);
//ps.setString(7, landlinenum);
//ps.setString(8, faxnum);
//ps.setString(9, tollfreenum);
//ps.setString(10, linkone);
/* ps.setString(11, map);  
//ps.setString(12,open);c.landlinenum=?,c.faxnum=?,c.tollfreenum=?,c.linkone=?,c.map=?,c.open=?,c.close=?,c.day=?,c.paymentmode=?,c.content=?
//ps.setString(13,close);
//ps.setString(14, day);
//ps.setString(15, paymentmode);
//ps.setString(16, content); */



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