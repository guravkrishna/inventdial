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
						<li class="page-back"><a href="admin-all-review-rating.jsp"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
				<html>  
                  <head>  
                    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
                     <title>View Users</title>  
                        </head>  
                         <body>  
                         <form action="/Local/admin-particular-review-rating.jsp" method="get">
                         <table>
                           <tr><td>Enter Rating and Review Type:</td><td><input type="text" name="search"></td></tr>
                               <tr><td><input type="submit" value="Submit"></td></tr>
                            </table>
                           </form>  
                         <%@page import="Local.ReviewDao,Local.*,java.util.*"%>  
				
				      <div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
						<h4>All Review and Ratings</h4>
                                              <%  
                                                String type=request.getParameter("search");
                                                List<Review> list=ReviewDao.getAllRecordByType(type);  
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
														<th>Email</th>
														<th>Date</th>
														<th>Category</th>
														<th>Title</th>
														<th>Rating</th>
														<th>Review</th>
														<th>View</th>
													</tr>
													
                                              <c:forEach items="${list}" var="u">  
													
												</thead>
												<tbody>
													<tr>
														<td>${u.getId()}</td>
														<td>${u.getFname()}</td>
														<td> <span class="label label-success">${u.getEmail()}</span> </td>
														<td>${u.getSdate()}</td>
														<td>${u.getCategory()}</td>
														<td>${u.getTitle()}</td>  
														<td> <span class="label label-success">${u.getRating()}</span> </td>
                                                        <td>${u.getReview()}</td>
                                                        <td><a href="admin-search-review-rating.jsp?id=${u.getId()}"><i class="fa fa-eye"></a></td>
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