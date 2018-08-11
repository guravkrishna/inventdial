<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%-- <%@page import="Local.SendMsgToAll" %> --%>
<%@page import="Local.SendBulkMsg" %>
<%

String days="";
String[] day=request.getParameterValues("contacts"); 
for(int i=0; i<day.length; i++){
    days+=day[i]+",";
}
System.out.println(days);
String msg=request.getParameter("msg");  
System.out.println(msg);
SendBulkMsg  s=new SendBulkMsg() ; 
SendBulkMsg.SMSSender(days, msg);  
 out.println("<script type=\"text/javascript\">");
	out.println("alert('Message is Successfully Sending!');");
	out.println("location='Useradmin.jsp';");
	out.println("</script>");
%>
<!-- <script>
alert("Message is Successfully Sending!");
return false;
</script>
 -->
</body>
</html>