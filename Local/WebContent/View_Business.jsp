<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from rn53themes.net/themes/demo/directory/admin-list-view.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 02 Jul 2018 05:19:07 GMT -->
<head>
	
</head>


<body>

<%@include file="user_header.jsp" %>

<%
try{ 
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="SELECT * FROM category where id="+id;
System.out.println(sql);
resultSet = statement.executeQuery(sql);
 while(resultSet.next()){%>









	<!--== BODY INNER CONTAINER ==-->
	
			<div class="sb2-2">
				<!--== breadcrumbs ==-->
				<div class="sb2-2-2">
					<ul>
						<li><a href="main.html"><i class="fa fa-home" aria-hidden="true"></i> Home</a> </li>
						<li class="active-bre"><a href="#"> View Category</a> </li>
						<li class="page-back"><a href="#"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
				<div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
						<h4>View Category</h4> <a class="dropdown-button drop-down-meta drop-down-meta-inn" href="#" data-activates="dr-list"><i class="material-icons">more_vert</i></a>
						<ul id="dr-list" class="dropdown-content">
							<li><a href="#!">Add New</a> </li>
							<li><a href="#!">Edit</a> </li>
							<li><a href="#!">Update</a> </li>
							<li class="divider"></li>
							<li><a href="#!"><i class="material-icons">delete</i>Delete</a> </li>
							<li><a href="#!"><i class="material-icons">subject</i>View All</a> </li>
							<li><a href="#!"><i class="material-icons">play_for_work</i>Download</a> </li>
						</ul>
						<!-- Dropdown Structure -->
						<div class="split-row">
							<div class="col-md-12">
								<div class="box-inn-sp ad-inn-page">
									<div class="tab-inn ad-tab-inn">
									
										<table class="responsive-table bordered">
											<tbody>
												<tr>
													<td>Category</td>
													<td>:</td>
													<td><%=resultSet.getString(2)%></td>
												</tr>
												<tr> 
													<td>Business Name</td>
													<td>:</td>
													<td><%=resultSet.getString(3)%></td>
												</tr>
												<tr>
													<td>Sub Business</td>
													<td>:</td>
													<td><%=resultSet.getString(4)%></td>
												</tr>
												<tr>
													<td>Email Id</td>
													<td>:</td>
													<td><%=resultSet.getString(5)%></td>
												</tr>
												<tr>
													<td>Address</td>
													<td>:</td>
													<td><%=resultSet.getString(6)%></td>
												</tr>
												<tr>
													<td>Opening Days</td>
													<td>:</td>
													<td><%=resultSet.getString(7)%></td>
												</tr>
												<tr>
													<td>Opening Time</td>
													<td>:</td>
													<td><span class="label label-danger"><%=resultSet.getString(8)%></span>
													</td>
												</tr>
												<tr>
													<td>Closing Time</td>
													<td>:</td>
													<td><span class="label label-success"><%=resultSet.getString(9)%></span> </td>
												</tr>
												<tr>
													<td>Packages Type</td>
													<td>:</td>
													<td><span class="label label-primary"><%=resultSet.getString(10)%></span> </td>
												</tr>
												<tr>
													<td>Product Descriptions</td>
													<td>:</td>
													<td><%=resultSet.getString(11)%></td>
												</tr>
												<tr>
													<td>Business Establishment Year</td>
													<td>:</td>
													<td><%=resultSet.getString(12)%></td>
												</tr>
												<tr>
													<td>Website Link</td>
													<td>:</td>
													<td><%=resultSet.getString(13)%></td>
												</tr>
												<tr>
													<td>Facebook Link</td>
													<td>:</td>
													<td><%=resultSet.getString(14)%></span>
													</td>
												</tr>
												<tr>
													<td>Google Link</td>
													<td>:</td>
													<td><%=resultSet.getString(15)%></span> </td>
												</tr>
												<tr>
													<td>Google Map</td>
													<td>:</td>
													<td><%=resultSet.getString(16)%></span> </td>
												</tr>
												<!-- <tr>
													<td>User Name</td>
													<td>:</td>
													<td>Thomas </td>
												</tr>
												<tr>
													<td>Service Guarantee</td>
													<td>:</td>
													<td><span class="label label-success">Yes</span> </td>
												</tr>
												<tr>
													<td>Listing Completion</td>
													<td>:</td>
													<td><span class="label label-primary">84%</span> </td>
												</tr> -->
											</tbody>
										</table>
									</div>
								</div>
								<% 
}
	
}
catch (Exception e) {
e.printStackTrace();
}

%>
							<!-- 	<div class="admin-pag-na">
									<ul class="pagination list-pagenat">
										<li class="disabled"><a href="#!!"><i class="material-icons">chevron_left</i></a> </li>
										<li class="active"><a href="#!">1</a> </li>
										<li class="waves-effect"><a href="#!">2</a> </li>
										<li class="waves-effect"><a href="#!">3</a> </li>
										<li class="waves-effect"><a href="#!">4</a> </li>
										<li class="waves-effect"><a href="#!">5</a> </li>
										<li class="waves-effect"><a href="#!">6</a> </li>
										<li class="waves-effect"><a href="#!">7</a> </li>
										<li class="waves-effect"><a href="#!">8</a> </li>
										<li class="waves-effect"><a href="#!"><i class="material-icons">chevron_right</i></a> </li>
									</ul>
								</div> -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--== BOTTOM FLOAT ICON ==-->
	<%@include file="user_footer.html" %>
	<!--SCRIPT FILES-->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.js" type="text/javascript"></script>
	<script src="js/materialize.min.js" type="text/javascript"></script>
	<script src="js/custom.js"></script>
</body>


<!-- Mirrored from rn53themes.net/themes/demo/directory/admin-list-view.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 02 Jul 2018 05:19:07 GMT -->
</html>