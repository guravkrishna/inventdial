<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.DriverManager"%>
	<%@page import="java.sql.ResultSet"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.Connection"%>
	<%
		String id = request.getParameter("id");
		String driver = "com.mysql.jdbc.Driver";
		String connectionUrl = "jdbc:mysql://localhost:3306/";
		String database = "localsearchengine";
		String userid = "root";
		String password = "root";
		try {
				Class.forName(driver);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
				}
			Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
	%>            
<section id="background" class="dir1-home-head">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="dir-ho-tl">
						<ul>
							<li>
								<a href="EndUserMain.jsp"><img src="images/logo.gif" alt=""> </a>
							</li>
						</ul>
					</div>
				</div>
				
				<div class="col-md-6 col-sm-6">
					<div class="dir-ho-tr">
						<ul>
						<!-- 	<li><a href="register.jsp">Register</a> </li>
							
							
							<li><a href="UserLogin.jsp">Sign In</a> </li> -->
								<%
					    try{
					    	String contact=(String)session.getAttribute("contact");
					       
					        System.out.println(contact);
							connection = DriverManager.getConnection(connectionUrl+database, userid, password);
							request.getSession(true);
							statement=connection.createStatement();
							String sql ="select * from endusersignup  where contact='"+contact+"'";
							System.out.println(sql);
							// select * from listing where id='"+search+"' or first_name like '%"+search+"%' ; 
							resultSet = statement.executeQuery(sql);
							if(resultSet.next()){												
	                 %>  
							<li><a href="Userfreelisting.jsp"><i class="fa fa-plus" aria-hidden="true"></i> Add Listing</a> </li>
							<li><a href="Userfreelisting.jsp"><i class="fa fa-plus" aria-hidden="true"></i> Welcome:<%=resultSet.getString("firstname") %></a> </li>
						<li><a href="logoutenduser.jsp"><i class="fa fa-plus" aria-hidden="true"></i> Logout</a> </li>
						<%
							}
							connection.close();
							} catch (Exception e) {
							e.printStackTrace();
							}
					%>	
							
						</ul>
					</div>
				</div>
			</div>
		</div>

</body>
</html>