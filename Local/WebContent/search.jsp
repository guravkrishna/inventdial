<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listing Management</title>
</head>
<body>


<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from rn53themes.net/themes/demo/directory/admin-all-users.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 02 Jul 2018 05:14:02 GMT -->
<head>
	<title></title>
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
	
	<style>
.button {
    background-color: #ff1a75;
    border:none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 14px;
    margin: 4px 2px;
    cursor: pointer;
}
</style>
<script type="text/javascript">
function validateForm() {
    var x = document.forms["searchform"]["searchf"].value;
    if (x=="") {
        alert("Enter ID/Name/Phone Number to search");
        return false;
    }
}
</script>
</head>

<body>
	<div id="preloader">
		<div id="status">&nbsp;</div>
	</div>
	<!--== MAIN CONTRAINER ==-->
	<div class="container-fluid sb1">
		<div class="row">
			<!--== LOGO ==-->
			<div class="col-md-2 col-sm-3 col-xs-6 sb1-1"> <a href="#" class="btn-close-menu"><i class="fa fa-times" aria-hidden="true"></i></a> <a href="#" class="atab-menu"><i class="fa fa-bars tab-menu" aria-hidden="true"></i></a>
				<a href="main.html" class="logo"><img src="images/logo1.png" alt="" /> </a>
			</div>
			<!--== SEARCH ==-->
			<div class="col-md-6 col-sm-6 mob-hide">
				<form class="app-search">
					<input type="text" placeholder="Search..." class="form-control"> <a href="#"><i class="fa fa-search"></i></a> </form>
			</div>
			<!--== NOTIFICATION ==-->
			<div class="col-md-2 tab-hide">
				<div class="top-not-cen"> <a class='waves-effect btn-noti' href='#'><i class="fa fa-commenting-o" aria-hidden="true"></i><span>5</span></a> <a class='waves-effect btn-noti' href='#'><i class="fa fa-envelope-o" aria-hidden="true"></i><span>5</span></a> <a class='waves-effect btn-noti' href='#'><i class="fa fa-tag" aria-hidden="true"></i><span>5</span></a> </div>
			</div>
			<!--== MY ACCCOUNT ==-->
			<div class="col-md-2 col-sm-3 col-xs-6">
				<!-- Dropdown Trigger -->
				<a class='waves-effect dropdown-button top-user-pro' href='#' data-activates='top-menu'><img src="images/users/6.png" alt="" />My Account <i class="fa fa-angle-down" aria-hidden="true"></i> </a>
				<!-- Dropdown Structure -->
				<ul id='top-menu' class='dropdown-content top-menu-sty'>
					<li><a href="admin-setting.html" class="waves-effect"><i class="fa fa-cogs"></i>Admin Setting</a> </li>
					<li><a href="admin-analytics.html"><i class="fa fa-bar-chart"></i> Analytics</a> </li>
					<li><a href="admin-ads.html"><i class="fa fa-buysellads" aria-hidden="true"></i>Ads</a> </li>
					<li><a href="admin-payment.html"><i class="fa fa-usd" aria-hidden="true"></i> Payments</a> </li>
					<li><a href="admin-notifications.html"><i class="fa fa-bell-o"></i>Notifications</a> </li>
					<li><a href="#" class="waves-effect"><i class="fa fa-undo" aria-hidden="true"></i> Backup Data</a> </li>
					<li class="divider"></li>
					<li><a href="#" class="ho-dr-con-last waves-effect"><i class="fa fa-sign-in" aria-hidden="true"></i> Logout</a> </li>
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
						<li>
							<h5>John Smith <span> Santa Ana, CA</span></h5> </li>
						<li></li>
					</ul>
				</div>
				<!--== LEFT MENU ==-->
				<div class="sb2-13">
					<ul class="collapsible" data-collapsible="accordion">
						<li><a href="admin.html" class="menu-active"><i class="fa fa-tachometer" aria-hidden="true"></i> Dashboard</a> </li>
						<li><a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-list-ul" aria-hidden="true"></i> Listing</a>
							<div class="collapsible-body left-sub-menu">
								<ul>
									<li><a href="admin-all-listing.html">All listing</a> </li>
									<li><a href="admin-list-add.html">Add New listing</a> </li>
									<li><a href="admin-listing-category.html">All listing Categories</a> </li>
									<li><a href="admin-list-category-add.html">Add listing Categories</a> </li>
								</ul>
							</div>
						</li>
						<li><a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-user" aria-hidden="true"></i> Users</a>
							<div class="collapsible-body left-sub-menu">
								<ul>
									<li><a href="admin-all-users.html">All Users</a> </li>
									<li><a href="admin-list-users-add.html">Add New user</a> </li>
								</ul>
							</div>
						</li>
						<li><a href="admin-analytics.html"><i class="fa fa-bar-chart" aria-hidden="true"></i> Analytics</a> </li>
						<li><a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-buysellads" aria-hidden="true"></i>Ads</a>
							<div class="collapsible-body left-sub-menu">
								<ul>
									<li><a href="admin-ads.html">All Ads</a> </li>
									<li><a href="admin-ads-create.html">Create New Ads</a> </li>
								</ul>
							</div>
						</li>
						<li><a href="admin-payment.html"><i class="fa fa-usd" aria-hidden="true"></i> Payments</a> </li>
						<li><a href="admin-earnings.html"><i class="fa fa-money" aria-hidden="true"></i> Earnings</a> </li>
						<li><a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-bell-o" aria-hidden="true"></i>Notifications</a>
							<div class="collapsible-body left-sub-menu">
								<ul>
									<li><a href="admin-notifications.html">All Notifications</a> </li>
									<li><a href="admin-notifications-user-add.html">User Notifications</a> </li>
									<li><a href="admin-notifications-push-add.html">Push Notifications</a> </li>
								</ul>
							</div>
						</li>
						<li><a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-tags" aria-hidden="true"></i> List Price</a>
							<div class="collapsible-body left-sub-menu">
								<ul>
									<li><a href="admin-price.html">All List Price</a> </li>
									<li><a href="admin-price-list.html">Add New Price</a> </li>
								</ul>
							</div>
						</li>
						<li><a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-rss" aria-hidden="true"></i> Blog & Articals</a>
							<div class="collapsible-body left-sub-menu">
								<ul>
									<li><a href="admin-blog.html">All Blogs</a> </li>
									<li><a href="admin-blog-add.html">Add Blog</a> </li>
								</ul>
							</div>
						</li>
						<li><a href="admin-setting.html"><i class="fa fa-cogs" aria-hidden="true"></i> Setting</a> </li>
						<li><a href="admin-social-media.html"><i class="fa fa-plus-square-o" aria-hidden="true"></i> Social Media</a> </li>
						<li><a href="#" target="_blank"><i class="fa fa-sign-in" aria-hidden="true"></i> Login</a> </li>
					</ul>
				</div>
			</div>
			<!--== BODY INNER CONTAINER ==-->
			<div class="sb2-2">
				<!--== breadcrumbs ==-->
				<div class="sb2-2-2">
					<ul>
						<li><a href="main.html"><i class="fa fa-home" aria-hidden="true"></i> Home</a> </li>
						<li class="active-bre"><a href="#"> All Users</a> </li>
						<li class="page-back"><a href="admin.html"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
				<div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
						<h4>Listing</h4>
						
						<form action="search.jsp" name="searchform" onsubmit="return validateForm()">
						<span><input type="text" name="searchf"/></span>
						   <input type="submit" value="Search" class="button">
						</form>   
						  <!-- <a class="dropdown-button drop-down-meta drop-down-meta-inn" href="#" data-activates="dr-list"><i class="material-icons">more_vert</i></a>
						<ul id="dr-list" class="dropdown-content">
							<li><a href="#!">Add New</a> </li>
							<li><a href="#!">Edit</a> </li>
							<li><a href="#!">Update</a> </li>
							<li class="divider"></li>
							<li><a href="#!"><i class="material-icons">delete</i>Delete</a> </li>
							<li><a href="#!"><i class="material-icons">subject</i>View All</a> </li>
							<li><a href="#!"><i class="material-icons">play_for_work</i>Download</a> </li>
						</ul> -->
						<!-- Dropdown Structure -->
						<div class="split-row">
							<div class="col-md-12">
								<div class="box-inn-sp ad-inn-page">
									<div class="tab-inn ad-tab-inn">
										<div class="table-responsive">
											<table class="table table-hover">
												<thead>
													<tr>
														<th>firstname</th>
														<th>lastname</th>
														<th>contact</th>
														<th>email</th>
														<th>usertype</th>
														<th>city</th>
														<th>View</th>
														<th>Edit</th>
														<th>Delete</th>
													</tr>
												</thead>
												<tbody>
																							
													<%@page import="java.sql.DriverManager"%>
													<%@page import="java.sql.ResultSet"%>
													<%@page import="java.sql.Statement"%>
													<%@page import="java.sql.Connection"%>
													<%
													String srch = request.getParameter("search");
											        
													String driver = "com.mysql.jdbc.Driver";
													String connectionUrl = "jdbc:mysql://localhost:3306/";
													String database = "jusdial";
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
													<!DOCTYPE html>
													<html>
													<body>
													
													
													<table border="1">
													
													<%
													try{
													connection = DriverManager.getConnection(connectionUrl+database, userid, password);
													statement=connection.createStatement();
													String sql ="select * from listing l, category c where fname  like '%"+srch+"%' or lname like '%"+srch+"%' or phone like '%"+srch+"%' ";
													// select * from listing where id='"+search+"' or name like '%"+search+"%' ; 
													resultSet = statement.executeQuery(sql);
													while(resultSet.next()){
													%>
													<tr>
													<%-- <td><%=resultSet.getString("id") %></td> --%>
													<td><%=resultSet.getString("fname") %></td>
													<td><%=resultSet.getString("lname") %></td>
													<td><%=resultSet.getString("phone") %></td>
													<td><%=resultSet.getString("email") %></td>
													<td><%=resultSet.getString("package") %></td>
													<td><%=resultSet.getString("city") %></td>
													<td><a href="admin-list-view.jsp?id=<%=resultSet.getString("id") %>"><input type="submit" value="View"/></td>
													<td><a href="admin-list-edit.html"><input type="submit" value="Edit"/></td>
													<td><a href="admin-list-delete.jsp"><input type="submit" value="Delete"/></td>
													</tr>
													<%
													}
													connection.close();
													} catch (Exception e) {
													e.printStackTrace();
													}
													%>
													</table>
													</body>
													</html>
													
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div class="admin-pag-na">
									<!-- <ul class="pagination list-pagenat">
										<li class="disabled"><a href="#!!"><i class="material-icons">chevron_left</i></a> </li>
										<li class="active"><a href="#!">1</a> </li>
										<li class="waves-effect"><a href="#!">2</a> </li>
										<li class="waves-effect"><a href="#!">3</a> </li>
										<li class="waves-effect"><a href="#!">4</a> </li>
										
										<li class="waves-effect"><a href="#!"><i class="material-icons">chevron_right</i></a> </li>
									</ul> -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--== BOTTOM FLOAT ICON ==-->
	<section>
		<div class="fixed-action-btn vertical">
			<a class="btn-floating btn-large red pulse"> <i class="large material-icons">mode_edit</i> </a>
			<ul>
				<li><a class="btn-floating red"><i class="material-icons">insert_chart</i></a> </li>
				<li><a class="btn-floating yellow darken-1"><i class="material-icons">format_quote</i></a> </li>
				<li><a class="btn-floating green"><i class="material-icons">publish</i></a> </li>
				<li><a class="btn-floating blue"><i class="material-icons">attach_file</i></a> </li>
			</ul>
		</div>
	</section>
	<!--SCRIPT FILES-->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.js" type="text/javascript"></script>
	<script src="js/materialize.min.js" type="text/javascript"></script>
	<script src="js/custom.js"></script>
</body>


<!-- Mirrored from rn53themes.net/themes/demo/directory/admin-all-users.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 02 Jul 2018 05:14:02 GMT -->
</html>




</body>
</html>
