<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@include file="user_header.jsp" %>

<body>

<%
try{ 
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="SELECT * FROM productlist";
System.out.println(sql);
resultSet = statement.executeQuery(sql);
 %>
	 
			<!--== BODY INNER CONTAINER ==-->
			<div class="sb2-2">
				<!--== breadcrumbs ==-->
				<div class="sb2-2-2">
					<ul>
						<li><a href="main.html"><i class="fa fa-home" aria-hidden="true"></i> Home</a> </li>
						<li class="active-bre"><a href="#">Product Categories</a> </li>
						<li class="page-back"><a href="admin.html"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
				<div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
						<h4>Product Categories</h4> <a class="dropdown-button drop-down-meta drop-down-meta-inn" href="#" data-activates="dr-list"><i class="material-icons">more_vert</i></a>
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
											<table class="table table-hover">
												<thead>
													<tr>
														<th>Select</th>
														<th>Profile</th>
														<th>Name</th>
														<th>Create Date</th>
														<th>Product Title</th>
														<th>Product Category</th>
														<th>Edit</th>
														<th>Delete</th>
													</tr>
												</thead>
												<tbody>
												<% while(resultSet.next()){
	%>
													<tr>
													
														<td>
															<input type="checkbox" class="filled-in" id="filled-in-box-1" />
															<label for="filled-in-box-1"></label>
														</td>
														<td><span class="list-img"><img src="upload/<%=resultSet.getString(10)%>" alt=""></span> </td>
														
														<td><a href="#"><span class="list-enq-name"><%=resultSet.getString(2)%></span></a> </td>
														
														<td><%=resultSet.getString(13)%></td>
														
														<td> <span class="label label-primary"><%=resultSet.getString(3)%></span> </td>
														<td> <span class="label label-primary"><%=resultSet.getString(7)%></span> </td>
														
													<td> <a href="Update_category.jsp?id=<%=resultSet.getString("id")%>"><button type="button" value="edit">Edit</button></a> </td>
													
														<td> <a href="deletecategory.jsp?id=<%=resultSet.getString("id")%>"><button type="button" value="delete">Delete</button></a> </td>
													</tr>
													<% 
}
	
}
catch (Exception e) {
e.printStackTrace();
}

