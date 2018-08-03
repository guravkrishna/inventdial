 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	
</head>


<body>
<%@include file="Admin-header.jsp" %>

		

<%
try{ 
	String email=request.getParameter("email"); 
	connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();


String sql="select * from listing l join category c where l.email=c.email and l.email='"+email+"'";
System.out.println(sql);
resultSet = statement.executeQuery(sql);%>


		
	<!-- <div id="preloader">
		<div id="status">&nbsp;</div>
	</div> -->
	<!--== MAIN CONTRAINER ==-->
	
			<!--== BODY INNER CONTAINER ==-->
			<div class="sb2-2">
				<!--== breadcrumbs ==-->
				<div class="sb2-2-2">
					<ul>
						<li><a href="main.html"><i class="fa fa-home" aria-hidden="true"></i> Home</a> </li>
						<li class="active-bre"><a href="#"> Add Details</a> </li>
						<li class="page-back"><a href="#"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
				<div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
						<h4>Add Details</h4> <a class="dropdown-button drop-down-meta drop-down-meta-inn" href="#" data-activates="dr-list"><i class="material-icons">more_vert</i></a>
						<ul id="dr-list" class="dropdown-content">
							<li><a href="#!">Add New</a> </li>
							<li><a href="#!">Edit</a> </li>
							<li><a href="#!">Update</a> </li>
							<li class="divider"></li>
							<li><a href="#!"><i class="material-icons">delete</i>Delete</a> </li>
							<li><a href="#!"><i class="material-icons">subject</i>View All</a> </li>
							<li><a href="#!"><i class="material-icons">play_for_work</i>Download</a> </li>
						</ul>
						<!-- Dropdown Structure -->
						<div class="split-row">
							<div class="col-md-12">
								<div class="box-inn-sp ad-inn-page">
									<div class="tab-inn ad-tab-inn">
						<div class="hom-cre-acc-left hom-cre-acc-right">
							<div class="">
							<%

	
 
						while(resultSet.next()){
%>
								<form class="" action="updateprocesspaidlisting.jsp" method="post">
									<input type="hidden" name="email" value="<%=resultSet.getString("email") %>">
							<div class="row">
										<div class="input-field col s12">
											<input id="list_addr" type="text" class="validate" name="fname" value="<%=resultSet.getString(3) %>">
											<label for="list_addr">First Name</label>
										</div>
									</div>
										<div class="row">
										<div class="input-field col s12">
											<input id="first_name" type="text" class="validate" name="lname" value="<%=resultSet.getString(4) %>">
											<label for="Business Name"> Last Name</label>
										</div>
										</div>
											<div class="row">
										<div class="input-field col s12">
											<input id="first_name" type="text" class="validate" name="cont" value="<%=resultSet.getString(5) %>">
											<label for="Business Name">Contact Number</label>
										</div>
										</div>
										 <div class="row">
										<div class="input-field col s12">
											<input id="first_name" type="text" class="validate" name="subname" value="<%=resultSet.getString(2) %>">
											<label for="Business Name">Business Name</label>
										</div>
										</div> 
									<div class="row">
										<div class="input-field col s12"> 
											 <select name="btype" value="<%=resultSet.getString(10)%>">
												<option value="">Category Type</option>
												<option value="Hotel and Resorts">Hotel and Resorts</option>
												<option value="Education and Traninings">Education and Traninings</option>
												<option value="Internet Service Providers">Internet Service Providers</option>
												<option value="Computer Repair & Services">Computer Repair & Services</option>
												<option value="Real Estates">Real Estates</option>
												<option value="Travel and Transport">Travel and Transport</option>
												<option value="Packers and Movers">Packers and Movers</option>
												<option value="Gyms and Fitness">Gyms and Fitness</option>
											<option value="Yoga Classes">Yoga Classes</option>
												<option value="Health and Fitness">Health and Fitness</option>
												<option value="">Other</option>
												
											</select>  
											
										
										 </div>
									</div>  
									
										
										
										<div class="row">
										<div class="input-field col s12">
											<input id="first_name" type="text" class="validate" name="subcate" value="<%=resultSet.getString(11) %>">
											<label for="first_name">Sub Category</label>
										</div>
										</div>
									<%-- <div class="row">
										<div class="input-field col s12">
										<input id="email" type="email" class="validate" name="email"  value="<%=resultSet.getString(6) %>">
											
											<label for="email">Email</label> 
											
											
										</div>
									</div> --%>
									<div class="row">
										<div class="input-field col s12">
											<input id="list_addr" type="text" class="validate" name="add" value="<%=resultSet.getString(12) %>">
											<label for="list_addr">Address</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input id="list_addr" type="text" class="validate" name="city" value="<%=resultSet.getString(7) %>">
											<label for="list_addr">City</label>
										</div>
									</div>
							
								
								
 	<%-- 	<div class="row" >
										<div class="input-field col s12">
											 <select name="daynames" multiple value="<%=resultSet.getString(13) %>">
												<option value="">Opening Days</option>
												<option value="All Days">All Days</option>
												<option value="Monday">Monday</option>
												<option value="Tuesday">Tuesday</option>
												<option value="Wednesday">Wednesday</option>
												<option value="Thursday">Thursday</option>
												<option value="Friday">Friday</option>
												<option value="Saturday">Saturday</option>
												<option value="Sunday">Sunday</option>
											</select> 
											<!-- <input type="text" name="day"> -->
										</div>
									</div> --%>
								<%-- <div class="row">
									<div class="input-field col s6">
									<!-- <input type="text" name="opentime"> -->
										 <select name="open" value="<%=resultSet.getString(14) %>">
											<option value="" unable selected>Opening Time</option>
											<option value="12:00 AM">12:00 AM</option>
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
											<option value="01:00 PM">01:00 PM</option>
											<option value="02:00 PM">02:00 PM</option>
											<option value="03:00 PM">03:00 PM</option>
											<option value="04:00 PM">04:00 PM</option>
											<option value="05:00 PM">05:00 PM</option>
											<option value="06:00 PM">06:00 PM</option>
											<option value="07:00 PM">07:00 PM</option>
											<option value="08:00 PM">08:00 PM</option>
											<option value="09:00 PM">09:00 PM</option>
											<option value="10:00 PM">10:00 PM</option>
											<option value="11:00 PM">11:00 PM</option>	
										</select> 
										
									</div> --%>
									<%-- <div class="input-field col s6">
										 <select name="close" value="<%=resultSet.getString(15) %>">
											<option value="" unable selected>Closing Time</option>
											<option value="12:00 AM">12:00 AM</option>
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
											<option value="01:00 PM">01:00 PM</option>
											<option value="02:00 PM">02:00 PM</option>
											<option value="03:00 PM">03:00 PM</option>
											<option value="04:00 PM">04:00 PM</option>
											<option value="05:00 PM">05:00 PM</option>
											<option value="06:00 PM">06:00 PM</option>
											<option value="07:00 PM">07:00 PM</option>
											<option value="08:00 PM">08:00 PM</option>
											<option value="09:00 PM">09:00 PM</option>
											<option value="10:00 PM">10:00 PM</option>
											<option value="11:00 PM">11:00 PM</option>	
										</select> 
										
									</div>
								</div> --%>
								<div class="row">
										<div class="input-field col s12"> 
											 <select name="ptype" id="picksite" value="<%=resultSet.getString(16) %>">
												<option value="">Packages</option>
												
											 	<option value="http://google.com">Free</option>
												<%--  <option> <%= resultSet.getString("type")%> </option> --%>
                                 
												
												
										 
											
										
										 </div>
									</div> 
								<!-- 	<div class="row"> </div> -->
									<div class="row">
										<div class="input-field col s12">
											
											<textarea id="textarea1" name="desc" class="materialize-textarea" value="<%=resultSet.getString(17) %>"></textarea>
											<label for="textarea1">Business Descriptions</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input type="text"  name="year" value="<%=resultSet.getString(18) %>">
											<label for="list_addr">Establish Year</label>
										</div>
										</div>
									
									<div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Social Media Informations:</h5>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input type="text"  name="link" value="<%=resultSet.getString(29) %>">
											<label for="list_addr">Website Link</label>
										</div>
										</div>
										<%-- <div class="input-field col s12">
											<input  type="text"  name="secondlink" value="<%=resultSet.getString(20) %>">
											<label for="list_addr">www.facebook.com/Directory</label>
										</div>
									
									<div class="input-field col s12">
											<input  type="text"  name="thirdlink" value="<%=resultSet.getString(21) %>">
											 <label for="list_addr">www.googleplus.com</label>
										</div>
									</div> --%>
									
									<div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Google Map:</h5>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input type="text"  name="map" value="<%=resultSet.getString(34) %>">
											<label>Past your iframe code here</label>
										</div>
									</div>
														
								<!-- 	<div class="row">
										 <div class="db-v2-list-form-inn-tit">
											<h5>Cover Image <span class="v2-db-form-note"><span></h5>
										</div> 
										</div>
										<input type="file" name="coverimage"> 
									
									
									 <div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>File</span>
												<input type="file" name="coverimage" required> </div>
											<div class="file-path-wrapper db-v2-pg-inp">
												<input class="file-path validate" type="text" > 
											</div>
										</div>
									</div> 
									<div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Logo Image <span class="v2-db-form-note"><span></h5>
										</div>
										
									</div>
									
									<div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>File</span>
												<input type="file" name="logo" required> </div>
											<div class="file-path-wrapper db-v2-pg-inp">
												<input class="file-path validate" type="text" > 
											</div>
										</div>
									</div>
							
 									<div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Photo Gallery</h5>
										</div>
									</div>
									<div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>File</span>
												<input type="file" name="imgone" required> </div>
											<div class="file-path-wrapper db-v2-pg-inp"> 
												<input class="file-path validate" type="text" > 
											</div>
										</div>
									</div> 
									 <div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>File</span>
												<input type="file" name="imgtwo" required> </div>
											<div class="file-path-wrapper db-v2-pg-inp">
												<input class="file-path validate" type="text" n> 
											</div>
										</div>
									</div>
									<div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>File</span>
												<input type="file" name="imgthree" required> </div>
											<div class="file-path-wrapper db-v2-pg-inp">
												<input class="file-path validate" type="text" > 
											</div>
										</div>
									</div>
									<div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Video Gallery</h5>
										</div>
									</div>
									<div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>File</span>
												<input type="file" name="video" required> </div>
											<div class="file-path-wrapper db-v2-pg-inp">
												<input class="file-path validate" type="text" > 
											</div>
										</div>
									</div> 
								 -->
									<div class="row">
										 <div class="input-field col s12 v2-mar-top-40"><input type="submit" value="Update"></div>
										
 									
 </div>
<br>

									<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%></form>
																					
												
							</div>
						</div>
									</div>
								</div>
							
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

									
	<!--== BOTTOM FLOAT ICON ==-->
	<%@include file="Admin_footer.html" %>
	<!--SCRIPT FILES-->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.js" type="text/javascript"></script>
	<script src="js/materialize.min.js" type="text/javascript"></script>
	<script src="js/custom.js"></script>
</body>
</html> 

