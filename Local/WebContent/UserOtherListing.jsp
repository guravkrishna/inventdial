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
    var x = document.forms["other"]["land"]["fax"]["toll"]["pin"].value;
    if (x == "") {
        return false;
    }
}
</script>
</head>
<body>
		<%@include file="user_header.jsp" %>
		
		
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
	 String email = request.getParameter("email");
try{
	
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select email from localsearchengine.category" ;/*where; email="+email */;

resultSet = statement.executeQuery(sql);
if(resultSet.next()){
%> 
		<!--  jsp code-->
		
		
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
			<!--CENTER SECTION-->
			
					<h4>Submit Listings</h4>
					<div class="db-list-com tz-db-table">
						<div class="ds-boar-title">
							<h2 style="text-align:Center;">Add New Listings</h2>
							<p style="text-align:Center;">Run-down your business for FREE with India's Local Search Engine</p>
						</div>
						<div class="hom-cre-acc-left hom-cre-acc-right">
							<div class="">
								<form  action="UserOtherjsp.jsp" method="" name="other">
								
									<div class="row">
										<div class="input-field col s12">
											<input id="product_title" name="email" type="hidden" class="validate" value='<%=email %>' readonly>
											<!-- <label for="list_name">E-Mail</label> -->
										</div>
									</div>
									
									<div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Contact Informations:</h5>
										</div>
										<!-- <div class="input-field col s6">
											<input type="text" name="land" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"  maxlength="11"  class="validate">
											
											<label for="list_phone">Landline Number</label>
										</div> -->
										<div class="input-field col s12">
											<input type="text" name="fax" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"  maxlength="11"  class="validate" >
											
											<label for="list_phone">Fax Number</label>
										</div>
									</div>
									
									<div class="row">
										<div class="input-field col s6">
											<input type="text" name="toll" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"  maxlength="13"  class="validate" >
											
											<label for="list_phone">Tollfree Number</label>
										</div>
										<div class="input-field col s6">
											<input type="text" name="pin" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"  maxlength="6"  class="validate" >
											
											<label for="list_phone">Pin Code</label>
										</div>
									</div>
									
									<!-- <div class="row">
										<div class="input-field col s12"> 
											 <select name="payment">
												<option deselect>Payment Mode</option>
												<option value="Cash">Cash</option>
												<option value="Credit Card">Credit Card</option>
												<option value="Debit Card">Debit Card</option>
												
												<option value="1 Year">1 Year</option>
												<option value="2 Year">2 Year</option>
											</select>  
						
										 </div>
									</div>  -->
									
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
											<input type="url" pattern="https://.*" name="linkthree" class="validate">
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
											<input type="url" pattern="https://.*" name="map" class="validate" >
											 
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
		
		
	<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%> 	
		
</body>
</html>