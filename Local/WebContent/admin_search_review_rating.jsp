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
						<li class="active-bre"><a href="#"> All Review and Rating List</a> </li>
						<li class="page-back"><a href="admin-all-order.jsp"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
				<html>  
                  <head>  
                    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
                     <title>View Users</title>  
                        </head>  
                         <body>  
                        <%@page import="Local.ReviewDao,Local.Review"%>  
				
				      <div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
					 <%  
                          String type=request.getParameter("id");  
                          Review u=ReviewDao.getRecordById(type);  
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
														<th><span class="list-enq-name">Particular Search Review and Rating</span><span class="list-enq-city"></span></a></th>
														<th> </th>
													</tr>	
												</thead>
												<tbody>
													<tr>
														<tr>
														<td><span class="list-enq-name">Id</span><span class="list-enq-city"></span></a> </td>
                                                        <td><%= u.getId()%></td></tr>
                                                            <tr>
                                                        <td><span class="list-enq-name">Fname</span><span class="list-enq-city"></span></a> </td>
                                                        <td><%= u.getFname()%></td></tr>
                                                        <tr>
                                                        <td><span class="list-enq-name">Email</span><span class="list-enq-city"></span></a> </td>
                                                        <td><%= u.getEmail()%></td></tr>
                                                        <tr>
                                                        <td><span class="list-enq-name">Date</span><span class="list-enq-city"></span></a> </td>
                                                        <td><%= u.getSdate()%></td></tr>
                                                        <tr>
                                                        <td><span class="list-enq-name">Category</span><span class="list-enq-city"></span></a> </td>
                                                        <td><%= u.getCategory()%></td></tr>
                                                        <tr>
                                                        <td><span class="list-enq-name">Title</span><span class="list-enq-city"></span></a> </td>
                                                        <td><%= u.getTitle()%></td></tr>
                                                        <tr>
                                                        <td><span class="list-enq-name">Rating</span><span class="list-enq-city"></span></a> </td>
                                                        <td><%=u.getRating()%></td></tr>
                                                        <tr>
                                                        <td><span class="list-enq-name">Review</span><span class="list-enq-city"></span></a> </td>
                                                        <td><%=u.getReview()%></td></tr>
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