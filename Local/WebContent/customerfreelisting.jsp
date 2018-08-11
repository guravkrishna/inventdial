<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Basic Details</title>
<script type="text/javascript">
	history.pushState(null,null,'customerfreelisting.jsp');
	  window.addEventListener('popstate',function(event){
	  history.pushState(null,null,'customerfreelisting.jsp');
	  });
</script>
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
		<%@include file="user_header.jsp" %>
		
		           <%
					    try{
					    	String name=(String)session.getAttribute("name");
					       
					        System.out.println(name);
							connection = DriverManager.getConnection(connectionUrl+database, userid, password);
							request.getSession(true);
							statement=connection.createStatement();
							String sql ="select * from signup s join listing l on s.contact=l.contact where s.contact='"+name+"'";
							System.out.println(sql);
							// select * from listing where id='"+search+"' or first_name like '%"+search+"%' ; 
							resultSet = statement.executeQuery(sql);
							if(resultSet.next()){												
	                 %> 
		
		<div class="sb2-2">
			
				<!--== breadcrumbs ==-->
				<div class="sb2-2-2">
					<ul>
						<li><a href="main.jsp"><i class="fa fa-home" aria-hidden="true"></i> Home</a> </li>
						<li class="active-bre"><a href="#">Add Listing</a> </li>
						<li class="page-back"><a href="Useradmin.jsp"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
			
				<!--== breadcrumbs ==-->
				<div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
						<h4>Customer Basic Details</h4>
						<!-- Dropdown Structure -->
						<div class="split-row">
							<div class="col-md-12">
								<div class="box-inn-sp ad-inn-page">
									<div class="tab-inn ad-tab-inn">
										<div class="hom-cre-acc-left hom-cre-acc-right">
											<div class="">
												<form  action="./FreeListing" method="post" name="listing">
									<div class="row">
										<div class="input-field col s6">
											<input id="fname" name="fname" type="text"  required name="fname" value='<%=resultSet.getString("firstname")%>' >
											<label for="fname">First Name <span style="color:red">*</span></label>
										</div>
										<div class="input-field col s6">
											<input id="lname" name="lname" type="text"  required value='<%=resultSet.getString("lastname")%>' >
											<label for="lname">Last Name <span style="color:red">*</span></label>
										</div>
									</div>
								
									<div class="row">
										<div class="input-field col s6">
											<input type="text" name="phone"  value='<%=resultSet.getString("contact")%>'   readonly />
											
											<label for="phone">Contact Number <span style="color:red">*</span></label>
										</div>
									
									
										<div class="input-field col s6">
											<input type="text" name="land"  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" pattern="[0-9][0-9]{11}"  maxlength="12" class="validate" />
											
											<label for="phone">Telephone Number</label>
										</div>
									</div>
									
									 <div class="row">
										<div class="input-field col s12">
											<input id="email" name="email" type="text" class="validate" required value='<%=resultSet.getString("email")%>' >
											<label for="email">Email ID</label>
										</div>
									</div>
										 <div class="row">
										<div class="input-field col s12"> 
											 <select name="category" required>
												<option value='<%=resultSet.getString("category")%>'><%=resultSet.getString("category")%></option><span type="color:red">*</span>
												<option value="Hospital">Hospital</option>
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
												<option value="Coaching & Tuitions">Coaching & Tuitions</option>
												<option value="Job Training">Job Training</option>
												<option value="Skin Care & Treatment">Skin Care & Treatment</option>
												<option value="Property and Rentels">Property and Rental</option>
												<option value="Domestic Help Services">Domestic Help Services</option>
												<option value="Home Appliances Repair & Services">Home Appliances Repair & Services</option>
												<option value="Sports">Sports</option>
												<option value="Furniture Dealers">Furniture Dealers</option>
												<option value="Packers and Movers">Packers and Movers</option>
												<option value="Interior Designers">Interior Designers</option>
												<option value="Internet Service Providers">Internet Service Providers</option>
												<option value="Security System Dealers">Security System Dealers</option>
												 <option value=""></option>
												<option value=""></option>
												<option value=""></option>
												<option value=""></option>
												<option value=""></option>
												<option value=""></option>
												<option value=""></option>
												<option value=""></option>
												<option value=""></option>
												<option value=""></option>
												
										</div>
									</div> 
									
									<div class="row">
										<div class="input-field col s12">
										
											<input id="autocomplete" name="city" type="text" value='<%=resultSet.getString("city")%>' class="validate" required>
											<label for="list_addr">City <span style="color:red">*</span></label>
										</div>
									</div>
									
														
									<br><center>						
									<div class="row" style="width:40%";>
										<input type="submit" value="Confirm" onsubmit="return validateForm()"/>
									</div></center>	
								</form>
								
			                 			</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<%
							}
							connection.close();
							} catch (Exception e) {
							e.printStackTrace();
							}
					%>
		
		<%@include file="user_footer.html" %>
		
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
</body>
</html>