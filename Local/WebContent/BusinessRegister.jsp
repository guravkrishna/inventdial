<%@page import="Local.SendMobileOtp" %>

<%@ page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@page import="java.net.NetworkInterface"%>
<%-- <%@page import="sun.misc.VM"%> --%>
<%@ page import="java.sql.*,java.util.*,java.text.*,java.text.SimpleDateFormat" %>
<%@page import="java.net.InetAddress" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>End User Signup</title>
<script type="text/javascript">
	history.pushState(null,null,'BusinessRegister');
	  window.addEventListener('popstate',function(event){
	  history.pushState(null,null,'BusinessRegister');
	  });
</script>
<script type="text/javascript">
function password(length, special) {
  var iteration = 0;
  var password = "";
  var randomNumber;
  if(special == undefined){
      var special = false;
  }
  while(iteration < length){
    randomNumber = (Math.floor((Math.random() * 100)) % 94) + 33;
    if(!special){
      if ((randomNumber >=33) && (randomNumber <=47)) { continue; }
      if ((randomNumber >=58) && (randomNumber <=64)) { continue; }
      if ((randomNumber >=91) && (randomNumber <=96)) { continue; }
      if ((randomNumber >=123) && (randomNumber <=126)) { continue; }
    }
    iteration++;
    password += String.fromCharCode(randomNumber);
  }
  //document.getElementById('pwd').innerHTML=password;
  document.getElementById("id").value=password;
 	return password;
}
</script>
</head>
<body>

	<%@include file="header.jsp" %>
	
	<section class="tz-register">
			<div class="log-in-pop">
				<div class="log-in-pop-right">
					<a href="#" class="pop-close" data-dismiss="modal"><img src="images/cancel.html" alt=""/></a>
					<h4>Business Register</h4>
					<p>Basic Business Info</p>
					<%
					 String first=request.getParameter("fname");  
				     System.out.println(first);
					   String last=request.getParameter("lname"); 
					   System.out.println(last);
					   String phone=request.getParameter("phone"); 
					   System.out.println(phone);
					
					   String mail=request.getParameter("email"); 
					   System.out.println(mail);
					   String pass=request.getParameter("pass"); 
					   System.out.println();
					   
					   String confirmpass=request.getParameter("confirmpass"); 
					  String msg="Your OTP is ";
					 String EmailID=request.getParameter("mail");
					 String otp=request.getParameter("id");
				    System.out.println("OTP :-"+otp);
				    System.out.println("EmailID :-"+EmailID);
				    SendMobileOtp s=new SendMobileOtp() ;
					 s.sendSms(phone, msg, otp);
				   %>
					<form class="s12" action="./BusinessRegister" method="post">
						<div>
						<div class="input-field s12">
								<input type="text" id="autocomplete" placeholder="Enter City" name="city" class="autocomplete" style="background-color:#fff;color:black;height:5.5rem;background-size:12.75pt;background-position-x:7.5pt;font-size`:20px;"
						                      onFocus="geolocate()" required>
						         <label>Enter City</label></input>
							</div>
						 <div class="input-field s12">
								         <select name="category" required>
												<option value="">Select category</option>
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
											</select> 
							           </div>
						        </div>
						<div>
							
						</div>
							<div>
							<div class="input-field s12">
								<input type="text"  name="telephone" class="validate" >
								<label>Telephone</label>
							</div>
						</div>
					    
						<div>
				       <div class="input-field s12">
								<input type="hidden"  class="validate"  required pattern="[a-zA-Z]+" title="enter  valid name"   name="fname" value='<%=first%>' >
								
							</div>
						</div>
							<div>
							<div class="input-field s12">
								<input type="hidden"  name="lname"class="validate"  name="lname" required pattern="[a-zA-Z]+"  value='<%=last %>'  title="enter  valid name" >
							
							</div>
						</div>
							<div>
							<div class="input-field s12">
								<input type="hidden" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\." class="" name="con"  value='<%=phone %>'  required>
								
							</div>
						</div>
						<div>
							<div class="input-field s12">
								<input type="hidden" class="validate" name="email"  value='<%=mail %>' readonly>
							
							</div>
						</div>
						<div>
							<div class="input-field s12">
								<input type="hidden" class="validate" name="pass" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" value='<%=pass %>' readonly required>
								
							</div>
						</div>
						<div>
							<div class="input-field s12">
								<input type="hidden" class="validate" name="confirmpass"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" value='<%=confirmpass %>' readonly required>
							
							</div>
						</div>
						 <!-- <div> -->
							<div class="input-field s6">
								<input type="submit" value="Next" class="waves-effect waves-light log-in-btn"> 
							</div>
						<!-- </div>  -->
						
					</form>
				</div>
			</div>
	</section>
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
	
	<!-- <!--MOBILE APP-->
	
		<!-- GET QUOTES Popup END -->
	<%@ include file="footer.html"%>
</body>


<!-- Mirrored from rn53themes.net/themes/demo/directory/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 02 Jul 2018 05:07:43 GMT -->
</html>