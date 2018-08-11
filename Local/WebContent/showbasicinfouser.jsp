<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="user_header.jsp" %>

<%
try{ 
	/* String email=request.getParameter("email");
	System.out.println(email); */
	String name=(String)session.getAttribute("name");
    
    System.out.println(name);
	connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="SELECT * from listing l join category c on l.contact=c.contact where l.contact='"+name+"'";
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
														<!--  <th>Select</th>  -->
														<!-- <th>Profile</th> -->
														<th>Fisrt Name</th>
														<th>Category Name</th>
												<!-- 		<th>Create Date</th> -->
														<th>Contact Number</th>
														 <!-- <th>Email</th>  -->
														<th>View</th>
														<!--<th>Edit</th> -->
														<th>Delete</th> 
													</tr>
												</thead>
												<tbody>
												<% while(resultSet.next()){%>
													<tr>
														 <!-- <td>
															<input type="checkbox" class="filled-in" id="filled-in-box-1" />
															<label for="filled-in-box-1"></label>
														</td> --> 
														<%-- <td><span class="list-img"><img src="uploadimg/<%=resultSet.getString(19)%>" alt=""></span> </td> --%>
														
														<td><span class="list-enq-name"><%=resultSet.getString("fname")%></span><span class="list-enq-city"><%=resultSet.getString("BusinessTitle")%></span></td>
														
														<%-- <td><%=resultSet.getString(25)%></td> --%>
														<td><span class="list-enq-name"><%=resultSet.getString("category")%></span></td>
														<td> <span class="label label-primary"><%=resultSet.getString("contact")%></span></td>
														<td> <a href="viewauserfreelisting.jsp?contact=<%=resultSet.getString("contact")%>"><i class="fa fa-eye"></i></a></td>
														
													<%--  <td> <a href="updateadminpaidlisting.jsp?email=<%=resultSet.getString("email")%>"><i class="fa fa-edit"></i></a></td> --%>
														<td> <a href="deleteadminpaidlisting.jsp?BusinessTitle=<%=resultSet.getString("BusinessTitle")%>"><i class="material-icons">delete</i></a></td>
													
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

</body>
</html>