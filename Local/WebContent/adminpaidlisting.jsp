 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	
</head>


<body>


	<!-- <div id="preloader">
		<div id="status">&nbsp;</div>
	</div> -->
	<!--== MAIN CONTRAINER ==-->
	<%@include file="Admin-header.jsp" %>
	
			<!--== BODY INNER CONTAINER ==-->
			<div class="sb2-2">
				<!--== breadcrumbs ==-->
				<div class="sb2-2-2">
					<ul>
						<li><a href="main.html"><i class="fa fa-home" aria-hidden="true"></i> Home</a> </li>
						<li class="active-bre"><a href="#"> Add Paid Listing</a> </li>
						<li class="page-back"><a href="admin.jsp"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
				<div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
						<h4>Add Paid Listing</h4> <a class="dropdown-button drop-down-meta drop-down-meta-inn" href="#" data-activates="dr-list"><i class="material-icons">more_vert</i></a>
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
								<form class="" action="./AddPaidListing" method="post">
								<div class="row">
										<div class="input-field col s12">
											<input id="list_name" type="text" class="validate" name="title" required>
											<label for="list_name">Business Title</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s6">
											<input id="first_name" type="text" class="validate" name="fname" required pattern="[a-z A-Z]+" oninput="this.value = this.value.replace(/[^a-zA-Z.]/g, '').replace(/(\..*)\./g,'$1');" title="enter  valid name">
											<label for="first_name">First Name</label>
										</div>
										<div class="input-field col s6">
											<input id="last_name" type="text" class="validate" name="lname" required pattern="[a-z A-Z]+" oninput="this.value = this.value.replace(/[^a-zA-Z.]/g, '').replace(/(\..*)\./g,'$1');" title="enter  valid name">
											<label for="last_name">Last Name</label>
										</div>
									</div>
									
									<div class="row">
										<div class="input-field col s12">
											<input id="list_phone" type="text" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g,'$1');" class="validate"  name="phone" required pattern="[123456789][0-9]{9}" Maxlength="10" minlength="10" title="enter digits only">
											<label for="list_phone">Contact Number</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input id="email" type="email" class="validate" name="email" required>
											<label for="email">Email Id</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input id="list_addr" type="text" class="validate" name="city" required pattern="[a-z A-Z]+" oninput="this.value = this.value.replace(/[^a-zA-Z.]/g, '').replace(/(\..*)\./g,'$1');" title="enter  valid city name">
											<label for="list_addr">City</label>
										</div>
									</div>
								
								
								
								
									<div class="row">
										 <div class="input-field col s12 v2-mar-top-40"><input type="submit" value="Submit"></div>
										
 									
 </div>
 
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
		</div>
	</div>

									
	<!--== BOTTOM FLOAT ICON ==-->
	<%@include file="Admin_footer.html" %>
	<!--SCRIPT FILES-->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.js" type="text/javascript"></script>
	<script src="js/materialize.min.js" type="text/javascript"></script>
	<script src="js/custom.js"></script>
</body>
</html> 

