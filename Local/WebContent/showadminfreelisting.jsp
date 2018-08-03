<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from rn53themes.net/themes/demo/directory/admin-listing-category.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 02 Jul 2018 05:18:47 GMT -->
<head>
<style>
.button {
    background-color: #ff1a75;
    border:none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 14px;
    margin: 4px 2px;
    cursor: pointer;
}

</style>	
<script type="text/javascript">
function validateForm() {
    var x = document.forms["mysearch"]["search"].value;
    if (x=="") {
        alert("Enter ID/Name/Phone Number to search");
        return false;
    }
}
</script>	
</head>

<body>
<%@include file="Admin-header.jsp" %>

<%
try{ 
	connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="SELECT * from listing l,category c where l.email=c.email";
System.out.println(sql);
resultSet = statement.executeQuery(sql);
 %>
	 
			<!--== BODY INNER CONTAINER ==-->
			<div class="sb2-2">
				<!--== breadcrumbs ==-->
				<div class="sb2-2-2">
					<ul>
						<li><a href="main.html"><i class="fa fa-home" aria-hidden="true"></i> Home</a> </li>
						<li class="active-bre"><a href="#">Listing Business</a> </li>
						<li class="page-back"><a href="admin.jsp"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
				<div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
					<h4>Listing</h4>
					<form name="mysearch" class="app-search" onsubmit="return validateForm()">
					      <input type="text" name="search" placeholder="Search..." class="form-control"> <a href="searchpaidlisting.jsp"><i class="fa fa-search"></i></a>
			        </form>
						<!-- <form name="mysearch" action="searchpaidlisting.jsp" action="post" onsubmit="return validateForm()">
									<span><input type="text" name="search"/></span>
									   <input type="submit" value="Search" class="button">
						        </form> -->
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