
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
function myFunction() {
    alert("click Ok to Submit your listing");
}
</script>
<script>
function validateForm() {
    var x = document.forms["title"]["fname"]["lname"]["phone"]["email"]["city"].value;
    if (x == "") {
        return false;
    }
}
</script>
</head>
<body>
		<%@include file="header.jsp" %>
		
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
							<h2 style="text-align:Center;">Add New Listings</h2>
							<p style="text-align:Center;">Run-down your business for FREE with India's Local Search Engine</p>
						</div>
						<%
						String name=(String)session.getAttribute("name");
					       
				        System.out.println(name);
									if(name==null)
									{
										out.println("<script type=\"text/javascript\">");
										out.println("alert('First Login!');");
										out.println("location='UserLogin.jsp';");
										out.println("</script>");
									}
									else{
						%>
						
						<div class="hom-cre-acc-left hom-cre-acc-right">
							<div class="">
								<form  action="./FreeListing" method="post" name="listing">
								 <div class="row">
										<div class="input-field col s12">
											<input id="email" name="email" type="hidden" class="validate" required value='<%=name %>' readonly>
											<label for="email">Email ID</label>
										</div>
									</div> 
									<div class="row">
										<div class="input-field col s6">
											<input id="fname" name="fname" type="text" class="validate" oninput="this.value = this.value.replace(/[^a-zA-Z.]/g, '').replace(/(\..*)\./g, '$1');"   required>
											<label for="fname">First Name <span style="color:red">*</span></label>
										</div>
										<div class="input-field col s6">
											<input id="lname" name="lname" type="text" class="validate" oninput="this.value = this.value.replace(/[^a-zA-Z.]/g, '').replace(/(\..*)\./g, '$1');"   required>
											<label for="lname">Last Name <span style="color:red">*</span></label>
										</div>
									</div>
									
									<div class="row">
										<div class="input-field col s12">
											<input type="text" name="phone" class="validate" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" pattern="[0-9][0-9]{9}" title="Enter digits only" maxlength="10" required>
											
											<label for="phone">Contact Number <span style="color:red">*</span></label>
										</div>
									</div>
									
									<div class="row">
										<div class="input-field col s12"> 
											 <select name="category">
												<option value="">Type Of Category <span style="color:red">*</span></option>
												<option value="Hotel and Resorts">Hotel and Resorts</option>
												<option value="Education and Traninings">Education and Traninings</option>
												<option value="Internet Service Providers">Internet Service Providers</option>
												<option value="Property Management Services">Property Management Services</option>
												<option value="Computer Repair & Services">Computer Repair & Services</option>
												<option value="Real Estates">Real Estates</option>
												<option value="Travel and Transport">Travel and Transport</option>
												<option value="Professional Services">Professional Services</option>
												<option value="Packers and Movers">Packers and Movers</option>
												<option value="Gyms and Fitness">Gyms and Fitness</option>
												<option value="Yoga Classes">Yoga Classes</option>
												<option value="Health and Fitness">Health and Fitness</option>
												<option value=""></option>
												<option value=""></option>
												<option value=""></option>
												<!-- <option value=""></option>
												<option value=""></option>
												<option value=""></option>
												<option value=""></option> -->
											</select>  
										</div>
									</div>
									
									<div class="row">
										<div class="input-field col s12">
											<input type="text" name="land" class="validate" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" pattern="[0-9][0-9]{11}" title="Enter digits only" maxlength="12"  >
											
											<label for="land">Landline Number</label>
										</div>
									</div>
									
									
									<div class="row">
										<div class="input-field col s12">
											<!-- <input id="city" name="city" type="text" class="validate" required>
											<label for="list_addr">City</label> -->
											<input id="autocomplete" placeholder="Enter City*" name="city" class="autocomplete" style="background-color:#fff;color:black;height:5.5rem;"
						         onFocus="geolocate()" type="text" autocomplete="off" required>
						         	<label for="list_addr">City <span style="color:red">*</span></label></input>
										</div>
									</div>
									
									<br><center>						
									<div class="row" style="width:40%";>
										<input type="submit" value="submit" onsubmit="return validateForm()"/>
									</div></center>	
								</form>
								<% }%>
								<p><span style="color:red">*</span> represents mandatory.</p>
								<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDidKGjHVKSzG0la9YbX33bfBqH7e_9HTw&libraries=places&callback=initAutocomplete"
                         async defer></script>
					<script>
					// This example displays an address form, using the autocomplete feature
					// of the Google Places API to help users fill in the information.

					// This example requires the Places library. Include the libraries=places
					// parameter when you first load the API. For example:
					// <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">

					var placeSearch, autocomplete;
					var componentForm = {
					  street_number: 'short_name',
					  route: 'long_name',
					  locality: 'long_name',
					  administrative_area_level_1: 'short_name',
					  country: 'long_name',
					  postal_code: 'short_name'
					};

					function initAutocomplete() {
					  // Create the autocomplete object, restricting the search to geographical
					  // location types.
					  autocomplete = new google.maps.places.Autocomplete(
					      /** @type {!HTMLInputElement} */(document.getElementById('autocomplete')),
					      {types: ['geocode']});

					  // When the user selects an address from the dropdown, populate the address
					  // fields in the form.
					  autocomplete.addListener('place_changed', fillInAddress);
					}

					function fillInAddress() {
					  // Get the place details from the autocomplete object.
					  var place = autocomplete.getPlace();

					  for (var component in componentForm) {
					    document.getElementById(component).value = '';
					    document.getElementById(component).disabled = false;
					  }

					  // Get each component of the address from the place details
					  // and fill the corresponding field on the form.
					  for (var i = 0; i < place.address_components.length; i++) {
					    var addressType = place.address_components[i].types[0];
					    if (componentForm[addressType]) {
					      var val = place.address_components[i][componentForm[addressType]];
					      document.getElementById(addressType).value = val;
					    }
					  }
					}

					// Bias the autocomplete object to the user's geographical location,
					// as supplied by the browser's 'navigator.geolocation' object.
					function geolocate() {
					  if (navigator.geolocation) {
					    navigator.geolocation.getCurrentPosition(function(position) {
					      var geolocation = {
					        lat: position.coords.latitude,
					        lng: position.coords.longitude
					      };
					      var circle = new google.maps.Circle({
					        center: geolocation,
					        radius: position.coords.accuracy
					      });
					      autocomplete.setBounds(circle.getBounds());
					    });
					  }
					}
					</script>
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
		
		
		<%@include file="footer.html" %>
</body>
</html>