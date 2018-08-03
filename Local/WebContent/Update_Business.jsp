<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script> $("#video_file").change(function(e) {
    $("form[name='upload_form']").submit();
    e.preventDefault();
  })</script>
  <script>
function myFunction() {
    alert("click Ok to Submit your complete listing");
}
</script>
<script>
function validateForm() {
    var x = document.forms["upload_form"]["category"]["business_name"]["sub_business"]["email"]["list_addr"]
    						["daynames"]["open"]["close"]["btype"]["description"]["year"]
   							 ["weblink"]["facelink"]["googlelink"]["cimg"]["limg"]["fgal"]["sgal"]["tgal"]["vid1"].value;
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
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="SELECT * FROM category where id="+id;
System.out.println(sql);
resultSet = statement.executeQuery(sql);
 %>
		
		
		<div class="sb2-2">
				<!--== breadcrumbs ==-->
				<div class="sb2-2-2">
					<ul>
						<li><a href="main.jsp"><i class="fa fa-home" aria-hidden="true"></i> Home</a> </li>
						<li class="active-bre"><a href="#"> Add Product</a> </li>
						<li class="page-back"><a href="#"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
				<div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
						<h4>Add New Product</h4> <a class="dropdown-button drop-down-meta drop-down-meta-inn" href="#" data-activates="dr-list"><i class="material-icons">more_vert</i></a>
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
							
							<%while(resultSet.next()){%>
							
								<form class="" name="upload_form" action="Update_Business_Process.jsp" method="post">
								<input type="hidden" name="id" value="<%=resultSet.getString("id") %>">
								
									<div class="row">
										<div class="input-field col s12"> 
											 <select name="category" value="<%=resultSet.getString(1) %>">
												<option value="">Category</option>
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
												<option value="Health and Fitness">Health and Fitness</option>
											</select>  
										</div>
									</div>
									
									<div class="row">
										<div class="input-field col s12">
											<input id="product_name" name="business_name" type="text" value="<%=resultSet.getString(2) %>" class="validate" required>
											<label for="first_name">Business Name</label>
										</div>
										
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input id="product_title" name="sub_business" type="text" value="<%=resultSet.getString(3) %>" class="validate" required>
											<label for="list_name">Sub-Category</label>
										</div>
									</div>
									
									<div class="row">
										<div class="input-field col s12">
											<input id="email" name="email" type="email"  value="<%=resultSet.getString(4) %>" class="validate" required>
											<label for="email">Email</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input id="list_addr" name="list_addr" type="text"  value="<%=resultSet.getString(5) %>" class="validate" required>
											<label for="list_addr">Address</label>
										</div>
									</div>
									
									<div class="row">
									<div class="input-field col s12">
											 <select name="daynames" multiple value="<%=resultSet.getString(6) %>">
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
										 <select name="open" value="<%=resultSet.getString(7) %>">
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
										 <select name="close" value="<%=resultSet.getString(8) %>">
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
									
									<div class="row">
										<div class="input-field col s12"> 
											 <select name="btype" value="<%=resultSet.getString(9) %>">
												<option value="">Packages Type</option>
												<option value="Free">Free</option>
												<option value="3 Month">3 Month</option>
												<option value="6 Month">6 Month</option>
												<option value="1 Year">1 Year</option>
												<!-- <option value="2 Year">2 Year</option> -->
											</select>  
											<!-- <input type="text" name="btype"> -->
										
										 </div>
									</div> 
									
									<div class="row">
										<div class="input-field col s12">
											<textarea id="textarea1" name="description" value="<%=resultSet.getString(10) %>" class="materialize-textarea"></textarea>
											<label for="textarea1">Product Descriptions</label>
										</div>
									</div>
									
									<div class="row">
										<div class="input-field col s12">
											<input type="text" name="year" value="<%=resultSet.getString(11) %>" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"  maxlength="10"  class="validate">
											<label for="year">Business Establishment Year</label>
										</div>
										
									</div>
									
									<div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Social Media Informations:</h5>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input type="text" name="weblink" class="validate" required value="<%=resultSet.getString(12) %>">
											<label>Website Link</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input type="text" name="facelink" nclass="validate"  value="<%=resultSet.getString(13) %>" required>
											<label>www.facebook.com/directory</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input type="text" name="googlelink" class="validate" value="<%=resultSet.getString(14) %>" required>
											<label>www.googleplus.com/directory</label>
										</div>
									</div>
									
									
									<div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Google Map:</h5>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input type="text" name="map"  value="<%=resultSet.getString(15) %>" class="validate" required>
											<label>Past your iframe code here</label>
										</div>
									</div>
									
									<!-- <div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Cover Image <span class="v2-db-form-note">(image size 1350x500):<span></h5>
										</div>
									</div>
									<div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>File</span>
											<input type="file" name="cimg" accept="image/*"> </div>
											<div class="file-path-wrapper db-v2-pg-inp">
												<input class="file-path validate" type="text"> 
											</div>
										</div>
									</div>
									
									<div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Logo Image <span class="v2-db-form-note">(image size 1350x500):<span></h5>
										</div>
									</div>
									<div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>File</span>
											<input type="file" name="limg" accept="image/*" > </div> 
											<div class="file-path-wrapper db-v2-pg-inp">
												<input class="file-path validate" type="text"> 
											</div>
										</div>
									</div>
									<div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Photo Gallery <span class="v2-db-form-note">(upload multiple photos note:size 750x500):<span></h5>
										</div>
									</div>
									<div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>File</span>
												<input type="file" name="fgal" accept="image/*"> </div>
											<div class="file-path-wrapper db-v2-pg-inp">
												<input class="file-path validate" type="text"> 
											</div>
										</div>
									</div>
									<div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>File</span>
												<input type="file" name="sgal" accept="image/*"> </div>
											<div class="file-path-wrapper db-v2-pg-inp">
												<input class="file-path validate" type="text"> 
											</div>
										</div>
									</div>
									<div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>File</span>
												<input type="file" name="tgal" accept="image/*"> </div>
											<div class="file-path-wrapper db-v2-pg-inp">
												<input class="file-path validate" type="text"> 
											</div>
										</div>
									</div>	
									
									<div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Videos Gallery <span class="v2-db-form-note"><span></h5>
										</div>
									</div>
									<div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>File</span>
												 <input id="video_file" name="vid1" type="file">
												<input type="file" name="vid1" multiple> </div>
											<div class="file-path-wrapper db-v2-pg-inp">
												<input class="file-path validate" type="text"> 
											</div>
										</div>
									</div> -->
									
									
										<br><center>						
									<div class="row" style="width:40%";>
										<input type="submit" value="Update" onsubmit="return validateForm()"/>
									</div></center>	
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
		</div>
	</div>



	<%@include file="user_footer.html" %>
</body>
</html>