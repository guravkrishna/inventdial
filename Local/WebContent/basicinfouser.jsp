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
	String email=request.getParameter("email");
	System.out.println(email);
	
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from listing l join category c on l.email=c.email where l.email='"+email+"' ";

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
														 <input type="hidden" name="email"    value="<%=resultSet.getString("email") %>" readonly><br>
													</div>
												
													<div class="row">
														<div class="input-field col s12">
															<input name="fname" type="text" class="validate" required value="<%=resultSet.getString("fname") %>" oninput="this.value = this.value.replace(/[^a-zA-Z.]/g, '').replace(/(\..*)\./g, '$1');"   required> 
															<label for="">first name*</label>
														</div>
													</div>
												
													<div class="row">
														<div class="input-field col s12">
															<input name="lname" type="text" class="validate" required value="<%=resultSet.getString("lname") %>" oninput="this.value = this.value.replace(/[^a-zA-Z.]/g, '').replace(/(\..*)\./g, '$1');"  required> 
															<label for="email">last name*</label>
														</div>
													</div>
														
													<div class="row">
														<div class="input-field col s12">
															<input name="phone" type="text" class="validate" required value="<%=resultSet.getString("phone") %>" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" pattern="[0-9][0-9]{9}" title="Enter digits only" maxlength="10" required> 
															<label for="email">Contact*</label>
														</div>
													</div>
													
													<div class="row">
														<div class="input-field col s12">
															<input name="land" type="text" class="validate" required value="<%=resultSet.getString("land") %>" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" pattern="[0-9][0-9]{9}" title="Enter digits only" maxlength="10" required> 
															<label for="email">Landline Number*</label>
														</div>
													</div>
														
													<div class="row">
														<div class="input-field col s12">
															<input name="mail" type="hidden" class="validate" required value="<%=resultSet.getString("email") %>"> 
															<label for="">Email</label>
														</div>
													</div>
													
													<div class="row">
										<div class="input-field col s12"> 
											 <select name="category">
												<option value=""><%=resultSet.getString("category") %></option>
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
												<option value=""></option>
												<option value=""></option>
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
														
													<div class="row">
														<div class="input-field col s12">
															<input name="city" type="text" class="validate" required value="<%=resultSet.getString("city") %>"> 
															<label for="email">City</label>
														</div>
													</div>
														
											<center><div class="row" style="width:40%">
														<div class="input-field col s12">
															<input type="submit" value="SUBMIT" >
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
	
	




<%-- <%@include file="footer.html" %> --%>
</body>

</html>