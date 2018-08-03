<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<%@ include file="user_header.jsp" %>
	
	
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="SELECT * FROM productlist where id="+id;
System.out.println(sql);
resultSet = statement.executeQuery(sql);
 %>
 
 <div class="sb2-2">
				<!--== breadcrumbs ==-->
				<div class="sb2-2-2">
					<ul>
						<li><a href="main.html"><i class="fa fa-home" aria-hidden="true"></i> Home</a> </li>
						<li class="active-bre"><a href="#"> Add Product</a> </li>
						<li class="page-back"><a href="#"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
				<div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
						<h4>Add New Product</h4> <a class="dropdown-button drop-down-meta drop-down-meta-inn" href="#" data-activates="dr-list"><i class="material-icons">more_vert</i></a>
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
							<%while(resultSet.next()){
%>
								<form class="" action="updatecategoryprocess.jsp" method="">
								<input type="hidden" name="id" value="<%=resultSet.getString("id") %>">
									
									<div class="row">
										<div class="input-field col s12">
											<input id="product_name" name="product_name" type="text" class="validate" value="<%=resultSet.getString(2) %>">
											<label for="first_name">Product Name</label>
										</div>
										
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input id="product_title" name="product_title" type="text" class="validate" value="<%=resultSet.getString(3) %>">
											<label for="list_name">Product Title</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input type="text" name="list_phone" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"  maxlength="10"  class="validate"/ value="<%=resultSet.getString(4) %>">
											<label for="list_phone">Phone</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input id="email" name="email" type="email" class="validate" value="<%=resultSet.getString(5) %>">
											<label for="email">Email</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input id="list_addr" name="list_addr" type="text" class="validate" value="<%=resultSet.getString(6) %>">
											<label for="list_addr">Address</label>
										</div>
									</div>
									
									<div class="row">
										<div class="input-field col s12">
											<input id="category_name" name="category_name" type="text" class="validate" value="<%=resultSet.getString(7) %>">
											<label for="first_name">Product Category Name</label>
										</div>
										
									</div>
									
									<div class="row">
										<div class="input-field col s12">
											<input id="city_name" name="city_name" type="text" class="validate" value="<%=resultSet.getString(8) %>">
											<label for="first_name">City</label>
										</div>
										
									</div>
									<!-- <div class="row">
										<div class="input-field col s12">
											<select multiple>
												<option value="" disabled selected>Select Category</option>
												<option value="">Hotels & Resorts</option>
												<option value="">Real Estate</option>
												<option value="">Trainings</option>
												<option value="">Education</option>
												<option value="">Hospitals</option>
												<option value="">Transportation</option>
												<option value="">Automobilers</option>
												<option value="">Computer Repair</option>
												<option value="">Property</option>
												<option value="">Food Court</option>
												<option value="">Sports Events</option>
												<option value="">Tour & Travels</option>
												<option value="">Health Care</option>
												<option value="">Gym & Fitness</option>
												<option value="">Packers and Movers</option>
												<option value="">Interior Design</option>
												<option value="">Clubs</option>
												<option value="">Mobile Shops</option>
											</select>
										</div>
									</div> -->
									
								
									<div class="row"> </div>
									<div class="row">
										<div class="input-field col s12">
											<textarea id="textarea1" name="textaera1" class="materialize-textarea" value="<%=resultSet.getString(9) %>"></textarea>
											<label for="textarea1">Listing Descriptions</label>
										</div>
									</div>
										
																		
									<!-- <div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Cover Image <span class="v2-db-form-note">(image size 1350x500):<span></h5>
										</div>
									</div>
									<div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>File</span>
												<input type="file"> </div>
											<div class="file-path-wrapper db-v2-pg-inp">
												<input class="file-path validate" type="text"> 
											</div>
										</div>
									</div> -->
									
																		
									<div class="row">
										<button type=submit value="Submit">Update</button>
									</div>
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

	
	<%@ include file="user_footer.html" %>

</body>
</html>