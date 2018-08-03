<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
	history.pushState(null,null,'User_Other_Listing.jsp');
	  window.addEventListener('popstate',function(event){
	  history.pushState(null,null,'User_Other_Listing.jsp');
	  });
</script>
<script>
function myFunction() {
    alert("click Ok to Submit your listing");
}
</script>
<script>
function validateForm() {
    var x = document.forms["other"]["land"]["fax"]["toll"]["pin"].value;
    if (x == "") {
        return false;
    }
}
</script>
</head>
<body>
		<%@include file="header.jsp" %>
		
		
		<!-- jsp code -->
		<%-- <%@page import="java.sql.DriverManager"%>
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
	%>  --%> 
	 <%
	 //String email = request.getParameter("email");
	 String name=(String)session.getAttribute("name");
try{
	
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from category" ;/*where; email="+email */;

resultSet = statement.executeQuery(sql);
if(resultSet.next()){
%> 
		<!--  jsp code-->
		
		
		<section>
		<div class="tz">
			<!--LEFT SECTION-->
			<div class="tz-l">
				<div class="tz-l-1">
					<ul>
						<li><img src="images/db-profile.jpg" alt="" /> </li>
						<li><span>80%</span> profile complete</li>
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
						<div class="hom-cre-acc-left hom-cre-acc-right">
							<div class="">
								<form  action="User_Other_jsp.jsp" method="post" name="other">
								
									<div class="row">
										<div class="input-field col s12">
											<input id="product_title" name="email" type="hidden" class="validate" required value='<%=name %>' readonly>
										<!-- 	<label for="list_name">E-Mail</label> -->
										</div>
									</div>
									
									<div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Contact Informations:</h5>
										</div>
										
										<div class="input-field col s12">
											<input type="text" name="fax" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" pattern=[0-9][0-9]{11} maxlength="12"  class="validate" />
											
											<label for="list_phone">Fax Number</label>
										</div>
									</div>
									
									<div class="row">
										<div class="input-field col s6">
											<input type="text" name="toll" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" pattern=[0-9][0-9]{11} maxlength="12"  class="validate" />
											
											<label for="list_phone">Tollfree Number</label>
										</div>
										<div class="input-field col s6">
											<input type="text" name="pin" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" pattern=[0-9][0-9]{5} maxlength="6"  class="validate" required/>
											
											<label for="list_phone">Pin Code*</label>
										</div>
									</div>
									
							
									
									 <div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Social Media Informations:</h5>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input type="url" pattern="https://.*" name="linkone" class="validate">
											<label>Website Link</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input type="url" pattern="https://.*" name="linktwo" class="validate" >
											<label>www.facebook.com/directory</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input type="url" pattern="https://.*" name="linkthree" class="validate" >
											<label>www.googleplus.com/directory</label>
										</div>
									</div> 
									
									<div class="row">
										<div class="input-field col s12">
											<input type="url" pattern="https://.*" name="linkfour" class="validate" >
											<label>www.Youtube.com/directory</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input type="url" pattern="https://.*" name="link" class="validate" >
											<label>www.LinkIn.com/directory</label>
										</div>
									</div>
									
									<div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Google Map:</h5>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input type="url" pattern="https://.*" name="map" class="validate">
											 
											 <label>Past your iframe code here</label>
										</div>
									</div> 
														
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
		
	<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%> 	
		<%@include file="footer.html" %>
</body>
</html>