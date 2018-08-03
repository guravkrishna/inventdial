<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Grouping Management</title>
<script type="text/javascript">
function validateSearch() {
    var x = document.forms["adminSearch"]["citysearch"].value;
    if (x=="") {
        alert("Select Business and Enter City to Search");
        return false;
    }
}
</script>
</head>
<body>
    <%@include file="Admin-header.jsp" %>
     												    
    <!--== BODY INNER CONTAINER ==-->
			<div class="sb2-2">
				<!--== breadcrumbs ==-->
				<div class="sb2-2-2">
					<ul>
						<li><a href="main.jsp"><i class="fa fa-home" aria-hidden="true"></i> Home</a> </li>
						<li class="active-bre"><a href="admin-all-listing1.jsp"> All listing</a> </li>
						<li class="page-back"><a href="admin.jsp"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
				
				<div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
						<h4>Listing</h4>
						
					  <!--  <form class="app-search" action="search.jsp">
					          <input type="text" placeholder="Search..." class="form-control"><a href="search.jsp"><i class="fa fa-search"></i></a>--> 
				                  <form name="adminSearch" action="admin-group-search.jsp" onsubmit="return validateSearch()">		
									
				                  <div class="row" style="margin-left:40px;">
										<div class="input-field col s6">
											<select name="Business">
												<option value="" disabled selected>Listing Type</option>
												<option value="Hotel and Resorts">Hotel and Resorts</option>
												<option value="Education and Training">Education and Training</option>
												<option value="Internet Service Providers">Internet Service Providers</option>
												<option value="Computer Repair and Services">Computer Repair and Services</option>
												<option value="Real Estates">Real Estates</option>
												<option value="Travel and Transport">Travel and Transport</option>
												<option value="Packers and Movers">Packers and Movers</option>
												<option value="Gyms and Fitness">Gyms and Fitness</option>
												<option value="Yoga Classes">Yoga Classes</option>
												<option value="Health and Fitness">Health and Fitness</option>
												<option value="">Other</option>
											</select>
										</div>
								     	<div class="input-field col s4">
										  <input type="text" name="citysearch">
										</div>
										<div class="input-field col s2">
										  <input type="submit" value="Search"/>
										 </div>
										</div>
								  </form>
							</div>  
                        						   
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
												<!-- 		<th>Create Date</th> -->
														<th>Contact Number</th>
														<th>Package</th>
														<th>View</th>
														<th>Edit</th>
														<th>Delete</th>
													</tr>
												</thead>
												<tbody>
												<%
												String Business=request.getParameter("citysearch");
												String citysearch=request.getParameter("citysearch");
												try{ 
													connection = DriverManager.getConnection(connectionUrl+database, userid, password);
												statement=connection.createStatement();
												String sql ="select * from listing l join category c on l.email=c.email ";
												System.out.println(sql);
												resultSet = statement.executeQuery(sql);
												 %> 
												<% while(resultSet.next()){%>
													<tr>
														 <td>
															<input type="checkbox" class="filled-in" id="filled-in-box-1" />
															<label for="filled-in-box-1"></label>
														</td> 
														<td><span class="list-img"><img src="uploadimg/<%=resultSet.getString(19)%>" alt=""></span> </td>
														
														<td><a href="#"><span class="list-enq-name"><%=resultSet.getString(10)%></span><span class="list-enq-city"><%=resultSet.getString(7)%></span></a> </td>
														
														<%-- <td><%=resultSet.getString(25)%></td> --%>
														<td> <span class="label label-primary"><%=resultSet.getString(5)%></span> </td>
														<td> <span class="label label-primary"><%=resultSet.getString(16)%></span> </td>
														<td> <a href="viewadminpaidlisting.jsp?email=<%=resultSet.getString("email")%>"><i class="fa fa-eye"></i></a></td>
														
													<td> <a href="updateadminpaidlisting.jsp?email=<%=resultSet.getString("email")%>"><i class="fa fa-edit"></i></a></td>
														<td> <a href="deleteadminpaidlisting.jsp?email=<%=resultSet.getString("email")%>"><i class="material-icons">delete</i></a></td>
													
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
	<!--== BOTTOM FLOAT ICON ==-->
		<%@include file="Admin_footer.html" %>

	<!--SCRIPT FILES-->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.js" type="text/javascript"></script>
	<script src="js/materialize.min.js" type="text/javascript"></script>
	<script src="js/custom.js"></script>
</body>
</html>