<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	
</head>

<body>
<%@include file="user_header.jsp" %>
		
<%
String search=request.getParameter("search");
try{ 
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="SELECT * FROM category where email='"+search+"' or Category like '%"+search+"%' or title like '%"+search+"%'";
System.out.println(sql);
resultSet = statement.executeQuery(sql);
 %>
	 
	 
	<!--  <div id="preloader">
		<div id="status">&nbsp;</div>
	</div> -->
	<!--== MAIN CONTRAINER ==-->
	
			<!--== BODY INNER CONTAINER ==-->
			<div class="sb2-2">
				<!--== breadcrumbs ==-->
				<div class="sb2-2-2">
					<ul>
						<li><a href="main.html"><i class="fa fa-home" aria-hidden="true"></i> Home</a> </li>
						<li class="active-bre"><a href="#">Listing Categories</a> </li>
						<li class="page-back"><a href="admin.html"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
				<div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
						<h4>Listing Categories</h4> <a class="dropdown-button drop-down-meta drop-down-meta-inn" href="#" data-activates="dr-list"><i class="material-icons">more_vert</i></a>
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
										<div class="table-responsive">
										<form class="app-search" action="Search_Business.jsp">
					<input type="text" placeholder="Search..." class="form-control" name="search"> <a href="#"><i class="fa fa-search"></i></a> </form>
								
								
								</form>
											<table class="table table-hover">
												<thead>
													<tr>
														<th>Category</th>
														<th>Business Name</th>
														<th>Email</th>
														<th>Address</th>
														<th>Packages Type</th>
														<th>View</th>
														<th>Edit</th>
													</tr>
												</thead>
												<tbody>
												<% while(resultSet.next()){
	%>
													<tr>
													
														
														<td><span class="list-enq-name"><%=resultSet.getString(2)%></span> </td>
														<td><span class="list-enq-name"><%=resultSet.getString(3)%></span></td>
														<td> <span class="list-enq-name"><%=resultSet.getString(5)%></span> </td>
														<td> <span class="list-enq-name"><%=resultSet.getString(6)%></span> </td>
														<td><span class="list-enq-name"><%=resultSet.getString(10)%></span> </td>
														<td> <a href="View_Business.jsp?id=<%=resultSet.getString("id")%>"><button type="button" value="view">View</button></a> </td>
														<td> <a href="Update_Business.jsp?id=<%=resultSet.getString("id")%>"><button type="button" value="edit">Edit</button></a> </td>
														
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
								<div class="admin-pag-na">
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
								</div>
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


<!-- Mirrored from rn53themes.net/themes/demo/directory/admin-listing-category.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 02 Jul 2018 05:18:48 GMT -->
</html>