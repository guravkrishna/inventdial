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
String mail=request.getParameter("email");
System.out.println(mail);
try{
	
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from signup where email='"+mail+"'";
System.out.println(sql);
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
						<li class="page-back"><a href="Useradmin.jsp"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
				<div class="tz-2 tz-2-admin">
				<div class="tz-2-com tz-2-main">
					<h4>Change Password</h4>
						<!-- Dropdown Structure -->
						<div class="split-row">
							<div class="col-md-12">
								<div class="box-inn-sp ad-inn-page">
									<div class="tab-inn ad-tab-inn">
										<div class="hom-cre-acc-left hom-cre-acc-right">
											<div class="">
												<form class="" action="passwordChange2.jsp" method="">
												
												<div class="row">
													 <input type="text" name="mail"    value='<%=mail%>' readonly><br>
												</div>
												
												
												<div class="row">
												<div class="input-field col s12">
															 <input type="password" name="opass"    value="" ><br>
													<label for="">current password</label>
												</div>
												</div>
													<div class="row">
															<div class="input-field col s12">
																<input name="pass" type="password" class="validate" required value=""> 
																<label for="">New password</label>
															</div>
														</div>
												
														<!-- <div class="row">
															<div class="input-field col s12">
																<input name="confirmpass" type="password" class="validate" required value=""> 
																<label for="">Confirm new password</label>
															</div>
														</div> -->
													
	
	
														<center><div class="row" style="width:40%">
																<div class="input-field col s12">
																<input type="submit" value="SUBMIT" > </div>
																</div></center>
														<!--jsp code to change password end  -->
														
														
								
								
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
								
								
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
	
	



</body>

</html>