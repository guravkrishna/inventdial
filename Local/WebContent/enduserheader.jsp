<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
	<title>Local Search Engine</title>
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
	<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false&key=AIzaSyBNLDwRv4ItlTJRouExNPpJokdKK859yDk"></script>
	<script src="/test/application.js" type="text/javascript"></script>
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
<%
String contact=(String)session.getAttribute("contact");

System.out.println(contact);
String city= request.getParameter("city");
String category = request.getParameter("category");
try{
	connection = DriverManager.getConnection(connectionUrl+database, userid, password);
	statement=connection.createStatement();
	String sql ="select * from listing l,category c ";
	// select * from listing where id='"+search+"' or first_name like '%"+search+"%' ; 
	resultSet = statement.executeQuery(sql);
	if(resultSet.next()){												
%>




	<!--PRE LOADING-->
	
	<!--BANNER AND SERACH BOX-->
	<section class="bottomMenu dir-il-top-fix">
		<div class="container top-search-main">
			<div class="row">
				<div class="ts-menu">
					<!--SECTION: LOGO-->
					<div class="ts-menu-1">
						<a href="main.jsp"><img src="images/logo1.gif" alt=""> </a>
					</div>
					<!--SECTION: BROWSE CATEGORY(NOTE:IT'S HIDE ON MOBILE & TABLET VIEW)-->
					
					<!--SECTION: SEARCH BOX-->
					<div class="ts-menu-3">
						<div class="">
						<h1 style="color:white; margin-top:8px">Indias Largest Local Search Engine</h1>
							<!-- <form action="searchInMain.jsp" name="mysearch" method="" class="tourz-search-form" >
								<div class="input-field" style="height:";>
							<input type="text" id="select-city" name="city" class="autocomplete" autocomplete="off" required>
							
							<label for="select-city">Enter city</label>
						</div>
						 <div class="input-field">
							<input type="text" id="select-search" name="category" class="autocomplete" autocomplete="off" required>
							<label for="select-search" class="search-hotel-type">Search your services like hotel, resorts, events and more</label>
						</div> 
						<div class="input-field">
	                     <input type="submit" value="Search"  class="waves-effect waves-light tourz-sear-btn"></div>
					</form> -->
						</div>
					</div> 
					<!--SECTION: REGISTER,SIGNIN AND ADD YOUR BUSINESS-->
					<div class="ts-menu-4">
						<div class="v3-top-ri">
							<ul>
								<li><a href="logoutuser.jsp" class="v3-menu-sign"><i class="fa fa-sign-in"></i> Logout</a> </li>
								<!-- <li><a href="Userfreelisting.jsp" class="v3-add-bus"><i class="fa fa-plus" aria-hidden="true"></i> Add Listing</a> </li> -->
							</ul>
						</div>
					</div>
					<!--MOBILE MENU ICON:IT'S ONLY SHOW ON MOBILE & TABLET VIEW-->
					<div class="ts-menu-5"><span><i class="fa fa-bars" aria-hidden="true"></i></span> </div>
					<!--MOBILE MENU CONTAINER:IT'S ONLY SHOW ON MOBILE & TABLET VIEW-->
					<div class="mob-right-nav" data-wow-duration="0.5s">
						<div class="mob-right-nav-close"><i class="fa fa-times" aria-hidden="true"></i> </div>
						<h5>Business</h5>
						<ul class="mob-menu-icon">
							<li><a href="about_us.jsp">About us</a> </li>
						    <li><a href="contact_us.jsp">Contact us</a> </li>
							<li><a href="register.jsp">Register</a> </li>
							<li><a href="logoutenduser.jsp"> Logout</a> </li>
						</ul>
						
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--TOP SEARCH SECTION-->
	
	<!--SCRIPT FILES-->
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