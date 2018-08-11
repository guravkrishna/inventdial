<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@include file="user_header.jsp" %>
			<!--== BODY INNER CONTAINER ==-->

<!-- jsp code -->

<%
try{
	String name=(String)session.getAttribute("name");
    
    System.out.println(name);
	
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from listing l join category c on l.contact=c.contact where l.contact='"+name+"' ";

resultSet = statement.executeQuery(sql);
if(resultSet.next()){
%>
<%-- <!--  <input type="hidden" name="finame" value="<%=resultSet.getString("id") %>">-->
<!--  <input type="text" name="id" value="<%=resultSet.getString("id") %>">-->
 --%>
<!-- jsp end -->




			<div class="sb2-2">
			
				<!--== breadcrumbs ==-->
				<div class="sb2-2-2">
					<ul>
						<li><a href="main.html"><i class="fa fa-home" aria-hidden="true"></i> Home</a> </li>
						<li class="active-bre"><a href="#">Basic information</a> </li>
						<li class="page-back"><a href="Useradmin.jsp"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
			
				<!--== breadcrumbs ==-->
				<div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
						<h4>Basic information of user</h4>
						<!-- Dropdown Structure -->
						<div class="split-row">
							<div class="col-md-12">
								<div class="box-inn-sp ad-inn-page">
									<div class="tab-inn ad-tab-inn">
										<div class="hom-cre-acc-left hom-cre-acc-right">
											<div class="">
												<form class="" action="basicinfo.jsp" method="">
													
													<div class="row">
														 <input type="hidden" name="contact"    value="<%=resultSet.getString("contact") %>" readonly><br>
													</div>
												
													<div class="row">
														<div class="input-field col s12">
															<input name="fname" type="text" class="validate"  value="<%=resultSet.getString("fname") %>" oninput="this.value = this.value.replace(/[^a-zA-Z.]/g, '').replace(/(\..*)\./g, '$1');" readonly > 
															<label for="">first name <span style="color:red">*</span></label>
														</div>
													</div>
												
													<div class="row">
														<div class="input-field col s12">
															<input name="lname" type="text" class="validate"  value="<%=resultSet.getString("lname") %>" oninput="this.value = this.value.replace(/[^a-zA-Z.]/g, '').replace(/(\..*)\./g, '$1');" readonly > 
															<label for="email">last name*</label>
														</div>
													</div>
														
													<%-- <div class="row">
														<div class="input-field col s12">
															<input name="phone" type="hidden" class="validate" required value="<%=resultSet.getString("contact") %>" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" pattern="[0-9][0-9]{9}" title="Enter digits only" maxlength="10" required> 
															<label for="email">Contact </label>
														</div>
													</div> --%>
													
													<div class="row">
														<div class="input-field col s12">
															<input name="land" type="text" class="validate"  value="<%=resultSet.getString("land") %>" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" pattern="[0-9][0-9]{9}" title="Enter digits only" maxlength="10" > 
															<label for="email">Landline Number</label>
														</div>
													</div>
														
													<%-- <div class="row">
														<div class="input-field col s12">
															<input name="mail" type="hidden" class="validate" required value="<%=resultSet.getString("email") %>"> 
															<label for="">Email</label>
														</div>
													</div> --%>
													
													<div class="row">
										<div class="input-field col s12"> 
											 <select name="category">
												<option value="">Type Of Category</option><%-- <%=resultSet.getString("category") %>--> --%>
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
												
												<!-- <option value=""></option>
												<option value=""></option>
												<option value=""></option>
												<option value=""></option> -->
											</select>  
										</div>
									</div>
													
														
													<div class="row">
														<div class="input-field col s12">
															<input name="address" type="text" class="validate" required value="<%=resultSet.getString("address") %>"> 
															<label for="email">Address</label>
														</div>
													</div>
														<!-- <input type="text" id="autocomplete" placeholder="Enter City" name="city" class="autocomplete" style="background-color:#fff;color:black;height:5.5rem;background-size:12.75pt;background-position-x:7.5pt;font-size:14px;"
						onFocus="geolocate()" required> -->
														
													<div class="row">
														<div class="input-field col s12">
															<input id="autocomplete" name="city" placeholder="City" type="text" class="validate" value="<%=resultSet.getString("city") %>" onFocus="geolocate()" required> 
															
														</div>
													</div>
													
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
														
											<center><div class="row" style="width:40%">
														<div class="input-field col s12">
															<input type="submit" value="CONFIRM" >
														 </div>
													</div>
											</center>
														<!--jsp code to change password end  -->
														
														<!-- <div class="row">
														 	<div class="input-field col s12"> <a class="waves-effect waves-light btn-large full-btn" href="edit">Edit User profile</a> </div>
														<input type="submit" value="edit profile">
														</div> -->
												</form>
												<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
 
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			
     <script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.js" type="text/javascript"></script>
	<script src="js/materialize.min.js" type="text/javascript"></script>
	<script src="js/custom.js"></script>
	
	




<%@include file="user_footer.html" %> 
</body>

</html>