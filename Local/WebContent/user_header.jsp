<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>India's Local Search Engine</title>
	<!-- META TAGS -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- FAV ICON(BROWSER TAB ICON) -->
	<link rel="shortcut icon" href="images/fav.ico" type="image/x-icon">
	<!-- GOOGLE FONT -->
	<link href="https://fonts.googleapis.com/css?family=Poppins%7CQuicksand:500,700" rel="stylesheet">
	<!-- FONTAWESOME ICONS -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<!-- ALL CSS FILES -->
	<link href="css/materialize.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
	<!-- RESPONSIVE.CSS ONLY FOR MOBILE AND TABLET VIEWS -->
	<link href="css/responsive.css" rel="stylesheet">
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
	<![endif]-->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.js" type="text/javascript"></script>
	<script src="js/materialize.min.js" type="text/javascript"></script>
	<script src="js/custom.js"></script>
</head>
<body>
     
	<%@page import="java.sql.DriverManager"%>
	<%@page import="java.sql.ResultSet"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.Connection"%>
	<%
		String id = request.getParameter("id");
		String driver = "com.mysql.jdbc.Driver";
		String connectionUrl = "jdbc:mysql://localhost:3306/";
		String database = "localsearchengine";
		String userid = "root";
		String password = "root";
		try {
				Class.forName(driver);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
				}
			Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
	%>                                                               
      
  <!--== MAIN CONTRAINER ==-->
	<div class="container-fluid sb1">
		<div class="row">
			<!--== LOGO ==-->
			<div class="col-md-2 col-sm-3 col-xs-6 sb1-1"> <a href="#" class="btn-close-menu"><i class="fa fa-times" aria-hidden="true"></i></a> <a href="#" class="atab-menu"><i class="fa fa-bars tab-menu" aria-hidden="true"></i></a>
				<a href="main.jsp" class="logo"><img src="images/logo.gif" alt="" style="margin-top:10px;" /> </a>
			</div>
			<!--== SEARCH ==-->
			<div class="col-md-6 col-sm-6 mob-hide">
				<!-- <form class="app-search">
					<input type="text" placeholder="Search..." class="form-control"> <a href="#"><i class="fa fa-search"></i></a> </form> -->
			</div>
			<!--== NOTIFICATION ==-->
			<div class="col-md-2 tab-hide">
				<!-- <div class="top-not-cen"> <a class='waves-effect btn-noti' href='#'><i class="fa fa-commenting-o" aria-hidden="true"></i><span>5</span></a> <a class='waves-effect btn-noti' href='#'><i class="fa fa-envelope-o" aria-hidden="true"></i><span>5</span></a> <a class='waves-effect btn-noti' href='#'><i class="fa fa-tag" aria-hidden="true"></i><span>5</span></a> </div>
			 --></div>
			<%
					    try{
					    	String name=(String)session.getAttribute("name");
					       
					        System.out.println(name);
							connection = DriverManager.getConnection(connectionUrl+database, userid, password);
							request.getSession(true);
							statement=connection.createStatement();
							String sql ="select * from signup where contact='"+name+"'";
							System.out.println(sql);
							// select * from listing where id='"+search+"' or first_name like '%"+search+"%' ; 
							resultSet = statement.executeQuery(sql);
							if(resultSet.next()){												
	                 %>  
			<!--== MY ACCCOUNT ==-->
			<div class="col-md-2 col-sm-3 col-xs-6">
			
				<!-- Dropdown Trigger -->
				<%-- <a class='waves-effect dropdown-button top-user-pro' href='#' data-activates='top-menu'><img src="images/users/6.png" alt="" />Welcome:<%=resultSet.getString("firstname") %> <i class="fa fa-angle-down" aria-hidden="true"></i> </a> --%>
				<a class='waves-effect dropdown-button top-user-pro' href='#' data-activates='top-menu'>Welcome:<%=resultSet.getString("firstname") %> <i class="fa fa-angle-down" aria-hidden="true"></i> </a>
					
				<!-- Dropdown Structure -->
				<ul id='top-menu' class='dropdown-content top-menu-sty'>
					<li><a href="myratingUser.jsp" class="waves-effect"><i class="fa fa-cogs"></i>My Rating</a> </li>
					<li><a href="myfriendsrating.jsp"><i class="fa fa-bar-chart"></i> My friends Rating</a> </li>
					
					<%--   <li><a href="passwordChangeUser.jsp?email=<%=resultSet.getString("email") %>" readonly> <i class="fa fa-usd" aria-hidden="true"></i>Change password</a> </li> 
							
					 --%>
					
					
					<li><a href="upgrademembership.jsp" class="waves-effect"><i class="fa fa-undo" aria-hidden="true"></i> Upgrade profile</a> </li>
					<li><a href="Useradmin.jsp" class="waves-effect"><i class="fa fa-undo" aria-hidden="true"></i>Manage Business</a> </li>
					
					<li class="divider"></li>
					<li><a href="logoutuser.jsp" class="ho-dr-con-last waves-effect"><i class="fa fa-sign-in" aria-hidden="true"></i> Logout</a> </li>
					
								
				</ul>
			</div>
		</div>
	</div>
	<!--== BODY CONTNAINER ==-->
	<div class="container-fluid sb2">
		<div class="row">
			<div class="sb2-1">
				<!--== USER INFO ==-->
				<div class="sb2-12">
					<ul>
						<li><img src="images/users/2.png" alt=""> </li>
						<li><h5><%=resultSet.getString("firstname") %> <span> <%=resultSet.getString("lastname") %></span></h5> </li>
						
					</ul>
				</div>
				 <!--== LEFT MENU ==-->
					<div class="sb2-13">
					<ul class="collapsible" data-collapsible="accordion">
						
						<!-- <li><a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-user" aria-hidden="true"></i>Manage Business</a>
							<div class="collapsible-body left-sub-menu">
								<ul>
									<li><a href="Add_Business.jsp">Add New Business</a> </li>
									<li><a href="Show_Business.jsp">View Business</a> </li>
									
									<li><a href="#">Manage Category</a> </li>
									<li><a href="myratingUser.jsp">View ratings of my business</a> </li>
								</ul>
								
							</div>
						</li> -->
						
						<li><a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-list-ul" aria-hidden="true"></i>Add Listing</a>
							<div class="collapsible-body left-sub-menu">
								<ul>
									<li><a href="customerfreelisting.jsp">Add product</a> </li>
									
								</ul>
								
							</div>
						</li>
						<li><a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-list-ul" aria-hidden="true"></i>Update Business</a>
							<div class="collapsible-body left-sub-menu">
								<ul>
									<li><a href="showbasicinfouser.jsp?contact=<%=resultSet.getString("contact") %>" type="hidden"> <i class="fa fa-us" aria-hidden="true"></i>All Information</a> </li>
								
								
				 	<li><a href="basicinfouser.jsp?contact=<%=resultSet.getString("contact") %>" type="hidden"> <i class="fa fa-us" aria-hidden="true"></i>Basic Information</a> </li>
					 
					<li><a href="contactinfouser.jsp?contact=<%=resultSet.getString("contact") %>"> <i class="fa fa-us" aria-hidden="true"></i>Contact Information</a> </li>
							
							
					<li><a href="otherinfouser.jsp?contact=<%=resultSet.getString("contact") %>"> <i class="fa fa-us" aria-hidden="true"></i>Other Information</a> </li>
					
									<!--  <li><a href="other-info-user.jsp">Other Information</a> </li>  -->
									<!-- <li><a href="#">Business Keyword</a> </li> -->
									
									
									
					<%-- 				
					<li><a href="uploadmediainfo.jsp?contact=<%=resultSet.getString("contact") %>"> <i class="fa fa-us" aria-hidden="true"></i>Upload Media</a> </li>
					 --%><%
							}
							connection.close();
							} catch (Exception e) {
							e.printStackTrace();
							}
					%>	
									 
									
									
									
									
									
									<!-- <li><a href="upload-media-info.jsp">Upload Media</a> </li>  -->
								</ul>
							</div>
						</li>
						
						<li><a href="#"><i class="fa fa-cogs" aria-hidden="true"></i> Setting</a> </li>
						<li><a href="#"><i class="fa fa-plus-square-o" aria-hidden="true"></i> Social Media</a> </li>
					<li>
					<%
					    try{
					    	String name=(String)session.getAttribute("name");
					       
					        System.out.println(name);
							connection = DriverManager.getConnection(connectionUrl+database, userid, password);
							request.getSession(true);
							statement=connection.createStatement();
							String sql ="select * from signup s join category c on s.contact=c.contact where s.contact='"+name+"'";
							System.out.println(sql);
							// select * from listing where id='"+search+"' or first_name like '%"+search+"%' ; 
							resultSet = statement.executeQuery(sql);
							if(resultSet.next()){												
	                 %>  
	                   <li><a href="message.jsp?subcategory=<%=resultSet.getString("subcategory")%>"><i class="fa fa-plus-square-o" aria-hidden="true"></i>Visitors</a> </li>
	                 <%
							}
							connection.close();
							} catch (Exception e) {
							e.printStackTrace();
							}
					%>
					</li> 
					</ul>
				</div>
			</div> 
			</div>
		</div>  
		
		
		
      
</body>
</html>