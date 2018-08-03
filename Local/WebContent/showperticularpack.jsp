<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="Admin-header.jsp" %>

<%
try{  
	
String pack=request.getParameter("package");
System.out.println(pack);
	connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from listing l join category c on l.email=c.email join package p on c.package=p.package where p.package='"+pack+"'";
System.out.println(sql);
resultSet = statement.executeQuery(sql);
 %>
		
			
			<!--== BODY INNER CONTAINER ==-->
			<div class="sb2-2">
				<!--== breadcrumbs ==-->
				<div class="sb2-2-2">
					<ul>
						<li><a href="main.html"><i class="fa fa-home" aria-hidden="true"></i> Home</a> </li>
						<li class="active-bre"><a href="#"> Dashboard</a> </li>
						<li class="page-back"><a href="#"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
				
						<div class="split-row">
							<div class="col-md-12">
								<div class="box-inn-sp">
									<div class="inn-title">
										<h4>Package Details</h4>
										<p>Airtport Hotels The Right Way To Start A Short Break Holiday</p> <a class="dropdown-button drop-down-meta" href="#" data-activates="dr-list"><i class="material-icons">more_vert</i></a>
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
									</div>
									<div class="tab-inn">
										<div class="table-responsive table-desi">
											<table class="table table-hover">
												<thead>
													<tr>
														<!-- <th>Listing</th> -->
														<th>Business Title</th>
														<th>First Name</th>
														<th>Last Name</th>
														
										<th>Phone</th>
														<th>Email id</th>
														
														<th>Payment</th>
														
														<th>Status</th>
													</tr>
												</thead>
												<tbody>
												<% while(resultSet.next()){
	%>
													<tr>
														<!-- <td><span class="list-img"><img src="images/icon/dbr1.jpg" alt=""></span> </td> -->
														<td><a href="#"><span class="list-enq-name"><%=resultSet.getString(2)%></span><span class="list-enq-city"><%=resultSet.getString(7)%></span></a> </td>
														<td><%=resultSet.getString(3)%></td>
														<td><%=resultSet.getString(4)%></td>
														<td><%=resultSet.getString(5)%></td>
														<td> <span class="label label-primary"><%=resultSet.getString(6)%></span> </td>
														<td> <span class="label label-danger">Premium</span> </td>
														<td> <span class="label label-primary">Pending</span> </td>
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
						
	<%@include file="Admin_footer.html" %>
</body>
</html>