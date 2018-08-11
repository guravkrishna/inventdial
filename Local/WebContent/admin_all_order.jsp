<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="images/fav.ico" type="image/x-icon">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- META TAGS --><%@include file="Admin-header.jsp" %>
			<!--== BODY INNER CONTAINER ==-->
			<div class="sb2-2">
				<!--== breadcrumbs ==-->
				<div class="sb2-2-2">
					<ul>
						<li><a href="main.jsp"><i class="fa fa-home" aria-hidden="true"></i> Home</a> </li>
						<li class="active-bre"><a href="#"> All Order List</a> </li>
						<li class="page-back"><a href="admin.jsp"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
				<html>  
                  <head>  
                    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
                     <title>View Users</title>  
                        </head>  
                         <body>  
                           
                          <form action="/Local/admin-particular-order.jsp" method="get">
                              <table>
                                  <tr><td>Enter the Type:</td><td><input type="text" name="search"></td></tr>
                                  <tr><td><input type="submit" value="Submit"></td></tr>
                                  </table>
                               </form>  
                         <%@page import="Local.OrderDao,Local.*,java.util.*"%>  
				
				      <div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
						<h4>All Order</h4>
                                              <%  
                                                List<Order> list=OrderDao.getAllRecords();  
                                                request.setAttribute("list",list);  
                                              %>  
						<!-- Dropdown Structure -->
						<div class="split-row">
							<div class="col-md-12">
								<div class="box-inn-sp ad-inn-page">
									<div class="tab-inn ad-tab-inn">
										<div class="table-responsive">
											<table class="table table-hover">
												<thead>
													<tr>
													    <th>Id</th>
														<th>First Name</th>
														<th>Last Name</th>
														<th>Contact</th>
														<th>Email</th>
														<th>Category</th>
														<th>SubCategory</th>
														<th>Address</th>
														<th>Day</th>
														<th>Package</th>
														<th>Open</th>
														<th>Close</th>
														<th>Sdate</th>
														<th>Edate</th>
														<th>View</th>
													</tr>
													
                                              <c:forEach items="${list}" var="u">  
													
												</thead>
												<tbody>
													<tr>
													    <td>${u.getId()}</td>
														<td>${u.getFirstname()}</td>
														<td>${u.getLastname()}</td>
														<td><span class="label label-success">${u.getContact()}</span> </td> 
														<td>${u.getEmail()}</td>
														<td>${u.getCategory()}</td>
														<td>${u.getSubcategory()}</td>
                                                        <td>${u.getAddress()}</td>
                                                         <td>${u.getDay()}</td>
                                                         <td>${u.getPack()}</td>
                                                         <td>${u.getOpen()}</td>
                                                         <td>${u.getClose()}</td>
                                                         <td>${u.getSdate()}</td>
                                                         <td>${u.getEdate()}</td>
                                                        <td><a href="admin-search-order.jsp?id=${u.getId()}"><i class="fa fa-eye"></a></td>
													</tr>
												</tbody>
											</c:forEach>  
											</table>
										</div>
									</div>
								</div>
                              </table>  
                            </body>  
                           </html>  
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!--== BOTTOM FLOAT ICON ==-->
	<%@include file="Admin_footer.html" %>
</body>
</html>