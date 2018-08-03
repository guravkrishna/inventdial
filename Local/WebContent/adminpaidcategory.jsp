
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	
</head>

<body>
<%@include file="Admin-header.jsp" %>
<%
String email=request.getParameter("email");
System.out.println(email);
%>
			<!--== BODY INNER CONTAINER ==-->
			<div class="sb2-2">
				<!--== breadcrumbs ==-->
				<div class="sb2-2-2">
					<ul>
						<li><a href="main.jsp"><i class="fa fa-home" aria-hidden="true"></i> Home</a> </li>
						<li class="active-bre"><a href="#"> Add Details</a> </li>
						<li class="page-back"><a href="adminpaidlisting.jsp"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
				<div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
						<h4>Add Details</h4> 
						<!-- Dropdown Structure -->
						<div class="split-row">
							<div class="col-md-12">
								<div class="box-inn-sp ad-inn-page">
									<div class="tab-inn ad-tab-inn">
						<div class="hom-cre-acc-left hom-cre-acc-right">
							<div class="">
								<form class="" action="./AddPaidCategory" method="post" enctype="multipart/form-data">
							<div class="row">
										<div class="input-field col s12">
										
												<input id="email" type="hidden"   name="email" value='<%=email %>' readonly>
											
											<label for="email">Email</label> 
												
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12"> 
											 <select name="btype" required>
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
											<input id="first_name" type="text" class="validate" name="subcate" required>
											<label for="first_name">Sub Category</label>
										</div>
										</div>
									<div class="row">
										<div class="input-field col s12">
											<textarea id="textarea1" name="add" class="materialize-textarea"></textarea>
											<label for="list_addr">Address</label>
										</div>
									</div>
 										<div class="row" >
										<div class="input-field col s12">
											 <select name="daynames" multiple>
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
									</div>
								<div class="row">
									<div class="input-field col s6">
									<!-- <input type="text" name="opentime"> -->
										 <select name="open">
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
										
									</div>
									<div class="input-field col s6">
										 <select name="close">
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
								</div>
								<%
try{ 
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="SELECT  distinct package FROM package1";
System.out.println(sql);
resultSet = statement.executeQuery(sql);%>
								
								<div class="row">
										<div class="input-field col s12"> 
											 <select name="ptype" >
												<option value="">Package Type</option>
											<!-- <option value="Free">Free</option>
												<option value="3 Months">3 Months</option>
												<option value="6 Months">6 Months</option>
												<option value="1 Year">1 Year</option> -->
												  
												  <%  while(resultSet.next()){ %>
											
											  <option> <%= resultSet.getString("package")%> </option>
                                  <% } %>
        </select>
  
                                
                                <%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
								
										 </div>
									</div> 
								<!-- 	<div class="row"> </div> -->
									<div class="row">
										<div class="input-field col s12">
											
											<textarea id="textarea1" name="desc" class="materialize-textarea"></textarea>
											<label for="textarea1">Business Descriptions</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input type="text"  name="year">
											<label for="list_addr">Establish Year</label>
										</div>
									</div>				
									<div class="row">
										  <div class="db-v2-list-form-inn-tit">
										 <!-- <div class="input-field col s12"> -->
											<h5>Cover Image <span class="v2-db-form-note"><span></h5>
										</div> 
								    </div> 
										<!-- <input type="file" name="coverimage">  -->
									
									
									 <div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>Image</span>
												<input type="file" name="coverimage" accept="image/*" required> </div>
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
											<div class="tz-up-btn"> <span>Image</span>
												<input type="file" name="logo" accept="image/*" required> </div>
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
											<div class="tz-up-btn"> <span>Image</span>
												<input type="file" name="imgone" accept="image/*" required> </div>
											<div class="file-path-wrapper db-v2-pg-inp"> 
												<input class="file-path validate" type="text" > 
											</div>
										</div>
									</div> 
									 <div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>Image</span>
												<input type="file" name="imgtwo" accept="image/*" required> </div>
											<div class="file-path-wrapper db-v2-pg-inp">
												<input class="file-path validate" type="text" n> 
											</div>
										</div>
									</div>
									<div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>Image</span>
												<input type="file" name="imgthree" accept="image/*" required> </div>
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
											<div class="tz-up-btn"> <span>video</span>
												<input type="file" name="video" accept="video/*"required> </div>
											<div class="file-path-wrapper db-v2-pg-inp">
												<input class="file-path validate" type="text" > 
											</div>
										</div>
									</div> 
									
									<div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Contact Informations:</h5>
										</div>
									</div>
									
									
									
									<div class="row">
										<div class="input-field col s12">
											<input type="text" class="validate" name="landline" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g,'$1');" required pattern="[123456789][0-9]{11}" Maxlength="12"  title="enter digits only">
											<label for="list_addr">Landline Number</label>
										</div>
										<div class="input-field col s12">
											<input  type="text" class="validate" name="fax" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g,'$1');" required pattern="[123456789][0-9]{11}" Maxlength="12" title="enter digits only">
											<label for="list_addr">Fax Number</label>
										</div>
									
									<div class="input-field col s12">
											<input  type="text" class="validate" name="toll" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g,'$1');" required pattern="[123456789][0-9]{9}" Maxlength="10" title="enter digits only">
											 <label for="list_addr">Toll Free Number</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input type="text" class="validate"  name="pin" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g,'$1');" required pattern="[123456789][0-9]{9}" Maxlength="10" title="enter digits only">
											<label for="list_addr">Pin Code</label>
										</div>
									
									
									
									</div>
									
									<div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Social Media Informations:</h5>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input type="url" pattern="https://.*"   name="weblink"  class="validate" required>
											<label for="list_addr">Website Link</label>
										</div>
										<div class="input-field col s12">
											<input  type="url" pattern="https://.*"   name="fblink"  class="validate" required>
											<label for="list_addr">www.facebook.com/Directory</label>
										</div>
									
									<div class="input-field col s12">
											<input  type="url" pattern="https://.*"   name="gglink"  class="validate" required >
											 <label for="list_addr">www.googleplus.com</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input type="url" pattern="https://.*"  name="ytblink"  class="validate" required>
											<label for="list_addr">YouTube Link</label>
										</div>
										</div>
										<div class="row">
										<div class="input-field col s12">
											<input type="url" pattern="https://.*"   name="ltdlink"  class="validate" required>
											<label for="list_addr">LinkedIn Link</label>
										</div>
								</div>
								<div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Google Map:</h5>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input type="url" pattern="https://.*" name="map" class="validate" required>
											<label>Past your iframe code here</label>
										</div>
									</div>
									<div class="row">
										 <div class="input-field col s12 v2-mar-top-40"><input type="submit" value="Submit & Payment"></div>
										
 									
 </div>
 
 <!-- <button type="submit" value="Submit" >SUBMIT </button>  -->
<br>

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

