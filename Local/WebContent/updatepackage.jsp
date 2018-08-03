 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	
</head>


<body>

	<!--== MAIN CONTRAINER ==-->
	<%@include file="Admin-header.jsp" %>
	<%
try{ 
	String pack=request.getParameter("package"); 
	connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();


String sql="select * from package1 where package='"+pack+"'";
System.out.println(sql);
resultSet = statement.executeQuery(sql);%>
			<!--== BODY INNER CONTAINER ==-->
			<div class="sb2-2">
				<!--== breadcrumbs ==-->
				<div class="sb2-2-2">
					<ul>
						<li><a href="main.html"><i class="fa fa-home" aria-hidden="true"></i> Home</a> </li>
						<li class="active-bre"><a href="#"> Add New Package</a> </li>
						<li class="page-back"><a href="#"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
				<div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
						<h4>Add New Package</h4> <a class="dropdown-button drop-down-meta drop-down-meta-inn" href="#" data-activates="dr-list"><i class="material-icons">more_vert</i></a>
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
							<%

						while(resultSet.next()){
%>
								<form class="" action="updatepackageprocess.jsp" method="post">
								<input type="hidden" name="package" value="<%=resultSet.getString("package") %>">
								<div class="row">
										<div class="input-field col s12">
											<input id="list_name" type="text" class="validate" name="type" value="<%=resultSet.getString(2) %>">
											<label for="list_name">Package Type</label>
										</div>
									</div>
									<div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Features</h5>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input type="text"  name="one" value="<%=resultSet.getString(3) %>">
											<label for="list_addr">Feature one</label>
										</div>
										<div class="input-field col s12">
											<input  type="text"  name="two" value="<%=resultSet.getString(4) %>">
											<label for="list_addr">Feature Two</label>
										</div>
									
									<div class="input-field col s12">
											<input  type="text"  name="three" value="<%=resultSet.getString(5) %>">
											 <label for="list_addr">Feature Three</label>
										</div>
									</div>
									
									<div class="row">
										<div class="input-field col s6">
											<input id="first_name" type="date" class="validate" name="sdate" value="<%=resultSet.getString(6) %>">
											<!-- <label for="first_name">Start Date</label> -->
										</div>
										<div class="input-field col s6">
											<input id="last_name" type="date" class="validate" name="edate" value="<%=resultSet.getString(7) %>">
											<!-- <label for="last_name">Expire Date</label> -->
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input id="Amount" type="text" class="validate" name="amount" value="<%=resultSet.getString(8) %>">
											<label for="email">Amount</label>
										</div>
									</div>
									<!-- <div class="row" >
										<div class="input-field col s12">
											 <select name="payment">
												<option value="">Payment Mode</option>
												
												<option value="Monday">Credit Card</option>
												<option value="Tuesday">Debit Card</option>
												<option value="Wednesday">Visa Card</option>
												<option value="Thursday">Master Card</option>
												<option value="Friday">Cash</option>
												<option value="Saturday">Cheques</option>
												
											</select> 
											<input type="text" name="day">
										</div>
									</div> -->
									<!-- <div class="row">
										<div class="input-field col s12">
											<input id="email" type="text" class="validate" name="email">
											<label for="email">Email Id</label>
										</div>
									</div>
								 -->
								
								
								
								
									<div class="row">
										 <div class="input-field col s12 v2-mar-top-40"><input type="submit" value="Update"></div>
										
 									
 </div>
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

