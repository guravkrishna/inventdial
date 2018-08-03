<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from rn53themes.net/themes/demo/directory/list-grid.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 02 Jul 2018 05:09:08 GMT -->
<body>

	<%@include file="header.jsp" %>
	
	
	<%-- <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "localsearchengine";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%> --%>


<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="SELECT * FROM category";
resultSet = statement.executeQuery(sql);

%>


	<section class="dir-alp dir-pa-sp-top">
		<div class="container">
			<div class="row">
				<div class="dir-alp-tit">
					<h1>Listing Grid View</h1>
					<ol class="breadcrumb">
						<li><a href="#">Home</a> </li>
						<li><a href="#">Listing</a> </li>
						<li class="active">Grid View</li>
					</ol>
				</div>
			</div>
			<div class="row">
				<div class="dir-alp-con">
					<div class="col-md-3 dir-alp-con-left">
						<div class="dir-alp-con-left-1">
							<h3>Nearby Listings(07)</h3> </div>
						<div class="dir-hom-pre dir-alp-left-ner-notb">
							<ul>
								<!--==========NEARBY LISTINGS============-->
								<li>
									<a href="listing-details.html">
										<div class="list-left-near lln1"> <img src="images/services/s1.jpg" alt="" /> </div>
										<div class="list-left-near lln2">
											<h5>Property Getaways</h5> <span>City: illunois, United States</span> </div>
										<div class="list-left-near lln3"> <span>5.0</span> </div>
									</a>
								</li>
								<!--==========END NEARBY LISTINGS============-->
								<!--==========NEARBY LISTINGS============-->
								<li>
									<a href="listing-details.html">
										<div class="list-left-near lln1"> <img src="images/services/s2.jpg" alt="" /> </div>
										<div class="list-left-near lln2">
											<h5>Home Trends</h5> <span>City: illunois, United States</span> </div>
										<div class="list-left-near lln3"> <span>4.0</span> </div>
									</a>
								</li>
								<!--==========END NEARBY LISTINGS============-->
								<!--==========NEARBY LISTINGS============-->
								<li>
									<a href="listing-details.html">
										<div class="list-left-near lln1"> <img src="images/services/s3.jpg" alt="" /> </div>
										<div class="list-left-near lln2">
											<h5>Security System</h5> <span>City: illunois, United States</span> </div>
										<div class="list-left-near lln3"> <span>4.4</span> </div>
									</a>
								</li>
								<!--==========END NEARBY LISTINGS============-->
								<!--==========NEARBY LISTINGS============-->
								<li>
									<a href="listing-details.html">
										<div class="list-left-near lln1"> <img src="images/services/s4.jpg" alt="" /> </div>
										<div class="list-left-near lln2">
											<h5>Distance Educations</h5> <span>City: illunois, United States</span> </div>
										<div class="list-left-near lln3"> <span>3.8</span> </div>
									</a>
								</li>
								<!--==========END NEARBY LISTINGS============-->
								<!--==========NEARBY LISTINGS============-->
								<li>
									<a href="listing-details.html">
										<div class="list-left-near lln1"> <img src="images/services/s5.jpg" alt="" /> </div>
										<div class="list-left-near lln2">
											<h5>Fresh Cake Shops</h5> <span>City: illunois, United States</span> </div>
										<div class="list-left-near lln3"> <span>4.8</span> </div>
									</a>
								</li>
								<!--==========END NEARBY LISTINGS============-->
								<!--==========NEARBY LISTINGS============-->
								<li>
									<a href="listing-details.html">
										<div class="list-left-near lln1"> <img src="images/services/s6.jpg" alt="" /> </div>
										<div class="list-left-near lln2">
											<h5>Chicago Automobiles</h5> <span>City: illunois, United States</span> </div>
										<div class="list-left-near lln3"> <span>5.0</span> </div>
									</a>
								</li>
								<!--==========END NEARBY LISTINGS============-->
								<!--==========NEARBY LISTINGS============-->
								<li>
									<a href="listing-details.html">
										<div class="list-left-near lln1"> <img src="images/services/s7.jpg" alt="" /> </div>
										<div class="list-left-near lln2">
											<h5>Bike Service Centers</h5> <span>City: illunois, United States</span> </div>
										<div class="list-left-near lln3"> <span>5.0</span> </div>
									</a>
								</li>
								<!--==========END NEARBY LISTINGS============-->
							</ul>
						</div>
						<!--==========Sub Category Filter============-->
						<div class="dir-alp-l3 dir-alp-l-com">
							<h4>Sub Category Filter</h4>
							<div class="dir-alp-l-com1 dir-alp-p3">
								<form action="#">
									<ul>
										<li>
											<label for="scf1"><a href="#">Hortels & Resorts</a></label>
										</li>
										<li>
											<label for="scf2"><a href="#">Fitness Care</a></label>
										</li>
										<li>
											<label for="scf3"><a href="#">Educations</a></label>
										</li>
										<li>
											<label for="scf4"><a href="#">Property</a></label>
										</li>
										<li>
											<label for="scf5"><a href="#">Home Services</a>
											</label>
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
									<h3 style="text-align:center"> List Of Hotel </h3><br>
									
								<%while(resultSet.next()) { %>
								
									<div class="col-md-4">
										<a href="listing-details.jsp?email=<%=resultSet.getString("email") %>">
											<div class="list-mig-like-com com-mar-bot-30">
												<div class="list-mig-lc-img">
													<img src="uploadimg/<%=resultSet.getString(12) %>" alt="" style="width:255px;height:200px;"> 
													<span class="home-list-pop-rat list-mi-pr">$720</span>
												</div>
												<div class="list-mig-lc-con">
													<div class="list-rat-ch list-room-rati">
														<span>4.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> 
													</div>
													<h5><%=resultSet.getString(3) %></h5>
													<h6>0.0 km - 1.0km</h6>
													<p><%=resultSet.getString(5) %></p>
												</div>
											</div>
										</a>
									</div>
									<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
									
								</div>
								<!--LISTINGS END-->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
		
	<!--MOBILE APP-->
	<%@include file="footer.html" %>
</body>


<!-- Mirrored from rn53themes.net/themes/demo/directory/list-grid.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 02 Jul 2018 05:09:28 GMT -->
</html>