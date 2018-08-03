<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Basic Details</title>
<script type="text/javascript">
	history.pushState(null,null,'customerfreelisting.jsp');
	  window.addEventListener('popstate',function(event){
	  history.pushState(null,null,'customerfreelisting.jsp');
	  });
</script>
<script>
function myFunction() {
    alert("click Ok to Submit your listing");
}
</script>
<script>
function validateForm() {
    var x = document.forms["title"]["fname"]["lname"]["phone"]["email"]["city"].value;
    if (x == "") {
        return false;
    }
}
</script>
</head>
<body>
		<%@include file="user_header.jsp" %>
		
		           <%
					    try{
					    	String name=(String)session.getAttribute("name");
					       
					        System.out.println(name);
							connection = DriverManager.getConnection(connectionUrl+database, userid, password);
							request.getSession(true);
							statement=connection.createStatement();
							String sql ="select * from signup s join listing l on s.email=l.email where s.email='"+name+"'";
							System.out.println(sql);
							// select * from listing where id='"+search+"' or first_name like '%"+search+"%' ; 
							resultSet = statement.executeQuery(sql);
							if(resultSet.next()){												
	                 %> 
		
		<div class="sb2-2">
			
				<!--== breadcrumbs ==-->
				<div class="sb2-2-2">
					<ul>
						<li><a href="main.jsp"><i class="fa fa-home" aria-hidden="true"></i> Home</a> </li>
						<li class="active-bre"><a href="#">Add Listing</a> </li>
						<li class="page-back"><a href="Useradmin.jsp"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
			
				<!--== breadcrumbs ==-->
				<div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
						<h4>Customer Basic Details</h4>
						<!-- Dropdown Structure -->
						<div class="split-row">
							<div class="col-md-12">
								<div class="box-inn-sp ad-inn-page">
									<div class="tab-inn ad-tab-inn">
										<div class="hom-cre-acc-left hom-cre-acc-right">
											<div class="">
												<form  action="./FreeListing" method="post" name="listing">
									<div class="row">
										<div class="input-field col s6">
											<input id="fname" name="fname" type="text"  required name="fname" value='<%=resultSet.getString("firstname")%>' >
											<label for="fname">First Name <span style="color:red">*</span></label>
										</div>
										<div class="input-field col s6">
											<input id="lname" name="lname" type="text"  required value='<%=resultSet.getString("lastname")%>' >
											<label for="lname">Last Name <span style="color:red">*</span></label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12"> 
											 <select name="category" required>
												<option value='<%=resultSet.getString("category")%>'><%=resultSet.getString("category")%></option><span type="color:red">*</span>
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
												<option value="Health and Fitness">Health and Fitness</option>
											</select>  
										</div>
									</div>
									
									<div class="row">
										<div class="input-field col s6">
											<input type="text" name="phone" class="validate" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" pattern="[6-9][0-9]{9}" maxlength="10" value='<%=resultSet.getString("contact")%>' class="validate"  required/>
											
											<label for="phone">Contact Number <span style="color:red">*</span></label>
										</div>
									
									
										<div class="input-field col s6">
											<input type="text" name="land"  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" pattern="[0-9][0-9]{11}"  maxlength="12" class="validate" />
											
											<label for="phone">Telephone Number</label>
										</div>
									</div>
									
									 <div class="row">
										<div class="input-field col s12">
											<input id="email" name="email" type="hidden" class="validate" required value='<%=name %>' >
											<label for="email">Email ID</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input id="city" name="city" type="text" value='<%=resultSet.getString("city")%>' class="validate" required>
											<label for="list_addr">City <span style="color:red">*</span></label>
										</div>
									</div>
									
														
									<br><center>						
									<div class="row" style="width:40%";>
										<input type="submit" value="Next" onsubmit="return validateForm()"/>
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
			<%
							}
							connection.close();
							} catch (Exception e) {
							e.printStackTrace();
							}
					%>
		
		<%@include file="user_footer.html" %>
</body>
</html>