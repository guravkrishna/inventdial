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
	
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from localsearchengine.signup where id="+id;

resultSet = statement.executeQuery(sql);
if(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<body>

 
<!--  <input type="hidden" name="finame" value="<%=resultSet.getString("id") %>">-->
<!--  <input type="text" name="id" value="<%=resultSet.getString("id") %>">-->








<!-- jsp end -->











			<div class="sb2-2">
				<!--== breadcrumbs ==-->
				<div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
						<h4>Edit Membership</h4>
						<!-- Dropdown Structure -->
						<div class="split-row">
							<div class="col-md-12">
								<div class="box-inn-sp ad-inn-page">
									<div class="tab-inn ad-tab-inn">
										<div class="hom-cre-acc-left hom-cre-acc-right">
											<div class="">
												<form class="" action="upgradeMem2.jsp" method="post">
												
												
												
												<div class="row">
															 <input type="hidden" name="id"    value="<%=resultSet.getString("id") %>" readonly><br>
														</div>
												
												<div class="row">
															 <input type="text" name="oldtype"    value="<%=resultSet.getString("membershiptype") %>" readonly><br>
														</div>
													
													
												<div class="row">
														<div class="input-field col s12">
															<select name="membershiptype" type="text" value=" ">
																<option value="" disabled selected>User Type</option>
																<option value="Free">Free</option>
																<option value="Premium">Premium</option>
																<option value="Premium Plus">Premium Plus</option>
																<option value="Ultra Premium Plus">Ultra Premium Plus</option>
															</select>
																
														</div>
													</div>
														
														
														
														
														
														
	
														
														<!--jsp code to change password end  -->
														
														<center><div class="row" style="width:40%">
																<div class="input-field col s12">
																<input type="submit" value="SUBMIT" > </div>
																</div></center>
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
<%@include file="footer.html" %>
</body>

</html>