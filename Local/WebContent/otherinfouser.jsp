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
	//String email=request.getParameter("email");
	String name=(String)session.getAttribute("name");
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from listing l join category c on l.contact=c.contact where l.contact='"+name+"'";

resultSet = statement.executeQuery(sql);
if(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<body>

 
<%-- <!--  <input type="hidden" name="finame" value="<%=resultSet.getString("id") %>"> -->
<!--  <input type="text" name="id" value="<%=resultSet.getString("id") %>"> -->
 --%>



<!-- jsp end -->



			<div class="sb2-2">
			<div class="sb2-2-2">
					<ul>
						<li><a href="main.html"><i class="fa fa-home" aria-hidden="true"></i> Home</a> </li>
						<li class="active-bre"><a href="#">Other information</a> </li>
						<li class="page-back"><a href="Useradmin.jsp"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
				<!--== breadcrumbs ==-->
				<div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
						<h4>Other information of user</h4>
						<!-- Dropdown Structure -->
						<div class="split-row">
							<div class="col-md-12">
								<div class="box-inn-sp ad-inn-page">
									<div class="tab-inn ad-tab-inn">
										<div class="hom-cre-acc-left hom-cre-acc-right">
											<div class="">
												<form class="" action="otherinfo.jsp" method="">
												
												
												
												<div class="row">
															 <input type="text" name="contact"  value="<%=name%>" readonly><br>
														</div>
												
												
													
													<div class="row">
														<div class="input-field col s12">
															<input name="open" type="text" class="validate" value="<%=resultSet.getString("open") %>" >
															<label for="open"> Opening time</label>
															
														</div>
														
													</div>
													<div class="row">
														<div class="input-field col s12">
															<input name="close" type="text" class="validate" value="<%=resultSet.getString("close") %>" >
															<label for="close">Closing time</label>
														</div>
													</div>
													<div class="row">
														<div class="input-field col s12">
															<input name="day" type="text" class="validate" value="<%=resultSet.getString("day") %>" >
															<label for="day">Days</label>
														</div>
													</div>
													<%-- <div class="row">
														<div class="input-field col s12">
															<input name="paymentmode" type="text" class="validate" value="<%=resultSet.getString("paymentmode") %>">
															<label for="paymentmode">Payment mode</label>
														</div>
													</div> --%>
													
													<div class="row">
														<div class="input-field col s12">
															<input name="content" type="text" class="validate" value="<%=resultSet.getString("content") %>" >
															<label for="content">Company information</label>
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