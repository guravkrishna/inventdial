<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
function myFunction() {
    alert("clicl Ok to Complete your listing");
}
</script>
</head>
<body>
	<%@include file="header.jsp" %>
     
    <!--DASHBOARD-->
	<section>
		<div class="tz">
			<!--LEFT SECTION-->
			<div class="tz-l">
				<div class="tz-l-1">
					<ul>
						<li><img src="images/db-profile.jpg" alt="" /> </li>
						<li><span>80%</span> profile compl</li>
						<li><span>18</span> Notifications</li>
					</ul>
				</div>
				<div class="tz-l-2">
					<ul>
						<li>
							<a href="dashboard.html"><img src="images/icon/dbl1.png" alt="" /> My Dashboard</a>
						</li>
						<li>
							<a href="db-all-listing.html"><img src="images/icon/dbl2.png" alt="" /> All Listing</a>
						</li>
						<li>
							<a href="db-listing-add.html" class="tz-lma"><img src="images/icon/dbl3.png" alt="" /> Add New Listing</a>
						</li>
						<li>
							<a href="db-message.html"><img src="images/icon/dbl14.png" alt="" /> Messages(12)</a>
						</li>
						<li>
							<a href="db-review.html"><img src="images/icon/dbl13.png" alt="" /> Reviews(05)</a>
						</li>
						<li>
							<a href="db-my-profile.html"><img src="images/icon/dbl6.png" alt="" /> My Profile</a>
						</li>
						<li>
							<a href="db-post-ads.html"><img src="images/icon/dbl11.png" alt="" /> Ad Summary</a>
						</li>
						<li>
							<a href="db-payment.html"><img src="images/icon/dbl9.png" alt=""> Check Out</a>
						</li>
						<li>
							<a href="db-invoice-all.html"><img src="images/icon/db21.png" alt="" /> Invoice</a>
						</li>						
						<li>
							<a href="db-claim.html"><img src="images/icon/dbl7.png" alt="" /> Claim & Refund</a>
						</li>
						<li>
							<a href="db-setting.html"><img src="images/icon/dbl210.png" alt="" /> Setting</a>
						</li>
						<li>
							<a href="#!"><img src="images/icon/dbl12.png" alt="" /> Log Out</a>
						</li>
					</ul>
				</div>
			</div>
			<!--CENTER SECTION-->
			<div class="tz-2">
				<div class="tz-2-com tz-2-main">
					<h4>Submit Listings</h4>
					<div class="db-list-com tz-db-table">
						<div class="ds-boar-title">
							<h2>Add New Listings</h2>
							<p>All the Lorem Ipsum generators on the All the Lorem Ipsum generators on the</p>
						</div>
						<div class="hom-cre-acc-left hom-cre-acc-right">
							<div class="">
								<form  action="UserListing" method="post" enctype="multipart/form-data">
									<div class="row">
										<div class="input-field col s6">
											<input id="first_name" name="first_name" type="text" class="validate">
											<label for="first_name">First Name</label>
										</div>
										<div class="input-field col s6">
											<input id="last_name" name="last_name" type="text" class="validate">
											<label for="last_name">Last Name</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input id="list_name" name="list_name" type="text" class="validate">
											<label for="list_name">Listing Title</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input type="text" name="list_phone" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"  maxlength="10"  class="validate"/>
											
											<label for="list_phone">Phone</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input id="email" name="email" type="email" class="validate">
											<label for="email">Email</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input id="list_addr" name="list_adderss" type="text" class="validate">
											<label for="list_addr">Address</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<select name="type">
												<option value="" disabled selected>Listing Type</option>
												<option value="1">Free</option>
												<option value="2">Premium</option>
												<option value="3">Premium Plus</option>
												<option value="4">Ultra Premium Plus</option>
											</select>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<select name="city">
												<option value="" disabled selected>Choose your city</option>
												<option value="Bangalore">Bangalore</option>
												<option value="Pune">Pune</option>
												<option value="Tamil Nadu">Tamil nadu</option>
												<option value="Hydrabad">Hydrabad</option>
												<option value="Varanasi">Varanasi</option>
												
											</select>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<select name="category">
												<option value="" disabled selected>Select Category</option>
												<option value="Hotels & Resorts">Hotels & Resorts</option>
												<option value="Real Estate">Real Estate</option>
												<option value="Trainings">Trainings</option>
												<option value="Education">Education</option>
												<option value="Hospitals">Hospitals</option>
												<option value="Transportation">Transportation</option>
												<option value="Automobilers">Automobilers</option>
												<option value="Computer Repair">Computer Repair</option>
												<option value="Property">Property</option>
												<option value="Food Court">Food Court</option>
												<option value="Sports Events">Sports Events</option>
												<option value="Tour & Travels">Tour & Travels</option>
												<option value="Health Care">Health Care</option>
												<option value="Gym & Fitness">Gym & Fitness</option>
												<option value="">Packers and Movers</option>
												<option value="">Interior Design</option>
												<option value="">Clubs</option>
												<option value="">Mobile Shops</option>
											</select>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<select name="day">
												<option value="" disabled selected>Opening Days</option>
												<option value="All Days">All Days</option>
												<option value="Monday">Monday</option>
												<option value="Tuesday">Tuesday</option>
												<option value="Wednesday">Wednesday</option>
												<option value="Thursday">Thursday</option>
												<option value="Friday">Friday</option>
												<option value="Saturday">Saturday</option>
												<option value="Sunday">Sunday</option>
											</select>
										</div>
									</div>
								<div class="row">
									<div class="input-field col s6">
										<select name="otime">
											<option value="" disabled selected>Open Time</option>
											<option value="12:00 AM">12:00 AM </option>
											<option value="01:00 AM">01:00 AM</option>
											<option value="02:00 AM">02:00 AM</option>
											<option value="03:00 AM">03:00 AM</option>
											<option value="04:00 AM">04:00 AM</option>
											<option value="05:00 AM">05:00 AM</option>
											<option value="06:00 AM">06:00 AM</option>
											<option value="07:00 AM">07:00 AM</option>
											<option value="08:00 AM">08:00 AM</option>
											<option value="09:00 AM">09:00 AM</option>
											<option value="10:00 AM">10:00 AM</option>
											<option value="11:00 AM">11:00 AM</option>
											<option value="12:00 PM">12:00 PM</option>
											<option value="13:00 PM">01:00 PM</option>
											<option value="14:00 PM">02:00 PM</option>
											<option value="15:00 PM">03:00 PM</option>
											<option value="16:00 PM">04:00 PM</option>
											<option value="17:00 PM">05:00 PM</option>
											<option value="18:00 PM">06:00 PM</option>
											<option value="19:00 PM">07:00 PM</option>
											<option value="20:00 PM">08:00 PM</option>
											<option value="21:00 PM">09:00 PM</option>
											<option value="22:00 PM">10:00 PM</option>
											<option value="23:00 PM">11:00 PM</option>	
										</select>
									</div>
									<div class="input-field col s6">
										<select name="ctime">
											<option value="" disabled selected>Closing Time</option>
											<option value="12:00 AM">12:00 AM </option>
											<option value="01:00 AM">01:00 AM</option>
											<option value="02:00 AM">02:00 AM</option>
											<option value="03:00 AM">03:00 AM</option>
											<option value="04:00 AM">04:00 AM</option>
											<option value="05:00 AM">05:00 AM</option>
											<option value="06:00 AM">06:00 AM</option>
											<option value="07:00 AM">07:00 AM</option>
											<option value="08:00 AM">08:00 AM</option>
											<option value="09:00 AM">09:00 AM</option>
											<option value="10:00 AM">10:00 AM</option>
											<option value="11:00 AM">11:00 AM</option>
											<option value="12:00 PM">12:00 PM</option>
											<option value="13:00 PM">01:00 PM</option>
											<option value="14:00 PM">02:00 PM</option>
											<option value="15:00 PM">03:00 PM</option>
											<option value="16:00 PM">04:00 PM</option>
											<option value="17:00 PM">05:00 PM</option>
											<option value="18:00 PM">06:00 PM</option>
											<option value="19:00 PM">07:00 PM</option>
											<option value="20:00 PM">08:00 PM</option>
											<option value="21:00 PM">09:00 PM</option>
											<option value="22:00 PM">10:00 PM</option>
											<option value="23:00 PM">11:00 PM</option>											
										</select>
									</div>
								</div>
									<div class="row"> </div>
									<div class="row">
										<div class="input-field col s12">
											<textarea id="textarea1" name="textarea1" class="materialize-textarea"></textarea>
											<label for="textarea1">Listing Descriptions</label>
										</div>
									</div>
									<div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Social Media Informations:</h5>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input type="text" class="validate" name="flink">
											<label>www.facebook.com/directory</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input type="text" class="validate" name="glink">
											<label>www.googleplus.com/directory</label>
										</div>
									</div>
										
									<div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Listing Guarantee:</h5>
										</div>
									</div>	
									<div class="row">
										<div class="input-field col s12">
											<select name="service">
												<option value="" disabled selected>Select Service Guarantee</option>
												<option value="1">Upto 2 month of service</option>
												<option value="2">Upto 6 month of service</option>
												<option value="3">Upto 1 year of service</option>
												<option value="4">Upto 2 year of service</option>
												<option value="5">Upto 5 year of service</option>
											</select>
										</div>
									</div>									
									<div class="row">
										<div class="input-field col s12">
											<select name="prof">
												<option value="" disabled selected>Are you a Professionals for this service?</option>
												<option value="yes">Yes</option>
												<option value="no">No</option>
											</select>
										</div>
									</div>									
									<div class="row">
										<div class="input-field col s12">
											<select name="limit">
												<option value="" disabled selected>Insurance Limits</option>
												<option value="1">Upto $5,000</option>
												<option value="2">Upto $10,000</option>
												<option value="3">Upto $15,000</option>
											</select>
										</div>
									</div>	
									<div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Google Map:</h5>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input type="text" class="validate" name="map">
											<label>Past your iframe code here</label>
										</div>
									</div>
									<div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>360 Degree View:</h5>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input type="text" class="validate" name="degree">
											<label>Past your iframe code here</label>
										</div>
									</div>									
									<div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Cover Image <span class="v2-db-form-note">(image size 1350x500):<span></h5>
										</div>
									</div>
									<div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>File</span>
												<input type="file" name="cimg"> </div>
											<div class="file-path-wrapper db-v2-pg-inp">
												<input class="file-path validate" type="text"> 
											</div>
										</div>
									</div>
									<div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Logo Image <span class="v2-db-form-note">(image size 1350x500):</span></h5>
										</div>
									</div>
									<div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>File</span>
												<input type="file" name="limg"> </div>
											<div class="file-path-wrapper db-v2-pg-inp">
												<input class="file-path validate" type="text"> 
											</div>
										</div>
									</div>
									<div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Photo Gallery <span class="v2-db-form-note">(upload multiple photos note:size 750x500):<span></h5>
										</div>
									<div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>image 1</span>
												<input type="file" name="fgal"> </div>
											<div class="file-path-wrapper db-v2-pg-inp">
												<input class="file-path validate" type="text"> 
											</div>
										</div>
									</div>
									
									<div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>Image 2</span>
												<input type="file" name="sgal"> </div>
											<div class="file-path-wrapper db-v2-pg-inp">
												<input class="file-path validate" type="text"> 
											</div>
										</div>
									</div>
									
									<div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>Image 3</span>
												<input type="file" name="tgal"> </div>
											<div class="file-path-wrapper db-v2-pg-inp">
												<input class="file-path validate" type="text"> 
											</div>
										</div>
									</div>
									
										
									
									<div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>Image 4</span>
												<input type="file" name="fogal"> </div>
											<div class="file-path-wrapper db-v2-pg-inp">
												<input class="file-path validate" type="text"> 
											</div>
										</div>
									</div>	
									</div>								
									<div class="row">
											<button type="submit" value="Submit" onclick="myFunction()">Submit</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--RIGHT SECTION-->
			<div class="tz-3">
				<h4>Notifications(18)</h4>
				<ul>
					<li>
						<a href="#!"> <img src="images/icon/dbr1.jpg" alt="" />
							<h5>Joseph, write a review</h5>
							<p>All the Lorem Ipsum generators on the</p>
						</a>
					</li>
					<li>
						<a href="#!"> <img src="images/icon/dbr2.jpg" alt="" />
							<h5>14 New Messages</h5>
							<p>All the Lorem Ipsum generators on the</p>
						</a>
					</li>
					<li>
						<a href="#!"> <img src="images/icon/dbr3.jpg" alt="" />
							<h5>Ads expairy soon</h5>
							<p>All the Lorem Ipsum generators on the</p>
						</a>
					</li>
					<li>
						<a href="#!"> <img src="images/icon/dbr4.jpg" alt="" />
							<h5>Post free ads - today only</h5>
							<p>All the Lorem Ipsum generators on the</p>
						</a>
					</li>
					<li>
						<a href="#!"> <img src="images/icon/dbr5.jpg" alt="" />
							<h5>listing limit increase</h5>
							<p>All the Lorem Ipsum generators on the</p>
						</a>
					</li>
					<li>
						<a href="#!"> <img src="images/icon/dbr6.jpg" alt="" />
							<h5>mobile app launch</h5>
							<p>All the Lorem Ipsum generators on the</p>
						</a>
					</li>
					<li>
						<a href="#!"> <img src="images/icon/dbr7.jpg" alt="" />
							<h5>Setting Updated</h5>
							<p>All the Lorem Ipsum generators on the</p>
						</a>
					</li>
					<li>
						<a href="#!"> <img src="images/icon/dbr8.jpg" alt="" />
							<h5>Increase listing viewers</h5>
							<p>All the Lorem Ipsum generators on the</p>
						</a>
					</li>
				</ul>
			</div>
		</div>
	</section>
	<!--END DASHBOARD-->
    
     
    <%@include file="footer.html" %>
</body>
</html>