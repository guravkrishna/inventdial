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
			
			
			
<%
try{
	String email=request.getParameter("email");
	System.out.println(email);
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from localsearchengine.listing l,localsearchengine.category c where  l.email=c.email ";

resultSet = statement.executeQuery(sql);
if(resultSet.next()){
%>
			
			
			<div class="sb2-2">
				<!--== breadcrumbs ==-->
				<div class="sb2-2-2">
					<ul>
						<li><a href="main.jsp"><i class="fa fa-home" aria-hidden="true"></i> Home</a> </li>

						<li class="active-bre"><a href="#">Upload Media</a> </li>
						<li class="page-back"><a href="Useradmin.jsp"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
				<div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
						<h4>Add business</h4> <a class="dropdown-button drop-down-meta drop-down-meta-inn" href="#" data-activates="dr-list"><i class="material-icons">more_vert</i></a>
					<!-- 	<ul id="dr-list" class="dropdown-content">
							<li><a href="#!">Add New</a> </li>
							<li><a href="#!">Edit</a> </li>
							<li><a href="#!">Update</a> </li>
							<li class="divider"></li>
							<li><a href="#!"><i class="material-icons">delete</i>Delete</a> </li>
							<li><a href="#!"><i class="material-icons">subject</i>View All</a> </li>
							<li><a href="#!"><i class="material-icons">play_for_work</i>Download</a> </li>
						</ul>-->
						<!-- Dropdown Structure -->
						<div class="split-row">
							<div class="col-md-12">
								<div class="box-inn-sp ad-inn-page">
									<div class="tab-inn ad-tab-inn">
										<div class="hom-cre-acc-left hom-cre-acc-right">
											<div class="">
												<form class="" action="UploadmediasServlet" method="post" enctype="multipart/form-data">
													
												<div class="row">
															 <input type="hidden" name="email"    value="<%=resultSet.getString("email") %>" readonly><br>
														</div>	
													
												<div class="row">
										<div class="db-v2-list-form-inn-tit" >
											<h5>Image <span class="v2-db-form-note"><span></h5>
										</div>
									</div>
									<div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>File</span>
												<input type="file" name="nimg"> </div>
											<div class="file-path-wrapper db-v2-pg-inp">
												<input class="file-path validate" type="text"> 
											</div>
										</div>
									</div>
									
									
								
								<div class="row">
										<div class="db-v2-list-form-inn-tit" >
											<h5> <span class="v2-db-form-note"><span></h5>
										</div>
									</div>
									<div class="row tz-file-upload"  >
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>File</span>
												<input type="file"  name="neimg"> </div>
											<div class="file-path-wrapper db-v2-pg-inp">
												<input class="file-path validate" type="text"> 
											</div>
										</div>
									</div>
								
								
								<div class="row">
										<div class="db-v2-list-form-inn-tit" >
											<h5>Video <span class="v2-db-form-note"><span></h5>
										</div>
									</div>
									<div class="row tz-file-upload"  >
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>File</span>
												<input type="file"  name="vid"> </div>
											<div class="file-path-wrapper db-v2-pg-inp">
												<input class="file-path validate" type="text"> 
											</div>
										</div>
									</div>
									
									
									
										</div>
													<!-- <div class="row"> -->
													<!-- 	<div class="input-field col s12"> <a class="waves-effect waves-light btn-large full-btn" href="#!">Submit User</a> </div> -->
													
													<center><div class="row" style="width:40%">
														<div class="input-field col s12">
															<input type="submit" value="SUBMIT" >
														 </div>
													</div>
											</center>
													<!-- </div> -->
												</form>
											</div>
										</div>
									</div>
								</div>
								
								<div class="admin-pag-na">
									<ul class="pagination list-pagenat">
										<li class="disabled"><a href="#!!"><i class="material-icons">chevron_left</i></a> </li>
										<li class="active"><a href="#!">1</a> </li>
										<li class="waves-effect"><a href="#!">2</a> </li>
										<li class="waves-effect"><a href="#!">3</a> </li>
										
										<li class="waves-effect"><a href="#!"><i class="material-icons">chevron_right</i></a> </li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
			
			
			
			
			
	<!--== BOTTOM FLOAT ICON ==-->
	<%@include file="footer.html" %>
	
	

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
	
</body>

</html>