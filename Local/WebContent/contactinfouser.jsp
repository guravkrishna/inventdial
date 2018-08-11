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
String sql ="select * from listing l join category c on   l.contact=c.contact where l.contact='"+name+"'";

resultSet = statement.executeQuery(sql);
if(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<body>

 
<%-- <!--  <input type="hidden" name="finame" value="<%=resultSet.getString("id") %>">-->
<!--  <input type="text" name="id" value="<%=resultSet.getString("id") %>">-->
 --%>



<!-- jsp end -->



			<div class="sb2-2">
			<div class="sb2-2-2">
					<ul>
						<li><a href="main.html"><i class="fa fa-home" aria-hidden="true"></i> Home</a> </li>
						<li class="active-bre"><a href="#">Contact information</a> </li>
						<li class="page-back"><a href="Useradmin.jsp"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
				<!--== breadcrumbs ==-->
				<div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
						<h4>Contact information of user</h4>
						<!-- Dropdown Structure -->
						<div class="split-row">
							<div class="col-md-12">
								<div class="box-inn-sp ad-inn-page">
									<div class="tab-inn ad-tab-inn">
										<div class="hom-cre-acc-left hom-cre-acc-right">
											<div class="">
												<form class="" action="contactinfo.jsp" method="">
												
												
												
												<div class="row">
															 <input type="hidden" name="email"    value="<%=resultSet.getString("contact") %>" readonly><br>
														</div>
												
												
													
													<div class="row">
														<div class="input-field col s12">
															<input name="fname" type="text" class="validate" value="<%=resultSet.getString("fname") %>" oninput="this.value = this.value.replace(/[^a-zA-Z.]/g, '').replace(/(\..*)\./g, '$1');"   required title="enter  valid name">
															<label for="fname"> Name</label>
														</div>
														
													</div>
													<%-- <div class="row">
														<div class="input-field col s12">
															<input name="land" type="text" class="validate" value="<%=resultSet.getString("land") %>" pattern="[0-9][0-9]{0-9}" title="Enter digits only" required>
															<label for="land">Landline number</label>
														</div>
													</div> --%>
													<%-- <div class="row">
														<div class="input-field col s12">
															<input name="phone" type="text" class="validate" value="<%=resultSet.getString("phone") %>" pattern="[0-9][0-9]{9}" title="Enter digits only" required>
															<label for="mobilenum">Mobile number</label>
														</div>
													</div> --%>
													
													<div class="row">
														<div class="input-field col s12">
															<input name="phone" type="text" class="validate" value="<%=resultSet.getString("contact") %>" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" pattern="[0-9][0-9]{9}" title="Enter digits only" maxlength="10" required>
															<label for="phone">Mobile number</label>
														</div>
													</div>
													
													<div class="row">
														<div class="input-field col s12">
															<input name="fax" type="text" class="validate" value="<%=resultSet.getString("fax") %>" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" pattern="[0-9][0-9]{9}" title="Enter digits only" maxlength="10" >
															<label for="fax">Fax number</label>
														</div>
													</div>
													<div class="row">
														<div class="input-field col s12">
															<input name="pin" type="text" class="validate" value="<%=resultSet.getString("pin") %>" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" pattern="[0-9][0-9]{7}" title="Enter digits only" maxlength="8" required>
															<label for="pin">Pin number <span style="color:red">*</span></label>
														</div>
													</div>
													
													<div class="row">
														<div class="input-field col s12">
															<input name="toll" type="text" class="validate" value="<%=resultSet.getString("toll") %>" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" pattern="[0-9][0-9]{11}" title="Enter digits only" maxlength="12" >
															<label for="toll">Tollfree number</label>
														</div>
													</div>
													
													<%-- <div class="row">
														<div class="input-field col s12">
															<input name="email" type="email" class="validate" value="<%=resultSet.getString("email") %>">
															<label for="email">Email</label>
														</div>
													</div> --%>
													
													<div class="row">
														<div class="input-field col s12">
															<input name="linkone" type="text" class="validate" value="<%=resultSet.getString("linkone") %>">
															<label for="linkone">Website</label>
														</div>
													</div>
													
												
												<div class="row">
														<div class="input-field col s12">
															<input name="map" type="text" class="validate" value="<%=resultSet.getString("map") %>">
															<label for="map">Google map</label>
														</div>
													</div>
														
	
														<center><div class="row" style="width:40%">
																<div class="input-field col s12">
																<input type="submit" value="SUBMIT" > </div>
																</div></center>
														<!--jsp code to change password end  -->
														
														<!-- <div class="row">
														 	<div class="input-field col s12"> <a class="waves-effect waves-light btn-large full-btn" href="edit">Edit User profile</a> </div>
														<input type="submit" value="edit profile">
														</div> -->
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
			
			
     <script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.js" type="text/javascript"></script>
	<script src="js/materialize.min.js" type="text/javascript"></script>
	<script src="js/custom.js"></script>
	
	



<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html> 
<%@include file="user_footer.html" %>
</body>

</html>