<!DOCTYPE html>
<html lang="en">
<body>
	
	<%@include file="header.jsp"%>
	
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
									<a href="listing-details.jsp">
										<div class="list-left-near lln1"> <img src="images/services/s1.jpg" alt="" /> </div>
										<div class="list-left-near lln2">
											<h5>Property Getaways</h5> <span>City: illunois, United States</span> </div>
										<div class="list-left-near lln3"> <span>5.0</span> </div>
									</a>
								</li>
								<!--==========END NEARBY LISTINGS============-->
								<!--==========NEARBY LISTINGS============-->
								<li>
									<a href="listing-details.jsp">
										<div class="list-left-near lln1"> <img src="images/services/s2.jpg" alt="" /> </div>
										<div class="list-left-near lln2">
											<h5>Home Trends</h5> <span>City: illunois, United States</span> </div>
										<div class="list-left-near lln3"> <span>4.0</span> </div>
									</a>
								</li>
								<!--==========END NEARBY LISTINGS============-->
								<!--==========NEARBY LISTINGS============-->
								<li>
									<a href="listing-details.jsp">
										<div class="list-left-near lln1"> <img src="images/services/s3.jpg" alt="" /> </div>
										<div class="list-left-near lln2">
											<h5>Security System</h5> <span>City: illunois, United States</span> </div>
										<div class="list-left-near lln3"> <span>4.4</span> </div>
									</a>
								</li>
								<!--==========END NEARBY LISTINGS============-->
								<!--==========NEARBY LISTINGS============-->
								<li>
									<a href="listing-details.jsp">
										<div class="list-left-near lln1"> <img src="images/services/s4.jpg" alt="" /> </div>
										<div class="list-left-near lln2">
											<h5>Distance Educations</h5> <span>City: illunois, United States</span> </div>
										<div class="list-left-near lln3"> <span>3.8</span> </div>
									</a>
								</li>
								<!--==========END NEARBY LISTINGS============-->
								<!--==========NEARBY LISTINGS============-->
								<li>
									<a href="listing-details.jsp">
										<div class="list-left-near lln1"> <img src="images/services/s5.jpg" alt="" /> </div>
										<div class="list-left-near lln2">
											<h5>Fresh Cake Shops</h5> <span>City: illunois, United States</span> </div>
										<div class="list-left-near lln3"> <span>4.8</span> </div>
									</a>
								</li>
								<!--==========END NEARBY LISTINGS============-->
								<!--==========NEARBY LISTINGS============-->
								<li>
									<a href="listing-details.jsp">
										<div class="list-left-near lln1"> <img src="images/services/s6.jpg" alt="" /> </div>
										<div class="list-left-near lln2">
											<h5>Chicago Automobiles</h5> <span>City: illunois, United States</span> </div>
										<div class="list-left-near lln3"> <span>5.0</span> </div>
									</a>
								</li>
								<!--==========END NEARBY LISTINGS============-->
								<!--==========NEARBY LISTINGS============-->
								<li>
									<a href="listing-details.jsp">
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
									<h3 style="text-align:center"> List Of Popular Hospital </h3><br>
									<div class="col-md-4">
										<a href="listing-details.jsp">
											<div class="list-mig-like-com com-mar-bot-30">
												<div class="list-mig-lc-img"> <img src="images/listing/1.jpg" alt=""> <span class="home-list-pop-rat list-mi-pr">$720</span> </div>
												<div class="list-mig-lc-con">
													<div class="list-rat-ch list-room-rati"> <span>4.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
													<h5>Holiday Inn Express</h5>
													<h6>0.0 km - 1.0km</h6>
													<p>Illinois City,</p>
												</div>
											</div>
										</a>
									</div>
									<div class="col-md-4">
										<a href="listing-details.jsp">
											<div class="list-mig-like-com com-mar-bot-30">
												<div class="list-mig-lc-img"> <img src="images/listing/3.jpg" alt=""> <span class="home-list-pop-rat list-mi-pr">$380</span> </div>
												<div class="list-mig-lc-con">
													<div class="list-rat-ch list-room-rati"> <span>5.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> </div>
													<h5>Staybridger Suites</h5>
													<h6>2.0 km - 4.0km</h6>
													<p>Illinois City,</p>
												</div>
											</div>
										</a>
									</div>
									<div class="col-md-4">
										<a href="listing-details.jsp">
											<div class="list-mig-like-com com-mar-bot-30">
												<div class="list-mig-lc-img"> <img src="images/listing/2.jpg" alt=""> <span class="home-list-pop-rat list-mi-pr">$420</span> </div>
												<div class="list-mig-lc-con">
													<div class="list-rat-ch list-room-rati"> <span>3.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
													<h5>InterContinental</h5>
													<h6>5.0 km - 8.0km</h6>
													<p>Illinois City,</p>
												</div>
											</div>
										</a>
									</div>
									<div class="col-md-4">
										<a href="listing-details.jsp">
											<div class="list-mig-like-com com-mar-bot-30">
												<div class="list-mig-lc-img"> <img src="images/listing/4.jpg" alt=""> <span class="home-list-pop-rat list-mi-pr">$720</span> </div>
												<div class="list-mig-lc-con">
													<div class="list-rat-ch list-room-rati"> <span>4.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
													<h5>Starboard Red Wines</h5>
													<h6>8.0 km - 10.0km</h6>
													<p>Illinois City,</p>
												</div>
											</div>
										</a>
									</div>
									<div class="col-md-4">
										<a href="listing-details.jsp">
											<div class="list-mig-like-com com-mar-bot-30">
												<div class="list-mig-lc-img"> <img src="images/listing/5.jpg" alt=""> <span class="home-list-pop-rat list-mi-pr">$380</span> </div>
												<div class="list-mig-lc-con">
													<div class="list-rat-ch list-room-rati"> <span>5.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> </div>
													<h5>Pet Shops</h5>
													<h6>6.0 km - 8.0km</h6>
													<p>Illinois City,</p>
												</div>
											</div>
										</a>
									</div>
									<div class="col-md-4">
										<a href="listing-details.jsp">
											<div class="list-mig-like-com com-mar-bot-30">
												<div class="list-mig-lc-img"> <img src="images/listing/6.jpg" alt=""> <span class="home-list-pop-rat list-mi-pr">$420</span> </div>
												<div class="list-mig-lc-con">
													<div class="list-rat-ch list-room-rati"> <span>3.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
													<h5>Philly Honeymoon Packages</h5>
													<h6>12.0 km - 14.0km</h6>
													<p>Illinois City,</p>
												</div>
											</div>
										</a>
									</div>
									<div class="col-md-4">
										<a href="listing-details.jsp">
											<div class="list-mig-like-com com-mar-bot-30">
												<div class="list-mig-lc-img"> <img src="images/listing/7.jpg" alt=""> <span class="home-list-pop-rat list-mi-pr">$420</span> </div>
												<div class="list-mig-lc-con">
													<div class="list-rat-ch list-room-rati"> <span>3.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
													<h5>Shake Fashions</h5>
													<h6>15.0 km - 18.0km</h6>
													<p>Illinois City,</p>
												</div>
											</div>
										</a>
									</div>
									<div class="col-md-4">
										<a href="listing-details.jsp">
											<div class="list-mig-like-com com-mar-bot-30">
												<div class="list-mig-lc-img"> <img src="images/listing/8.jpg" alt=""> <span class="home-list-pop-rat list-mi-pr">$420</span> </div>
												<div class="list-mig-lc-con">
													<div class="list-rat-ch list-room-rati"> <span>3.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
													<h5>Sparrow Chicken</h5>
													<h6>18.0 km - 20.0km</h6>
													<p>Illinois City,</p>
												</div>
											</div>
										</a>
									</div>
									<div class="col-md-4">
										<a href="listing-details.jsp">
											<div class="list-mig-like-com com-mar-bot-30">
												<div class="list-mig-lc-img"> <img src="images/listing/9.jpg" alt=""> <span class="home-list-pop-rat list-mi-pr">$420</span> </div>
												<div class="list-mig-lc-con">
													<div class="list-rat-ch list-room-rati"> <span>3.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
													<h5>Big Jack T-stall</h5>
													<h6>20.0 km - 25.0km</h6>
													<p>Illinois City,</p>
												</div>
											</div>
										</a>
									</div>
									<div class="col-md-4">
										<a href="listing-details.jsp">
											<div class="list-mig-like-com com-mar-bot-30">
												<div class="list-mig-lc-img"> <img src="images/listing/10.jpg" alt=""> <span class="home-list-pop-rat list-mi-pr">$420</span> </div>
												<div class="list-mig-lc-con">
													<div class="list-rat-ch list-room-rati"> <span>3.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
													<h5>Continental Shopiing Street</h5>
													<h6>25.0 km - 30.0km</h6>
													<p>Illinois City,</p>
												</div>
											</div>
										</a>
									</div>
									<div class="col-md-4">
										<a href="listing-details.jsp">
											<div class="list-mig-like-com com-mar-bot-30">
												<div class="list-mig-lc-img"> <img src="images/listing/11.jpg" alt=""> <span class="home-list-pop-rat list-mi-pr">$420</span> </div>
												<div class="list-mig-lc-con">
													<div class="list-rat-ch list-room-rati"> <span>3.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
													<h5>Flow Flower Shop</h5>
													<h6>30.0 km - 35.0km</h6>
													<p>Illinois City,</p>
												</div>
											</div>
										</a>
									</div>
									<div class="col-md-4">
										<a href="listing-details.jsp">
											<div class="list-mig-like-com com-mar-bot-30">
												<div class="list-mig-lc-img"> <img src="images/listing/12.jpg" alt=""> <span class="home-list-pop-rat list-mi-pr">$420</span> </div>
												<div class="list-mig-lc-con">
													<div class="list-rat-ch list-room-rati"> <span>3.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
													<h5>Maths Tuitions Centre</h5>
													<h6>40.0 km - 45.0km</h6>
													<p>Illinois City,</p>
												</div>
											</div>
										</a>
									</div>
									<div class="col-md-4">
										<a href="listing-details.jsp">
											<div class="list-mig-like-com com-mar-bot-30">
												<div class="list-mig-lc-img"> <img src="images/listing/13.jpg" alt=""> <span class="home-list-pop-rat list-mi-pr">$420</span> </div>
												<div class="list-mig-lc-con">
													<div class="list-rat-ch list-room-rati"> <span>3.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
													<h5>Indian Grill Chicken</h5>
													<h6>45.0 km - 50.0km</h6>
													<p>Illinois City,</p>
												</div>
											</div>
										</a>
									</div>
									<div class="col-md-4">
										<a href="listing-details.jsp">
											<div class="list-mig-like-com com-mar-bot-30">
												<div class="list-mig-lc-img"> <img src="images/listing/14.jpg" alt=""> <span class="home-list-pop-rat list-mi-pr">$420</span> </div>
												<div class="list-mig-lc-con">
													<div class="list-rat-ch list-room-rati"> <span>3.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
													<h5>Suprime Car ShowRoom</h5>
													<h6>50.0 km - 55.0km</h6>
													<p>Illinois City,</p>
												</div>
											</div>
										</a>
									</div>
									<div class="col-md-4">
										<a href="listing-details.jsp">
											<div class="list-mig-like-com com-mar-bot-30">
												<div class="list-mig-lc-img"> <img src="images/listing/15.jpg" alt=""> <span class="home-list-pop-rat list-mi-pr">$420</span> </div>
												<div class="list-mig-lc-con">
													<div class="list-rat-ch list-room-rati"> <span>3.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
													<h5>Joney Supermarket</h5>
													<h6>55.0 km - 60.0km</h6>
													<p>Illinois City,</p>
												</div>
											</div>
										</a>
									</div>
									<div class="col-md-4">
										<a href="listing-details.jsp">
											<div class="list-mig-like-com com-mar-bot-30">
												<div class="list-mig-lc-img"> <img src="images/listing/1.jpg" alt=""> <span class="home-list-pop-rat list-mi-pr">$720</span> </div>
												<div class="list-mig-lc-con">
													<div class="list-rat-ch list-room-rati"> <span>4.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
													<h5>Holiday Inn Express</h5>
													<h6>0.0 km - 1.0km</h6>
													<p>Illinois City,</p>
												</div>
											</div>
										</a>
									</div>
									<div class="col-md-4">
										<a href="listing-details.jsp">
											<div class="list-mig-like-com com-mar-bot-30">
												<div class="list-mig-lc-img"> <img src="images/listing/3.jpg" alt=""> <span class="home-list-pop-rat list-mi-pr">$380</span> </div>
												<div class="list-mig-lc-con">
													<div class="list-rat-ch list-room-rati"> <span>5.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> </div>
													<h5>Staybridger Suites</h5>
													<h6>2.0 km - 4.0km</h6>
													<p>Illinois City,</p>
												</div>
											</div>
										</a>
									</div>
									<div class="col-md-4">
										<a href="listing-details.jsp">
											<div class="list-mig-like-com com-mar-bot-30">
												<div class="list-mig-lc-img"> <img src="images/listing/2.jpg" alt=""> <span class="home-list-pop-rat list-mi-pr">$420</span> </div>
												<div class="list-mig-lc-con">
													<div class="list-rat-ch list-room-rati"> <span>3.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
													<h5>InterContinental</h5>
													<h6>5.0 km - 8.0km</h6>
													<p>Illinois City,</p>
												</div>
											</div>
										</a>
									</div>
									<div class="col-md-4">
										<a href="listing-details.jsp">
											<div class="list-mig-like-com com-mar-bot-30">
												<div class="list-mig-lc-img"> <img src="images/listing/4.jpg" alt=""> <span class="home-list-pop-rat list-mi-pr">$720</span> </div>
												<div class="list-mig-lc-con">
													<div class="list-rat-ch list-room-rati"> <span>4.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
													<h5>Starboard Red Wines</h5>
													<h6>8.0 km - 10.0km</h6>
													<p>Illinois City,</p>
												</div>
											</div>
										</a>
									</div>
									<div class="col-md-4">
										<a href="listing-details.jsp">
											<div class="list-mig-like-com com-mar-bot-30">
												<div class="list-mig-lc-img"> <img src="images/listing/5.jpg" alt=""> <span class="home-list-pop-rat list-mi-pr">$380</span> </div>
												<div class="list-mig-lc-con">
													<div class="list-rat-ch list-room-rati"> <span>5.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> </div>
													<h5>Pet Shops</h5>
													<h6>6.0 km - 8.0km</h6>
													<p>Illinois City,</p>
												</div>
											</div>
										</a>
									</div>
									<div class="col-md-4">
										<a href="listing-details.jsp">
											<div class="list-mig-like-com com-mar-bot-30">
												<div class="list-mig-lc-img"> <img src="images/listing/6.jpg" alt=""> <span class="home-list-pop-rat list-mi-pr">$420</span> </div>
												<div class="list-mig-lc-con">
													<div class="list-rat-ch list-room-rati"> <span>3.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
													<h5>Philly Honeymoon Packages</h5>
													<h6>12.0 km - 14.0km</h6>
													<p>Illinois City,</p>
												</div>
											</div>
										</a>
									</div>
									<div class="col-md-4">
										<a href="listing-details.jsp">
											<div class="list-mig-like-com com-mar-bot-30">
												<div class="list-mig-lc-img"> <img src="images/listing/7.jpg" alt=""> <span class="home-list-pop-rat list-mi-pr">$420</span> </div>
												<div class="list-mig-lc-con">
													<div class="list-rat-ch list-room-rati"> <span>3.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
													<h5>Shake Fashions</h5>
													<h6>15.0 km - 18.0km</h6>
													<p>Illinois City,</p>
												</div>
											</div>
										</a>
									</div>
									<div class="col-md-4">
										<a href="listing-details.jsp">
											<div class="list-mig-like-com com-mar-bot-30">
												<div class="list-mig-lc-img"> <img src="images/listing/8.jpg" alt=""> <span class="home-list-pop-rat list-mi-pr">$420</span> </div>
												<div class="list-mig-lc-con">
													<div class="list-rat-ch list-room-rati"> <span>3.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
													<h5>Sparrow Chicken</h5>
													<h6>18.0 km - 20.0km</h6>
													<p>Illinois City,</p>
												</div>
											</div>
										</a>
									</div>
									<div class="col-md-4">
										<a href="listing-details.jsp">
											<div class="list-mig-like-com com-mar-bot-30">
												<div class="list-mig-lc-img"> <img src="images/listing/9.jpg" alt=""> <span class="home-list-pop-rat list-mi-pr">$420</span> </div>
												<div class="list-mig-lc-con">
													<div class="list-rat-ch list-room-rati"> <span>3.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
													<h5>Big Jack T-stall</h5>
													<h6>20.0 km - 25.0km</h6>
													<p>Illinois City,</p>
												</div>
											</div>
										</a>
									</div>
									<div class="col-md-4">
										<a href="listing-details.jsp">
											<div class="list-mig-like-com com-mar-bot-30">
												<div class="list-mig-lc-img"> <img src="images/listing/10.jpg" alt=""> <span class="home-list-pop-rat list-mi-pr">$420</span> </div>
												<div class="list-mig-lc-con">
													<div class="list-rat-ch list-room-rati"> <span>3.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
													<h5>Continental Shopiing Street</h5>
													<h6>25.0 km - 30.0km</h6>
													<p>Illinois City,</p>
												</div>
											</div>
										</a>
									</div>
									<div class="col-md-4">
										<a href="listing-details.jsp">
											<div class="list-mig-like-com com-mar-bot-30">
												<div class="list-mig-lc-img"> <img src="images/listing/11.jpg" alt=""> <span class="home-list-pop-rat list-mi-pr">$420</span> </div>
												<div class="list-mig-lc-con">
													<div class="list-rat-ch list-room-rati"> <span>3.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
													<h5>Flow Flower Shop</h5>
													<h6>30.0 km - 35.0km</h6>
													<p>Illinois City,</p>
												</div>
											</div>
										</a>
									</div>
									<div class="col-md-4">
										<a href="listing-details.jsp">
											<div class="list-mig-like-com com-mar-bot-30">
												<div class="list-mig-lc-img"> <img src="images/listing/12.jpg" alt=""> <span class="home-list-pop-rat list-mi-pr">$420</span> </div>
												<div class="list-mig-lc-con">
													<div class="list-rat-ch list-room-rati"> <span>3.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
													<h5>Maths Tuitions Centre</h5>
													<h6>40.0 km - 45.0km</h6>
													<p>Illinois City,</p>
												</div>
											</div>
										</a>
									</div>
									<div class="col-md-4">
										<a href="listing-details.jsp">
											<div class="list-mig-like-com com-mar-bot-30">
												<div class="list-mig-lc-img"> <img src="images/listing/13.jpg" alt=""> <span class="home-list-pop-rat list-mi-pr">$420</span> </div>
												<div class="list-mig-lc-con">
													<div class="list-rat-ch list-room-rati"> <span>3.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
													<h5>Indian Grill Chicken</h5>
													<h6>45.0 km - 50.0km</h6>
													<p>Illinois City,</p>
												</div>
											</div>
										</a>
									</div>
									<div class="col-md-4">
										<a href="listing-details.jsp">
											<div class="list-mig-like-com com-mar-bot-30">
												<div class="list-mig-lc-img"> <img src="images/listing/14.jpg" alt=""> <span class="home-list-pop-rat list-mi-pr">$420</span> </div>
												<div class="list-mig-lc-con">
													<div class="list-rat-ch list-room-rati"> <span>3.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
													<h5>Suprime Car ShowRoom</h5>
													<h6>50.0 km - 55.0km</h6>
													<p>Illinois City,</p>
												</div>
											</div>
										</a>
									</div>
									<div class="col-md-4">
										<a href="listing-details.jsp">
											<div class="list-mig-like-com com-mar-bot-30">
												<div class="list-mig-lc-img"> <img src="images/listing/15.jpg" alt=""> <span class="home-list-pop-rat list-mi-pr">$420</span> </div>
												<div class="list-mig-lc-con">
													<div class="list-rat-ch list-room-rati"> <span>3.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
													<h5>Joney Supermarket</h5>
													<h6>55.0 km - 60.0km</h6>
													<p>Illinois City,</p>
												</div>
											</div>
										</a>
									</div>
									<div class="row">
										<ul class="pagination list-pagenat">
											<li class="disabled"><a href="#!"><i class="material-icons">chevron_left</i></a> </li>
											<li class="active"><a href="#!">1</a> </li>
											<li class="waves-effect"><a href="#!">2</a> </li>
											<li class="waves-effect"><a href="#!">3</a> </li>
											<li class="waves-effect"><a href="#!">4</a> </li>
											<li class="waves-effect"><a href="#!">5</a> </li>
											<li class="waves-effect"><a href="#!">6</a> </li>
											<li class="waves-effect"><a href="#!">7</a> </li>
											<li class="waves-effect"><a href="#!">8</a> </li>
											<li class="waves-effect"><a href="#!"><i class="material-icons">chevron_right</i></a> </li>
										</ul>
									</div>
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
	<%@include file="footer.html"%>
</body>


</html>