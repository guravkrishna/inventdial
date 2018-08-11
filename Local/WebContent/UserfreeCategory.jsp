<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
    var x = document.forms["upload_form"]["category"]["business_name"]["sub_business"]["list_addr"]
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
	 String name=request.getParameter("phone");
	 System.out.println(name);
	/* try{
	
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select contact from listing where contact='"+name+"'";

resultSet = statement.executeQuery(sql);
if(resultSet.next()){ */
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
											<input id="product_title" name="con" type="hidden" class="validate" required value='<%=name%>' readonly>
											<!-- <label for="list_name">E-Mail</label> -->
										</div>
									</div>
										<div class="row">
										<div class="input-field col s12">
											<input id="product_title" name="BusinessTitle" type="text" class="validate" pattern="[a-z A-Z][a-z A-Z 0-9]+" oninput="this.value = this.value.replace(/[^a-z A-Z 0-9.]/g, '').replace(/(\..*)\./g, '$1');" required>
											<label for="list_name">Business Name <span style="color:red">*</span></label>
										</div>
									</div>		
									
									<script type="text/javascript">
 //<![CDATA[ 
 // array of possible countries in the same order as they appear in the country selection list 
 var categoryLists = new Array(4) 
 categoryLists["empty"] = ["Select a Category"]; 
 categoryLists["Hospital"] = ["Hospitals", "Children Hospitals", "ENT Hospitals","Eye Hospitals", "Maternity Hospitals", "Mental Hospitals","Multispeciality Hospitals", "Private Hospitals", "Public Hospitals","Veterinary Hospitals", "Ayurvedic Hospitals", "Cancer Hospitals","Cardiac Hospitals",
							"Charitable Hospitals","Children Hospitals","Dental Hospitals","Diabetic Centres","Esis Hospitals","Eye Hospitals","Government Veterinary Hospitals","HIV Hospitals","Homeopathic Hospitals","Kidney Hospitals","Maternity Hospitals","Mental Hospitals","Neurological Hospitals",
							"Nursing Homes","Ophthalmologists","Orthopaedic Hospitals","Veterinary Hospitals"]; 
 categoryLists["Hotel and Resorts"] = ["1 Star","2 Star","3 Star","4 Star","5 Star","Budget Hotels","Heritage Hotels","Premium Hotels"]; 
 categoryLists["Education and Traninings"] = ["Schools", "Colleges", "Acting Classes","Art and Craft Classes","Coaching Classes & Tutorials","Language Classes","Music Classes","Painting Classes","Photography Classes","Training Institutes"]; 
 categoryLists["Internet"]= ["Internet Service Providers", "Web Designers","Network Security","Cyber Cafes","Wifi Internet Service Providers","Airtel","Hathway","Reliance","Tata Docomo","Tikona"]; 
 categoryLists["Property Management Services"] = ["NA"]; 
 categoryLists["Repair & Services"] = ["AC","Car","Computer","Laptop","Mobile Phone","Motorcycle","Refrigerator","Washing Machine","Water Purifier","Air Cooler","Camera","Electric Chimney","Elevator","Gas Stove","Generator","Geyser","Home Theatre","Inverter","Microwave Oven","Scooter","Sewing Machine",
										"Sofa Set","Tablet","Treadmill","Wrist Watch"]; 
 categoryLists["Real Estates"] = ["Rent","Sell","Buy","PG, Hostels and Rooms"]; 
 categoryLists["Travels"]= ["Flights","Bus","Car Rentals","Cabs","TrainsInternational SIM Card","Visa Assistance","Foreign Exchange","Meals on Train","Tour Packages"]; 
 categoryLists["Transports"]= ["Animal Transporters","Business & Industrial Goods","Food & Agriculture Products","Full Container Load Freight","Junk Transporters","Low Container Load Frieght","Vehicles Transporters","Antiques & Special Care Items","Plants & Heavy Equipments"]; 
 categoryLists["Professional Services"] = ["NA"]; 
 categoryLists["Packers and Movers"] = ["Local","National","International","Movers For Automobile","Transporters","Movers For Commercial"]; 
 categoryLists["Gyms and Fitness"] = ["Dietitians", "Fitness Classes", "Gym","Health Equipments","Health Food &amp; Supplements","Meditation &amp; Relaxation","Yoga Classes"]; 
 /* categoryLists["Job Training"] = ["NA"]; 
 categoryLists["Skin Care & Treatment"] = ["1 Star","2 Star","3 Star","4 Star","5 Star"]; 
 categoryLists["Property and Rental"] = ["Russia", "China", "Japan"]; 
 categoryLists["Domestic Help Services"]= ["Britain", "France", "Spain", "Germany"]; 
 categoryLists["Home Appliances Repair & Services"] = ["Canada", "United States", "Mexico"]; 
 categoryLists["Sports"] = ["1 Star","2 Star","3 Star","4 Star","5 Star"]; 
 categoryLists["Furniture Dealers"] = ["Russia", "China", "Japan"]; 
 categoryLists["Interior Designers"]= ["Architects", "Commercial", "Interior Decorators", "Interior Furnishing Contractors","Interior Designer Institutes"]; 
 categoryLists["Security System Dealers"]= ["Britain", "France", "Spain", "Germany"]; */ 
 /* CountryChange() is called from the onchange event of a select element. 
 * param selectObj - the select object which fired the on change event. 
 */ 
 function categoryChange(selectObj) { 
 // get the index of the selected option 
 var idx = selectObj.selectedIndex; 
 // get the value of the selected option 
 var which = selectObj.options[idx].value; 
 // use the selected option value to retrieve the list of items from the countryLists array 
 cList = categoryLists[which]; 
 // get the country select element via its known id 
 var cSelect = document.getElementById("sub-category"); 
 // remove the current options from the country select 
 var len=cSelect.options.length; 
 while (cSelect.options.length > 0) { 
 cSelect.remove(0); 
 } 
 var newOption; 
 // create new options 
 for (var i=0; i<cList.length; i++) { 
 newOption = document.createElement("option"); 
 newOption.value = cList[i];  // assumes option string and value are the same 
 newOption.text=cList[i]; 
 // add the new option 
 try { 
 cSelect.add(newOption);  // this will fail in DOM browsers but is needed for IE 
 } 
 catch (e) { 
 cSelect.appendChild(newOption); 
 } 
 } 
 $("#sub-category").material_select();
 } 
