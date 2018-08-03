

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<%@include file="header.jsp" %>

<body>
	
	<section class="inn-page-bg">
		<div class="container">
			<div class="row">
				<div class="inn-pag-ban">
				<h4>Are you looking for</h4>				
<% 

//String city= request.getParameter("city");
/* String category = request.getParameter("category"); */
String subcategory = request.getParameter("subcategory");

try{
	
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from listing l join category c on l.email=c.email  where c.subcategory='"+subcategory+"'";

resultSet = statement.executeQuery(sql);
if(resultSet.next()){
%>
				
					 <h2><%=resultSet.getString("subcategory") %>  </h2> 
					 <%} %>
					 </div>
			</div>
		</div>
		
						
	</section>
	
	<!--END LISTING LEAD FORM-->
	<section class="dir-alp-1 dir-pa-sp-top">
		<div class="container">
			<div class="row">
				<div class="dir-alp-con dir-alp-con-1">
					<div class="col-md-3 dir-alp-con-left">
						<div class="dir-alp-con-left-1">
							<h3>near by <%=resultSet.getString("category") %></h3> </div>
									
						<div class="dir-hom-pre dir-alp-left-ner-notb">
							<% 
						String sql1 ="select subcategory from category where category='"+category+"' group by subcategory";
						
						resultSet = statement.executeQuery(sql1);
						while(resultSet.next()){
						%>
							<ul>
								<!--==========NEARBY LISTINGS============-->
								<li>
									<a href="searchInMain.jsp">
										<div class="list-left-near lln1"> <img src="images/services/s1.jpg" alt="" /> </div>
										<div class="list-left-near lln2">
											
											<h5><%=resultSet.getString("subcategory") %></h5><span>City: illunois, United States</span>  
											
										</div>
											
										<div class="list-left-near lln3"> <span>5.0</span> </div>
									</a>
								</li>
								
							</ul>
							<%
							 }
							%>	
	
						</div>
						
						
						
						<%-- <%
						}
						%> --%>
						<!--==========Sub Category Filter============-->
						<div class="dir-alp-l3 dir-alp-l-com">
							<h4>Sub Category Filter</h4>
							<div class="dir-alp-l-com1 dir-alp-p3">
								<form action="#">
									<ul>
										<li>
											<input type="checkbox" id="scf1" />
											<label for="scf1">Hortels & Resorts</label>
										</li>
										<li>
											<input type="checkbox" id="scf2" />
											<label for="scf2">Fitness Care</label>
										</li>
										<li>
											<input type="checkbox" id="scf3" />
											<label for="scf3">Educations</label>
										</li>
										<li>
											<input type="checkbox" id="scf4" />
											<label for="scf4">Property</label>
										</li>
										<li>
											<input type="checkbox" id="scf5" />
											<label for="scf5">Home Services</label>
										</li>
									</ul>
								</form> <a href="#!" class="list-view-more-btn">view more</a> </div>
						</div>
						<!--==========End Sub Category Filter============-->
						<!--==========Sub Category Filter============-->
						<div class="dir-alp-l3 dir-alp-l-com">
							<h4>Distance</h4>
							<div class="dir-alp-l-com1 dir-alp-p3">
								<form>
									<ul>
										<li>
											<input class="with-gap" name="group1" type="radio" id="ldis1" />
											<label for="ldis1">00 to 02km</label>
										</li>
										<li>
											<input class="with-gap" name="group1" type="radio" id="ldis2" />
											<label for="ldis2">02 to 05km</label>
										</li>
										<li>
											<input class="with-gap" name="group1" type="radio" id="ldis3" />
											<label for="ldis3">05 to 10km</label>
										</li>
										<li>
											<input class="with-gap" name="group1" type="radio" id="ldis4" />
											<label for="ldis4">10 to 20km</label>
										</li>
										<li>
											<input class="with-gap" name="group1" type="radio" id="ldis5" />
											<label for="ldis5">20 to 30km</label>
										</li>
									</ul>
								</form> <a href="#!" class="list-view-more-btn">view more</a> </div>
						</div>
						<!--==========End Sub Category Filter============-->
						<!--==========Sub Category Filter============-->
						<div class="dir-alp-l3 dir-alp-l-com">
							<h4>Ratings</h4>
							<div class="dir-alp-l-com1 dir-alp-p3">
								<form>
									<ul>
										<li>
											<input type="checkbox" class="filled-in" id="lr1" />
											<label for="lr1"> <span class="list-rat-ch"> <span>5.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> </span>
											</label>
										</li>
										<li>
											<input type="checkbox" class="filled-in" id="lr2" />
											<label for="lr2"> <span class="list-rat-ch"> <span>4.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </span>
											</label>
										</li>
										<li>
											<input type="checkbox" class="filled-in" id="lr3" />
											<label for="lr3"> <span class="list-rat-ch"> <span>3.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </span>
											</label>
										</li>
										<li>
											<input type="checkbox" class="filled-in" id="lr4" />
											<label for="lr4"> <span class="list-rat-ch"> <span>2.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </span>
											</label>
										</li>
										<li>
											<input type="checkbox" class="filled-in" id="lr5" />
											<label for="lr5"> <span class="list-rat-ch"> <span>1.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </span>
											</label>
										</li>
									</ul>
								</form> <a href="javascript:void(0);" class="list-view-more-btn">view more</a> </div>
						</div>
						<!--==========End Sub Category Filter============-->
					</div>
					<div class="col-md-9 dir-alp-con-right list-grid-rig-pad">
						<div class="dir-alp-con-right-1">
							<div class="row">
								<!--LISTINGS-->
								<div class="row span-none">
						     <!-- <form class="app-search">
			                     <input type="text" placeholder="Search..." class="form-control" name="search" id="search"> <a><i class="fa fa-search"></i></a>
							 </form> -->
							 <div class="row">
							 <form method="post" class="app-search" style="background-color:#000";>
							
							 	<div class="col-md-11">
							 		<input type =text name="search" placeholder="Search By Location" style="background-color:black;" autocomplete="off" required>
								</div>
							 	<div class="col-md-1">
							 		<a><i class="fa fa-search"></i></a>
							 	</div>
							</form></div>
			                      <%
			                     String search=request.getParameter("search");
								 System.out.println(search);
								
								 if(search!=null)
								 { %>
									 <%				
										String sql3 ="select * from listing l join category c on l.email=c.email  where c.subcategory='"+subcategory+"'" ;
										resultSet = statement.executeQuery(sql3);
										if(resultSet.next()){%>
											<h3 style="text-align:center"><%=resultSet.getString("subcategory")%></h3><br>
										<%
										}
										%>
									<%	 
									String sql5="select * from listing l join category c on l.email=c.email  where c.address like '%"+search+"%' and c.subcategory='"+subcategory+"' ";
									System.out.println(sql5);
									resultSet = statement.executeQuery(sql5);
									while(resultSet.next()){
									%>
					
									<div class="col-md-4">
										 <a href="list_grid_each.jsp?title=<%=resultSet.getString("title")%>">
											<div class="list-mig-like-com com-mar-bot-30">
												<div class="list-mig-lc-img"> <img src="images/listing/1.jpg" alt=""> <span class="home-list-pop-rat list-mi-pr">$720</span> </div>
												<div class="list-mig-lc-con">
													<div class="list-rat-ch list-room-rati"> <span>4.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
													<h5 ><a href="list_grid_each.jsp?title=<%=resultSet.getString("title")%>"><%=resultSet.getString("title") %></a></h5>
													<h6><%=resultSet.getString("address") %></h6>
													<p><%=resultSet.getString("city") %></p>
												</div>
											</div>
										</a>
									
									</div>
								
									<%
									}
								 }
									
								/* else{ */
								else{ %>
								 <%				
								String sql3 ="select * from listing l join category c on l.email=c.email  where c.subcategory='"+subcategory+"'" ;
								resultSet = statement.executeQuery(sql3);
								if(resultSet.next()){%>
									<h3 style="text-align:center"><%=resultSet.getString("subcategory")%></h3><br>
								<%
								}
								%>
								  <%
								  
									String sql4 ="select * from listing l join category c on l.email=c.email  where c.subcategory='"+subcategory+"'";
									resultSet = statement.executeQuery(sql4);
									while(resultSet.next()){
									%>
									
									
									<div class="col-md-4">
										 <a href="list_grid_each.jsp?title=<%=resultSet.getString("title")%>">
											<div class="list-mig-like-com com-mar-bot-30">
												<div class="list-mig-lc-img"> <img src="images/listing/1.jpg" alt=""> <span class="home-list-pop-rat list-mi-pr">$720</span> </div>
												<div class="list-mig-lc-con">
													<div class="list-rat-ch list-room-rati"> <span>4.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
													
													<h5><a href="list_grid_each.jsp?title=<%=resultSet.getString("title")%>"><%=resultSet.getString("title") %></a></h5>
													<h6><%=resultSet.getString("address") %></h6>
													<p><%=resultSet.getString("city") %></p>
												</div>
											</div>
										</a>
									</div>
									<%
									}
								}
									%>
										 
										
						</div>
						</div>
						</div>
						</div>
								
				</div>
			</div>
		</div>
	</section>
		
	<%@ include file="footer.html" %>

<%
																												
} catch (Exception e) {
e.printStackTrace();
}
finally
{
	connection.close();
}
%>
	
	
</body>
</html>