%>
													<!-- <tr>
														<td>
															<input type="checkbox" class="filled-in" id="filled-in-box-2" />
															<label for="filled-in-box-2"></label>
														</td>
														<td><span class="list-img"><img src="images/users/1.png" alt=""></span> </td>
														<td><a href="#"><span class="list-enq-name">Health Care</span><span class="list-enq-city">Hospitals,Pharmacy</span></a> </td>
														<td>18 feb 2018</td>
														<td> <span class="label label-primary">142</span> </td>
														<td> <span class="label label-primary">Active</span> </td>
														<td> <a href="admin-list-category-edit.html"><i class="fa fa-edit"></i></a> </td>
													</tr>
													<tr>
														<td>
															<input type="checkbox" class="filled-in" id="filled-in-box-3" />
															<label for="filled-in-box-3"></label>
														</td>
														<td><span class="list-img"><img src="images/users/1.png" alt=""></span> </td>
														<td><a href="#"><span class="list-enq-name">Education</span><span class="list-enq-city">Schools,Colleges</span></a> </td>
														<td>18 feb 2018</td>
														<td> <span class="label label-primary">156</span> </td>
														<td> <span class="label label-primary">Active</span> </td>
														<td> <a href="admin-list-category-edit.html"><i class="fa fa-edit"></i></a> </td>
													</tr>
													<tr>
														<td>
															<input type="checkbox" class="filled-in" id="filled-in-box-4" />
															<label for="filled-in-box-4"></label>
														</td>
														<td><span class="list-img"><img src="images/users/1.png" alt=""></span> </td>
														<td><a href="#"><span class="list-enq-name">Hotels</span><span class="list-enq-city">Resorts,Hotels</span></a> </td>
														<td>21 June 2016</td>
														<td> <span class="label label-primary">324</span> </td>
														<td> <span class="label label-primary">Active</span> </td>
														<td> <a href="admin-list-category-edit.html"><i class="fa fa-edit"></i></a> </td>
													</tr>
													<tr>
														<td>
															<input type="checkbox" class="filled-in" id="filled-in-box-5" />
															<label for="filled-in-box-5"></label>
														</td>
														<td><span class="list-img"><img src="images/users/1.png" alt=""></span> </td>
														<td><a href="#"><span class="list-enq-name">Property Services</span><span class="list-enq-city">Real estate, Property</span></a> </td>
														<td>12 may 2017</td>
														<td> <span class="label label-primary">241</span> </td>
														<td> <span class="label label-primary">Active</span> </td>
														<td> <a href="admin-list-category-edit.html"><i class="fa fa-edit"></i></a> </td>
													</tr>
													<tr>
														<td>
															<input type="checkbox" class="filled-in" id="filled-in-box-6" />
															<label for="filled-in-box-6"></label>
														</td>
														<td><span class="list-img"><img src="images/users/1.png" alt=""></span> </td>
														<td><a href="#"><span class="list-enq-name">Health Care</span><span class="list-enq-city">Hospitals,Pharmacy</span></a> </td>
														<td>18 feb 2018</td>
														<td> <span class="label label-primary">142</span> </td>
														<td> <span class="label label-primary">Active</span> </td>
														<td> <a href="admin-list-category-edit.html"><i class="fa fa-edit"></i></a> </td>
													</tr>
													<tr>
														<td>
															<input type="checkbox" class="filled-in" id="filled-in-box-7" />
															<label for="filled-in-box-7"></label>
														</td>
														<td><span class="list-img"><img src="images/users/1.png" alt=""></span> </td>
														<td><a href="#"><span class="list-enq-name">Education</span><span class="list-enq-city">Schools,Colleges</span></a> </td>
														<td>18 feb 2018</td>
														<td> <span class="label label-primary">156</span> </td>
														<td> <span class="label label-primary">Active</span> </td>
														<td> <a href="admin-list-category-edit.html"><i class="fa fa-edit"></i></a> </td>
													</tr>
													<tr>
														<td>
															<input type="checkbox" class="filled-in" id="filled-in-box-8" />
															<label for="filled-in-box-8"></label>
														</td>
														<td><span class="list-img"><img src="images/users/1.png" alt=""></span> </td>
														<td><a href="#"><span class="list-enq-name">Hotels</span><span class="list-enq-city">Resorts,Hotels</span></a> </td>
														<td>21 June 2016</td>
														<td> <span class="label label-primary">324</span> </td>
														<td> <span class="label label-primary">Active</span> </td>
														<td> <a href="admin-list-category-edit.html"><i class="fa fa-edit"></i></a> </td>
													</tr>
													<tr>
														<td>
															<input type="checkbox" class="filled-in" id="filled-in-box-9" />
															<label for="filled-in-box-9"></label>
														</td>
														<td><span class="list-img"><img src="images/users/1.png" alt=""></span> </td>
														<td><a href="#"><span class="list-enq-name">Property Services</span><span class="list-enq-city">Real estate, Property</span></a> </td>
														<td>12 may 2017</td>
														<td> <span class="label label-primary">241</span> </td>
														<td> <span class="label label-primary">Active</span> </td>
														<td> <a href="admin-list-category-edit.html"><i class="fa fa-edit"></i></a> </td>
													</tr>
													<tr>
														<td>
															<input type="checkbox" class="filled-in" id="filled-in-box-10" />
															<label for="filled-in-box-10"></label>
														</td>
														<td><span class="list-img"><img src="images/users/1.png" alt=""></span> </td>
														<td><a href="#"><span class="list-enq-name">Health Care</span><span class="list-enq-city">Hospitals,Pharmacy</span></a> </td>
														<td>18 feb 2018</td>
														<td> <span class="label label-primary">142</span> </td>
														<td> <span class="label label-primary">Active</span> </td>
														<td> <a href="admin-list-category-edit.html"><i class="fa fa-edit"></i></a> </td>
													</tr>
													<tr>
														<td>
															<input type="checkbox" class="filled-in" id="filled-in-box-11" />
															<label for="filled-in-box-11"></label>
														</td>
														<td><span class="list-img"><img src="images/users/1.png" alt=""></span> </td>
														<td><a href="#"><span class="list-enq-name">Education</span><span class="list-enq-city">Schools,Colleges</span></a> </td>
														<td>18 feb 2018</td>
														<td> <span class="label label-primary">156</span> </td>
														<td> <span class="label label-primary">Active</span> </td>
														<td> <a href="admin-list-category-edit.html"><i class="fa fa-edit"></i></a> </td>
													</tr>
													<tr>
														<td>
															<input type="checkbox" class="filled-in" id="filled-in-box-12" />
															<label for="filled-in-box-12"></label>
														</td>
														<td><span class="list-img"><img src="images/users/1.png" alt=""></span> </td>
														<td><a href="#"><span class="list-enq-name">Hotels</span><span class="list-enq-city">Resorts,Hotels</span></a> </td>
														<td>21 June 2016</td>
														<td> <span class="label label-primary">324</span> </td>
														<td> <span class="label label-primary">Active</span> </td>
														<td> <a href="admin-list-category-edit.html"><i class="fa fa-edit"></i></a> </td>
													</tr> -->
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

	<%@include file="user_footer.html" %>
</body>
</html>