//]]>
</script>
											
									
									 <div class="row">
									<div class="input-field s12"> 
										 <select  onchange="categoryChange(this);">
											<option value="empty">Select a category</option>
											<option value="Hospital">Hospital</option>
											<option value="Hotel and Resorts">Hotel and Resorts</option>
											<option value="Education and Traninings">Education and Traninings</option>
											<option value="Internet">Internet</option>
											<option value="Property Management Services">Property Management Services</option>
											<option value="Repair & Services">Repair & Services</option>
											<option value="Real Estates">Real Estates</option>
											<option value="Travels">Travels</option>
											<option value="Transports">Transports</option>
											<option value="Professional Services">Professional Services</option>
											<option value="Packers and Movers">Packers and Movers</option>
											<option value="Gyms and Fitness">Gyms and Fitness</option>
											<option value="Job Training">Job Training</option>
											<option value="Skin Care & Treatment">Skin Care & Treatment</option>
											<option value="Property and Rentels">Property and Rental</option>
											<option value="Domestic Help Services">Domestic Help Services</option>
											<option value="Home Appliances Repair & Services">Home Appliances Repair & Services</option>
											<option value="Sports">Sports</option>
											<option value="Furniture Dealers">Furniture Dealers</option>
											<option value="Interior Designers">Interior Designers</option>
											<option value="Security System Dealers">Security System Dealers</option>
											<option value=""></option>
										  </select>
							            </div>
							           </div>  
							           
							          <div class="row">
										<div class="input-field col s12">
											  <select id="sub-category" name="subcategory">
												<option value="0">Select a sub-category</option>
											  </select>
											<!--<select name="subcategory" id="state"></select>
											 <select name="subcategory" id="subcategory" required> -->
											 <!-- <input id="product_title" name="subcategory" type="text" class="validate" required>
											<label for="list_name">Sub-Category <span style="color:red">*</span></label> 
									 	 --></div>
									</div>
									<!-- <div class="row">
										<div class="input-field col s12">
											<input id="product_title" name="subcategory" type="text" class="validate" required>
											<label for="list_name">Sub-Category <span style="color:red">*</span></label>
										</div>
									</div> -->
										<!-- <div class="row">
										<div class="input-field col s12">
											<input type="text" name="year" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" pattern="[0-2 ][0-9]{3}"  maxlength="4"  class="validate">
											<label for="year">Business Establishment Year</label>
										</div>
										
									</div> -->
									
									<div class="row">
										<div class="input-field col s12">
											<input type='text' id='numonly' name="year" 
     											 onkeyup='if(!validnum(this.value)) this.value="";'>
											<!-- <input type="text" name="year" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" pattern="[0-2 ][0-9]{3}"  maxlength="4"  class="validate">
											 --><label for="year">Business Establishment Year</label>
										</div>
										<script>
										
										function validnum(a) { 
											var current_year=new Date().getFullYear();
										    if(a < 0 || a > current_year)
										        return false;
										    else 
										        return true;
										} 
										
										</script>
									</div>
									
								
									<div class="row">
										<div class="input-field col s12">
										<textarea id="textarea1" name="list_addr" class="materialize-textarea" required></textarea>
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
									
									
										<%
try{ 
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql1 ="SELECT  distinct package FROM package1";
System.out.println(sql1);
resultSet = statement.executeQuery(sql1);%>
								
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
									
									<div class="row">
										<div class="input-field col s12">
											<textarea id="textarea1" name="description" class="materialize-textarea" required></textarea>
											<label for="textarea1">Business Descriptions <span style="color:red">*</span></label>
										</div>
									</div>
									
								
									
									
									
									<div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Upload Cover Image <span style="color:red">*  </span> <span class="v2-db-form-note">(image size 1350x500):<span></h5>
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
											<h5>Upload Logo Image <span style="color:red">*  </span><span class="v2-db-form-note">(image size 1350x500):<span></h5>
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
			
			
<%-- <%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>  --%> 


	
</body>
</html>