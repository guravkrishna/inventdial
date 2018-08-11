<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from rn53themes.net/themes/demo/directory/admin-listing-category.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 02 Jul 2018 05:18:47 GMT -->
<head>
	
</head>

<body>
<%@include file="Admin-header.jsp" %>

<%
try{ 
	connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql =" select * from listing l join category c on l.contact=c.contact where catedate=current_date()";
System.out.println(sql);
resultSet = statement.executeQuery(sql);
 %>
	 
	 
	
			<!--== BODY INNER CONTAINER ==-->
			<div class="sb2-2">
				<!--== breadcrumbs ==-->
				<div class="sb2-2-2">
					<ul>
						<li><a href="main.html"><i class="fa fa-home" aria-hidden="true"></i> Home</a> </li>
						<li class="active-bre"><a href="#">All Notifications</a> </li>
						<li class="page-back"><a href="admin.html"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
				<div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
						<h4>All Notifications</h4> <a class="dropdown-button drop-down-meta drop-down-meta-inn" href="#" data-activates="dr-list"><i class="material-icons">more_vert</i></a>
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
								<!-- <form class="app-search" action="searchpaidlisting.jsp">
					<input type="text" placeholder="Search..." class="form-control" name="search"> <a href="#"><i class="fa fa-search"></i></a> </form>
								
								
								</form> -->
									<div class="tab-inn ad-tab-inn">
										<div class="table-responsive">
											<table class="table table-hover">
												<thead>
													<tr>
														 <!-- <th>Select</th>  -->
														<th>First Name</th>
														<th>Last Name</th>
												
														<th>Contact Number</th>
														<th>Package</th>
														<!--  <th>View</th> -->
														<th>Type of Category</th>
														<th>Business Name</th>
														<th>Approval</th>
													</tr>
												</thead>
												<tbody>
												<% while(resultSet.next()){
	%>
													<tr>
													<!-- 
														 <td>
															<input type="checkbox" class="filled-in" id="filled-in-box-1" />
															<label for="filled-in-box-1"></label>
														</td>  -->
														<%-- <td><span class="list-img"><img src="uploadimg/<%=resultSet.getString(19)%>" alt=""></span> </td> --%>
														
														<td><a href="#"><%=resultSet.getString("fname")%></a></td>
														 <td> <span class="label label-primary"><%=resultSet.getString("lname")%></span></td>
														 <td> <span class="label label-primary"><%=resultSet.getString("contact")%></span></td>
														<td><span class="list-enq-city"><%=resultSet.getString("package")%></span> </td> 
														
														
														<td> <span class="label label-primary"><%=resultSet.getString("category")%></span> </td>
														<td> <span class="label label-primary"><%=resultSet.getString("BusinessTitle")%></span> </td>
														<%-- <td> <span class="label label-primary"><%=resultSet.getString("amount")%></span> </td>--%>
														<td> <a href="approval.jsp?contact=<%=resultSet.getString("contact")%>"><button type="button" value="view">View</button></a> </td>
														
													<%-- <td> <a href="updatepackage.jsp?package=<%=resultSet.getString("package")%>"><i class="fa fa-eye"></i></a> </td>
														<td> <a href="deletepackage.jsp?package=<%=resultSet.getString("package")%>"><i class="material-icons">delete</i></a> </td> 
													  --%>
													</tr>
													<% 
}

}
catch (Exception e) {
e.printStackTrace();
}

%>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							
							</div>
						</div>
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


<!-- Mirrored from rn53themes.net/themes/demo/directory/admin-listing-category.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 02 Jul 2018 05:18:48 GMT -->
</html>