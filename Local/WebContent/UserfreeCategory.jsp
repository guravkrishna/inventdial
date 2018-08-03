<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
	history.pushState(null,null,'UserfreeCategory.jsp');
	  window.addEventListener('popstate',function(event){
	  history.pushState(null,null,'UserfreeCategory.jsp');
	  });
</script>
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
		
	 		
			<!--CENTER SECTION-->
			
			
			<%-- <!--jsp connection  -->
			<%@page import="java.sql.DriverManager"%>
	<%@page import="java.sql.ResultSet"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.Connection"%>
	<%
		String email = request.getParameter("email");
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
	%>   --%>
	 <%
	 String email = request.getParameter("email");
try{
	
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select email from localsearchengine.listing" ;/*where; email="+email */;

resultSet = statement.executeQuery(sql);
if(resultSet.next()){
%> 
			<!--jsp connetion  -->
			
		<div class="sb2-2">
			
				<!--== breadcrumbs ==-->
				<div class="sb2-2-2">
					<ul>
						<li><a href="main.jsp"><i class="fa fa-home" aria-hidden="true"></i> Home</a> </li>
						<li class="active-bre"><a href="#">Add Listing</a> </li>
						<li class="page-back"><a href="Useradmin.jsp"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
			<div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
					<h4>Submit Listings</h4>
					<div class="db-list-com tz-db-table">
						<div class="ds-boar-title">
							<h2 style="text-align:Center;">Add New Listings</h2>
							<p style="text-align:Center;">Run-down your business for FREE with India's Local Search Engine</p>
						</div>
						<div class="hom-cre-acc-left hom-cre-acc-right">
							<div class="">
								<form class="" name="upload_form" action="User_Free_Category_Listing" method="post" enctype="multipart/form-data">
									
									<div class="row">
										<div class="input-field col s12">
											<input id="product_title" name="email" type="hidden" class="validate" required value='<%=email %>' readonly>
											<label for="list_name">E-Mail</label>
										</div>
									</div>
										<div class="row">
										<div class="input-field col s12">
											<input id="product_title" name="BusinessTitle" type="text" class="validate" pattern="[a-z A-Z][a-z A-Z 0-9]+" oninput="this.value = this.value.replace(/[^a-z A-Z 0-9.]/g, '').replace(/(\..*)\./g, '$1');" required>
											<label for="list_name">Business Name <span style="color:red">*</span></label>
										</div>
									</div>		
									<div class="row">
										<div class="input-field col s12">
											<input id="product_title" name="subcategory" type="text" class="validate" required>
											<label for="list_name">Sub-Category <span style="color:red">*</span></label>
										</div>
									</div>
										<div class="row">
										<div class="input-field col s12">
											<input type="text" name="year" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" pattern="[0-2 ][0-9]{3}"  maxlength="4"  class="validate">
											<label for="year">Business Establishment Year</label>
										</div>
										
									</div>
									
									<!-- <div class="row">
										<div class="input-field col s12">
											<input id="email" name="email" type="email" class="validate" required>
											<label for="email">Email</label>
										</div>
									</div> -->
									<div class="row">
										<div class="input-field col s12">
										<textarea id="textarea1" name="list_addr" class="materialize-textarea"></textarea>
											<!-- <input id="list_addr" name="list_addr" type="text" class="validate" required> -->
											<label for="list_addr">Address</label>
										</div>
									</div>
									
									<div class="row">
									<div class="input-field col s12">
											 <select name="daynames" multiple>
												<option value="" disable>Opening Days</option>
												<!-- <option value="All Days">All Days</option> -->
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
									
									<!-- <div class="row">
										<div class="input-field col s12"> 
											 <select name="btype">
												<option value="">Packages Type</option>
												<option value="Free">Free</option>
												<option value="3 Month">3 Month</option>
												<option value="6 Month">6 Month</option>
												<option value="1 Year">1 Year</option>
												<option value="2 Year">2 Year</option>
											</select>  
						
										 </div>
									</div> --> 
									
									<div class="row">
										<div class="input-field col s12">
											<textarea id="textarea1" name="description" class="materialize-textarea"></textarea>
											<label for="textarea1">Business Descriptions</label>
										</div>
									</div>
									
								
									
									<!-- <div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Social Media Informations:</h5>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input type="text" name="weblink" class="validate" required>
											<label>Website Link</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input type="text" name="facelink" nclass="validate" required>
											<label>www.facebook.com/directory</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input type="text" name="googlelink" class="validate" required>
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
											<input type="text" name="map" class="validate" required>
											<label>Past your iframe code here</label>
										</div>
									</div> -->
									
									<div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Upload Cover Image <span class="v2-db-form-note">(image size 1350x500):<span></h5>
										</div>
									</div>
									<div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>Image</span>
												<input type="file" name="coverimg" accept=".png, .jpg, .jpeg/*" />
											 </div>
											<div class="file-path-wrapper db-v2-pg-inp">
												<input class="file-path validate" type="text"> 
											</div>
										</div>
									</div>
									
									<div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Upload Logo Image <span class="v2-db-form-note">(image size 1350x500):<span></h5>
										</div>
									</div>
									<div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>Logo</span>
												<input type="file" name="logo" accept=".png, .jpg, .jpeg/*"  >
											 </div> 
											<div class="file-path-wrapper db-v2-pg-inp">
												<input class="file-path validate" type="text"> 
											</div>
										</div>
									</div>
									<div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Upload Photo Gallery <span class="v2-db-form-note">(upload multiple photos note:size 750x500):<span></h5>
										</div>
									</div>
									<div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>Image</span>
												<input type="file" name="img" accept=".png, .jpg, .jpeg/*" /> </div>
											<div class="file-path-wrapper db-v2-pg-inp">
												<input class="file-path validate" type="text"> 
											</div>
										</div>
									</div>
									<div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>Image</span>
												<input type="file" name="bimg" accept=".png, .jpg, .jpeg/*" /> </div>
											<div class="file-path-wrapper db-v2-pg-inp">
												<input class="file-path validate" type="text"> 
											</div>
										</div>
									</div>
									<div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>Image</span>
												<input type="file" name="gimg" accept=".png, .jpg, .jpeg/*" /> </div>
											<div class="file-path-wrapper db-v2-pg-inp">
												<input class="file-path validate" type="text"> 
											</div>
										</div>
									</div>	
									
									<!-- <div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Upload Videos Gallery <span class="v2-db-form-note"><span></h5>
										</div>
									</div>
									<div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>Video</span>
												 <input id="video" name="video" type="file" accept="video/*" >
											</div>
											<div class="file-path-wrapper db-v2-pg-inp">
												<input class="file-path validate" type="text"> 
											</div>
										</div>
									</div> -->
									
									
										<br><center>						
									<div class="row" style="width:40%";>
										<input type="submit" value="submit"> <!-- onsubmit="return validateForm()" -->
									</div></center>	
								</form>
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


	
</body>
</html>