<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%
session.setAttribute("name", null);
session.invalidate();
/* out.println("<script type=\"text/javascript\">");
out.println("alert('Are You Sure to Logout!');");
out.println("location='main.jsp';");
out.println("</script>"); */
 response.sendRedirect("logout_success.jsp"); 
%>

</body>
</html>