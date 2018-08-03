<%--  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<head>
	<title>World Best Local Directory Website template</title>
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
	
</head>

<body>
<%@include file="user_header.jsp" %>
<%
try{ 
	connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="SELECT * from endusersignup";
System.out.println(sql);
resultSet = statement.executeQuery(sql);
 %>
	
	<!--== MAIN CONTRAINER ==-->
	
	<!--== BODY CONTNAINER ==-->
	
			<!--== BODY INNER CONTAINER ==-->
			<div class="sb2-2">
				<!--== breadcrumbs ==-->
				<div class="sb2-2-2">
					<ul>
						<li><a href="main.jsp"><i class="fa fa-home" aria-hidden="true"></i> Home</a> </li>
						<li class="active-bre"><a href="#">Visitors</a> </li>
						<li class="page-back"><a href="Useradmin.jsp"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
				<div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
						<h4>Visitors</h4> <a class="dropdown-button drop-down-meta drop-down-meta-inn" href="#" data-activates="dr-list"><i class="material-icons">more_vert</i></a>
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
										<div class="table-responsive table-desi">
											<table class="table table-hover">
												<thead>
												
													 <tr>
														<th>First Name</th>
														<th>Last Name</th>
														<th>Contact Number</th>
														<th>Email ID</th>
														<th>Select</th>
														
													</tr> 
												</thead>
												<tbody>
													<% while(resultSet.next()){%>
													
													<tr>
													
													
														<!-- <td><span class="list-img"><img src="images/sm/1.png" alt=""></span> </td> -->
														
   
  
														<td><span class="list-enq-name"><%=resultSet.getString("firstname") %></span> 
														 </td>
														 <td><span class="list-enq-name"><%=resultSet.getString("lastname") %></span>
														 </td>
														 
														 <td><span class="list-enq-name"><%=resultSet.getString("contact") %></span>
														 </td>
														  <td><span class="list-enq-name"><%=resultSet.getString("email") %></span>
														 </td>
														  <td>
															<input type="checkbox" class="filled-in" id="filled-in-box-1" />
															<label for="filled-in-box-1"></label>
														</td> 
														
 
														  
 </tr>
												
													<% 
}

													}
													catch (Exception e) {
													e.printStackTrace();
													}
													
													%>
												</tbody>
											</table>
												
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
</body>


<!-- Mirrored from rn53themes.net/themes/demo/directory/admin-social-media.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 02 Jul 2018 05:19:06 GMT -->
</html>  --%>



  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/multiselect.css" rel="stylesheet"/>
<script src="js/multiselect.min.js"></script>

	
</head>

<body>
<%-- <%@include file="user_header.jsp" %> --%> 
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

			<!--== BODY INNER CONTAINER ==-->
		<!-- 	<div class="sb2-2">
				== breadcrumbs ==
				<div class="sb2-2-2">
					<ul>
						<li><a href="main.jsp"><i class="fa fa-home" aria-hidden="true"></i> Home</a> </li>
						<li class="active-bre"><a href="#"> Add Details</a> </li>
						<li class="page-back"><a href="adminpaidlisting.jsp"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
				<div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
						<h4>Add Details</h4> 
						Dropdown Structure
						<div class="split-row">
							<div class="col-md-12">
								<div class="box-inn-sp ad-inn-page">
									<div class="tab-inn ad-tab-inn">
						<div class="hom-cre-acc-left hom-cre-acc-right">
							<div class=""> -->
							 <div style="margin-left: 500px;padding-top: 100px;"> 
								<form class="" action="SendMsgToAll.jsp" method="">
							
								<%
								 String subcategory=request.getParameter("subcategory");
								System.out.println(subcategory); 
try{ 
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select contact from endusersignup e join  category c on e.subcategory=c.subcategory where e.subcategory='"+subcategory+"'";
System.out.println(sql);
resultSet = statement.executeQuery(sql);%>
								
						 
						 	
											  <select id='testSelect1' name="contacts" multiple>
											
												  
												 <%  while(resultSet.next()){ %>
											
											  <option value="<%= resultSet.getString("contact")%>"> <%= resultSet.getString("contact")%> </option>
                                  <% } %>
        </select>
  
         
	<script>
	document.multiselect('#testSelect1');
</script>	
                           
                         
								<br>
						<input type="text" name="msg" placeholder="message">
	
						 	<br>
									<br>
									<div class="row">
										 <div class="input-field col s12 v2-mar-top-40"><input type="submit" value="Send Message"></div>
										
 									
 </div> 
 
 
    
                                <%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
	
						 	

								</form>
								</div>
								
								<%
								 String subcategory1=request.getParameter("subcategory");
								System.out.println(subcategory1); 
try{ 
	connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from endusersignup e join  category c on e.subcategory=c.subcategory where e.subcategory='"+subcategory1+"'";
System.out.println(sql);
resultSet = statement.executeQuery(sql);
 %>
								<div style="margin-left: 50px;padding-top: 10px;">
						 	<h1>All Visitors</h1>
						 	<table>
												<thead>
												
													 <tr>
														<th>First Name</th>
														<th>Last Name</th>
														<th>Contact Number</th>
														<th>Email ID</th>
														<th>Business Name</th>
														<!-- <th>Select</th> -->
														
													</tr> 
												</thead>
												<tbody>
													<% while(resultSet.next()){%>
													
													<tr>
													
													
														<!-- <td><span class="list-img"><img src="images/sm/1.png" alt=""></span> </td> -->
														
   
  
														<td><span class="list-enq-name"><%=resultSet.getString("firstname") %></span> 
														 </td>
														 <td><span class="list-enq-name"><%=resultSet.getString("lastname") %></span>
														 </td>
														 
														 <td><span class="list-enq-name"><%=resultSet.getString("contact") %></span>
														 </td>
														  <td><span class="list-enq-name"><%=resultSet.getString("email") %></span>
														 </td>
														 </td>
														  <td><span class="list-enq-name"><%=resultSet.getString("BusinessTitle") %></span>
														 </td>
														
 
														  
 </tr>
												
													<% 
}

													}
													catch (Exception e) {
													e.printStackTrace();
													}
													
													%>
												</tbody>
											</table>
						 	</div>
					

	<!--== BOTTOM FLOAT ICON ==-->
	<%-- <%@include file="Admin_footer.html" %> --%>
	<!--SCRIPT FILES-->
	<!-- <script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.js" type="text/javascript"></script>
	<script src="js/materialize.min.js" type="text/javascript"></script>
	<script src="js/custom.js"></script> -->
</body>
</html> 

 