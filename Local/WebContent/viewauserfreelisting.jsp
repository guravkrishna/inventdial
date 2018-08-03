<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
	
</head>

<body>
<%@include file="user_header.jsp" %>
		<%
		 String email=request.getParameter("email"); 
		/* String title=request.getParameter("title");
		System.out.println(title); */
		/* System.out.println(email);
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "localsearchengine";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null; */
%>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql="select * from listing l join category c on l.email=c.email where l.email='"+email+"'";
System.out.println(sql);
resultSet = statement.executeQuery(sql);
 while(resultSet.next()){%>
			<!--== BODY INNER CONTAINER ==-->
			<div class="sb2-2">
				<!--== breadcrumbs ==-->
				<div class="sb2-2-2">
					<ul>
						<li><a href="main.html"><i class="fa fa-home" aria-hidden="true"></i> Home</a> </li>
						<li class="active-bre"><a href="#"> View Business</a> </li>
						<li class="page-back"><a href="#"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
				<div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
						<h4>View Business</h4> <!-- <a class="dropdown-button drop-down-meta drop-down-meta-inn" href="#" data-activates="dr-list"><i class="material-icons">more_vert</i></a> -->
						<!-- <ul id="dr-list" class="dropdown-content">
							<li><a href="#!">Add New</a> </li>
							<li><a href="#!">Edit</a> </li>
							<li><a href="#!">Update</a> </li>
							<li class="divider"></li>
							<li><a href="#!"><i class="material-icons">delete</i>Delete</a> </li>
							<li><a href="#!"><i class="material-icons">subject</i>View All</a> </li>
							<li><a href="#!"><i class="material-icons">play_for_work</i>Download</a> </li>
						</ul> -->
						<!-- Dropdown Structure -->
						<div class="split-row">
							<div class="col-md-12">
								<div class="box-inn-sp ad-inn-page">
									<div class="tab-inn ad-tab-inn">
										<table class="responsive-table bordered">
											<tbody>
												<tr>
													<td>First Name</td>
													<td>:</td>
													<td><%=resultSet.getString(3)%></td>
												</tr>
												<tr> 
													<td>Last Name</td>
													<td>:</td>
													<td><%=resultSet.getString(4)%></td>
												</tr>
												<tr>
													<td>Title</td>
													<td>:</td>
													<td><%=resultSet.getString(2)%></td>
												</tr>
												<tr>
													<td>Contact Number</td>
													<td>:</td>
													<td><%=resultSet.getString(5)%></td>
												</tr>
												<tr>
													<td>Address</td>
													<td>:</td>
													<td><%=resultSet.getString(12)%></td>
												</tr>
												<tr>
													<td>Package</td>
													<td>:</td>
													<td><%=resultSet.getString(16)%></td>
												</tr>
												<tr>
													<td>Days</td>
													<td>:</td>
													<td><span class="label label-danger"><%=resultSet.getString(13)%></span>
													</td>
												</tr>
												<tr>
													<td>Opening Time</td>
													<td>:</td>
													<td><span class="label label-danger"><%=resultSet.getString(14)%></span>
													</td>
												</tr>
												<tr>
													<td>Closing Time</td>
													<td>:</td>
													<td><span class="label label-danger"><%=resultSet.getString(15)%></span>
													</td>
												</tr>
												<tr>
													<td>Content</td>
													<td>:</td>
													<td><span class="label label-success"><%=resultSet.getString(17)%></span> </td>
												</tr>
												<tr>
													<td>Year</td>
													<td>:</td>
													<td><span class="label label-success"><%=resultSet.getString(18)%></span> </td>
												</tr>
												<tr>
													<td>Landline Number</td>
													<td>:</td>
													<td><span class="label label-success"><%=resultSet.getString(25)%></span> </td>
												</tr>
												<tr>
													<td>Fax Number</td>
													<td>:</td>
													<td><span class="label label-success"><%=resultSet.getString(26)%></span> </td>
												</tr>
												<tr>
													<td>Toll Free Number</td>
													<td>:</td>
													<td><span class="label label-success"><%=resultSet.getString(27)%></span> </td>
												</tr>
												<tr>
													<td>Pincode</td>
													<td>:</td>
													<td><span class="label label-success"><%=resultSet.getString(28)%></span> </td>
												</tr>
												<tr>
													<td>Link</td>
													<td>:</td>
													<td><span class="label label-primary"><%=resultSet.getString(29)%></span> </td>
												</tr>
												
											</tbody>
										</table>
										<div class="col-md-6">
										  <div class="list-mig-like-com">
											    <div class="list-mig-lc-img"><img src="uploadimg/<%=resultSet.getString("logo")%>" alt="Cannot Open Image"></div>
										   </div>	
										</div>
										<div class="col-md-6">
										  <div class="list-mig-like-com">
											    <div class="list-mig-lc-img"><embed src="uploadimg/<%=resultSet.getString("video")%>" alt="Cannot Open video"/></div>
										   </div>	
										</div>
									</div>
								</div>
								<% 
								}
								 	
								}
								
								catch (Exception e) {
								e.printStackTrace();
								}
								
								%>
							
							</div>
						</div>
					</div>
				</div>
			</div>
	<!--== BOTTOM FLOAT ICON ==-->
	<%@include file="Admin_footer.html" %>
	<!--SCRIPT FILES-->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.js" type="text/javascript"></script>
	<script src="js/materialize.min.js" type="text/javascript"></script>
	<script src="js/custom.js"></script>
</body>


<!-- Mirrored from rn53themes.net/themes/demo/directory/admin-list-view.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 02 Jul 2018 05:19:07 GMT -->
</html>