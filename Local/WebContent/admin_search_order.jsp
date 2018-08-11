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
						<li class="page-back"><a href="admin-all-order.jsp"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
				<html>  
                  <head>  
                    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
                     <title>View Users</title>  
                        </head>  
                         <body>  
                        <%@page import="Local.OrderDao,Local.Order"%>  
				
				      <div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
					 <%  
                          String search=request.getParameter("id");  
                          Order u=OrderDao.getRecordById(search);  
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
														<th><span class="list-enq-name">Particular Search Order</span><span class="list-enq-city"></span></a></th>
														<th> </th>
													</tr>	
												</thead>
												<tbody>
													<tr>
													    <tr>
														<td><span class="list-enq-name">Id</span><span class="list-enq-city"></span></a> </td>
                                                        <td><%= u.getId()%></td></tr>
														<tr>
														<td><span class="list-enq-name">First Name</span><span class="list-enq-city"></span></a> </td>
                                                        <td><%= u.getFirstname()%></td></tr>
                                                            <tr>
                                                        <td><span class="list-enq-name">Last Name</span><span class="list-enq-city"></span></a> </td>
                                                        <td><%= u.getLastname()%></td></tr>
                                                            <tr>
                                                            <td><span class="list-enq-name">Contact</span><span class="list-enq-city"></span></a> </td>
                                                        <td><%= u.getContact()%></td></tr>
                                                             <tr>
                                                             <td><span class="list-enq-name">Email</span><span class="list-enq-city"></span></a> </td>
                                                        <td><%=u.getEmail()%></td></tr>
                                                             <tr>
                                                             <td><span class="list-enq-name">Category</span><span class="list-enq-city"></span></a> </td>
                                                        <td><%=u.getCategory()%></td></tr>
                                                             <tr>
                                                            <td><span class="list-enq-name">Sub Category</span><span class="list-enq-city"></span></a> </td>
                                                        <td><%= u.getSubcategory()%></td></tr>
                                                             <tr>
                                                             <td><span class="list-enq-name">Address</span><span class="list-enq-city"></span></a> </td>
                                                         <td><%=u.getAddress()%></td></tr>
                                                         <tr>
                                                             <td><span class="list-enq-name">Day</span><span class="list-enq-city"></span></a> </td>
                                                         <td><%=u.getDay()%></td></tr>
                                                          <tr>
                                                             <td><span class="list-enq-name">Package</span><span class="list-enq-city"></span></a> </td>
                                                         <td><%=u.getPack()%></td></tr>
                                                          <tr>
                                                             <td><span class="list-enq-name">Open</span><span class="list-enq-city"></span></a> </td>
                                                         <td><%=u.getOpen()%></td></tr>
                                                          <tr>
                                                             <td><span class="list-enq-name">Close</span><span class="list-enq-city"></span></a> </td>
                                                         <td><%=u.getClose()%></td></tr>
                                                          <tr>
                                                             <td><span class="list-enq-name">Sdate</span><span class="list-enq-city"></span></a> </td>
                                                         <td><%=u.getSdate()%></td></tr>
                                                          <tr>
                                                             <td><span class="list-enq-name">Edate</span><span class="list-enq-city"></span></a> </td>
                                                         <td><%=u.getEdate()%></td></tr>
                                                         </tr>
												</tbody>
										
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