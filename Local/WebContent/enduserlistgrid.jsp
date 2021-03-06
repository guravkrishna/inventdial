<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="images/fav.ico" type="image/x-icon">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Business Details</title>
   
</head>
<body>

	<%@include file="enduserheader.jsp" %>
<!--  -->	
  <section>
		<div class="v3-list-ql">
			<div class="container">
				<div class="row">
					<div class="v3-list-ql-inn">
						<ul>
							<li class="active"><a href="#ld-abour"><i class="fa fa-user"></i> About</a>
							</li>
							<li><a href="#ld-ser"><i class="fa fa-cog"></i> Services</a>
							</li>
							<li><a href="#ld-gal"><i class="fa fa-photo"></i> Gallery</a>
							</li>
							<!-- <li><a href="#ld-roo"><i class="fa fa-ticket"></i> Room Booking</a>
							</li> -->
							<!-- <li><a href="#ld-vie"><i class="fa fa-street-view"></i> 360 View</a>
							</li> -->
							<li><a href="#ld-rew"><i class="fa fa-edit"></i> Write Review</a>
							</li>
							<li><a href="#ld-rer"><i class="fa fa-star-half-o"></i> User Review</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--LISTING DETAILS-->
	
	
	
	<%-- 
	
	<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String email=request.getParameter("email");
System.out.println(email);
String title=request.getParameter("BusinessTitle");
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
%> --%>


<table border="1">

<%
/* String email=request.getParameter("email");
System.out.println(email); */
String title=request.getParameter("BusinessTitle");

System.out.println(title);
session.setAttribute("title", title);
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from listing l join category c on l.contact = c.contact where c.BusinessTitle='"+title+"'";
System.out.println(sql);
resultSet = statement.executeQuery(sql);
if(resultSet.next()){
%>
	
	<section class="pg-list-1" style="background:url(uploadimg/<%=resultSet.getString("coverimg") %>">
		<div class="container">
			<div class="row">
					<h1 style="color:white"><%=resultSet.getString("BusinessTitle") %></h1>
				<div class="pg-list-1-left"> <a href="#"></a><br>
					<div class="list-rat-ch"> <span>5.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> </div>
					
					<h4><%=resultSet.getString("city") %></h4>
					<p><b>Address:</b><h2 style="color:white"><%=resultSet.getString("address") %></h2>
					
					
					<div class="list-number pag-p1-phone">
						<ul>
							<li><i class="fa fa-phone" aria-hidden="true"></i><a href="tel:<%=resultSet.getString("contact") %>"></a><h4><%=resultSet.getString("contact") %></h4></li>
<%-- 							<li><i class="fa fa-envelope" aria-hidden="true"></i><a href="mailto:<%=resultSet.getString("email") %> " ></a><h4><%=resultSet.getString("email") %></h4></li>
 --%>							<li><i class="fa fa-user" aria-hidden="true"></i><h4><%=resultSet.getString("fname") %> <%=resultSet.getString("lname") %></h4></li>
						</ul>
					</div>
				</div>
				<div class="pg-list-1-right">
					<div class="list-enqu-btn pg-list-1-right-p1">
						<ul>
							<li><a href="#ld-rew"><i class="fa fa-star-o" aria-hidden="true"></i> Write Review</a> </li>
							<li><a href="#"><i class="fa fa-commenting-o" aria-hidden="true"></i> Send SMS</a> </li>
							<li><a href="tel:<%=resultSet.getString("contact") %>"><i class="fa fa-phone" aria-hidden="true"></i> Call Now</a> </li>
							<li><a href="#" data-dismiss="modal" data-toggle="modal" data-target="#list-quo"><i class="fa fa-usd" aria-hidden="true"></i> Get Quotes</a> </li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	
	
	
	
	
	
	<tbody>
	
<%-- <tr>
<td><%=resultSet.getString(2) %></td>
<td><%=resultSet.getString(13) %></td>
<td><%=resultSet.getString(5) %></td>
<td><%=resultSet.getString(6) %></td>
<td><%=resultSet.getString(3) %><%=resultSet.getString(4) %></td>
<td><%=resultSet.getString() %></td>
</tr> --%>

</table>

	<section class="list-pg-bg">
		<div class="container">
			<div class="row">
				<div class="com-padd">
					<div class="list-pg-lt list-page-com-p">
						<!--LISTING DETAILS: LEFT PART 1-->
						<div class="pglist-p1 pglist-bg pglist-p-com" id="ld-abour">
							<div class="pglist-p-com-ti">
								<h3><span>About</span><%=resultSet.getString("BusinessTitle") %></h3></div>
							<div class="list-pg-inn-sp">
								<div class="share-btn">
									<ul>
									<!-- <iframe src="https://www.facebook.com/plugins/share_button.php?href=http%3A%2F%2Flocalhost%3A8050%2FLocal%2Flisting-details.jsp&layout=button_count&size=small&mobile_iframe=true&width=69&height=20&appId" width="69" height="20" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe>
									 -->	<li><a href="https://www.facebook.com/sharer/sharer.php?u=&t=" title="Share on Facebook" target="_blank" onclick="window.open('https://www.facebook.com/sharer/sharer.php?u=' + encodeURIComponent(document.URL) + '&t=' + encodeURIComponent(document.URL)); return false;""><i class="fa fa-facebook fb1"></i> Share On Facebook</a> </li>
										<li><a href="https://twitter.com/intent/tweet?" target="_blank" title="Tweet" onclick="window.open('https://twitter.com/intent/tweet?text=%20Check%20up%20this%20awesome%20content' + encodeURIComponent(document.title) + ':%20 ' + encodeURIComponent(document.URL)); return false;"><i class="fa fa-twitter tw1"></i> Share On Twitter</a> </li>
										<li><a href="https://plus.google.com/share?url=" target="_blank" title="Share on Google+" onclick="window.open('https://plus.google.com/share?url=' + encodeURIComponent(document.URL)); return false;"><i class="fa fa-google-plus gp1"></i> Share On Google Plus</a> </li>
									 </ul>
								</div>
								
								<td></td>
								<p><%=resultSet.getString("content") %></p>
								<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.</p>
							</div>
						</div>
						
						
						
						</tbody>
						<!--END LISTING DETAILS: LEFT PART 1-->
						<!--LISTING DETAILS: LEFT PART 2-->
						<div class="pglist-p2 pglist-bg pglist-p-com" id="ld-ser">
							<div class="pglist-p-com-ti">
								<h3><span>Services</span> Offered </h3> </div>
							<div class="list-pg-inn-sp">
									<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.</p>
							<div class="row pg-list-ser">
									<ul>
										<li class="col-md-4">
											<div class="pg-list-ser-p1"><img src="uploadimg/<%=resultSet.getString("gimg") %>" alt="" style="width:200px;height:200px;"/> </div>
											<!-- <div class="pg-list-ser-p2">
												 </div> -->
										</li>
										<li class="col-md-4">
											<div class="pg-list-ser-p1"><img src="uploadimg/<%=resultSet.getString(22) %>" alt="" style="width:200px;height:200px;"/> </div>
											<!-- <div class="pg-list-ser-p2">
												</div> -->
										</li>
										<li class="col-md-4">
											<div class="pg-list-ser-p1"><img src="uploadimg/<%=resultSet.getString(23) %>" alt="" style="width:200px;height:200px;"/> </div>
											<!-- <div class="pg-list-ser-p2">
												</div> -->
										</li>
										<li class="col-md-4">
											<div class="pg-list-ser-p1"><img src="uploadimg/<%=resultSet.getString(23) %>" alt="" style="width:200px;height:200px;"/> </div>
											<!-- <div class="pg-list-ser-p2">
												</div> -->
										</li>
										<li class="col-md-4">
											<div class="pg-list-ser-p1"><img src="uploadimg/<%=resultSet.getString(21) %>" alt="" style="width:200px;height:200px;"/> </div>
											<!-- <div class="pg-list-ser-p2">
												</div> -->
										</li>
										<li class="col-md-4">
											<div class="pg-list-ser-p1"><img src="uploadimg/<%=resultSet.getString(22) %>" alt="" style="width:200px;height:200px;"/> </div>
											<!-- <div class="pg-list-ser-p2">
												</div> -->
										</li>
									</ul>
								</div>
							</div>
						</div>
						<!--END LISTING DETAILS: LEFT PART 2-->
						<!--LISTING DETAILS: LEFT PART 3-->
						<div class="pglist-p3 pglist-bg pglist-p-com" id="ld-gal">
							<div class="pglist-p-com-ti">
								<h3><span>Photo</span> Gallery</h3> </div>
							<div class="list-pg-inn-sp">
								<div id="myCarousel" class="carousel slide" data-ride="carousel">
									<!-- Indicators -->
									<ol class="carousel-indicators">
										<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
										<li data-target="#myCarousel" data-slide-to="1"></li>
										<li data-target="#myCarousel" data-slide-to="2"></li>
										<li data-target="#myCarousel" data-slide-to="3"></li>
									</ol>
									<!-- Wrapper for slides -->
									<div class="carousel-inner">
										<div class="item active"> <img src="uploadimg/<%=resultSet.getString(23) %>" alt=""> </div>
										<div class="item"> <img src="uploadimg/<%=resultSet.getString(20) %>" alt=""> </div>
										<div class="item"> <img src="uploadimg/<%=resultSet.getString(21) %>" alt=""> </div>
										<div class="item"> <img src="uploadimg/<%=resultSet.getString(22) %>" alt=""> </div>
									</div>
									<!-- Left and right controls -->
									<a class="left carousel-control" href="#myCarousel" data-slide="prev"> <i class="fa fa-angle-left list-slider-nav" aria-hidden="true"></i> </a>
									<a class="right carousel-control" href="#myCarousel" data-slide="next"> <i class="fa fa-angle-right list-slider-nav list-slider-nav-rp" aria-hidden="true"></i> </a>
								</div>
							</div>
						</div>
					
						<!--END 360 DEGREE MAP: LEFT PART 8-->
						<!-- <div class="pglist-p3 pglist-bg pglist-p-com" id="ld-vie">
							<div class="pglist-p-com-ti">
								<h3><span>360 </span> Degree View</h3> </div>
							<div class="list-pg-inn-sp list-360">
								<iframe src="https://www.google.com/maps/embed?pb=!1m0!4v1497026654798!6m8!1m7!1sIId_fF3cldIAAAQ7LuSTng!2m2!1d5.553927350344909!2d-0.2005543181775732!3f189.99!4f0!5f0.7820865974627469" allowfullscreen></iframe>
							</div>
						</div> -->
						<!--END 360 DEGREE MAP: LEFT PART 8-->
						<!--LISTING DETAILS: LEFT PART 6-->
						<%String sql1 ="select * from endusersignup where contact='"+contact+"'";
						System.out.println(sql1);
						resultSet = statement.executeQuery(sql1);
						if(resultSet.next()){
						%>
						<div class="pglist-p3 pglist-bg pglist-p-com" id="ld-rew">
							<div class="pglist-p-com-ti">
								<h3><span>Write Your</span> Reviews</h3> </div>
							<div class="list-pg-inn-sp">
								<div class="list-pg-write-rev">
									<form class="col" action="InsertReview" method="post">
										<p>Writing great reviews may help others discover the places that are just apt for them. Here are a few tips to write a good review:</p>
										<!-- <div class="row">
											<div class="col s12">
												<fieldset class="rating">
													<input type="radio" id="star5" name="rating" value="5" />
													<label class="full" for="star5" title="Awesome - 5 stars"></label>
													<input type="radio" id="star4half" name="rating" value="4 and a half" />
													<label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>
													<input type="radio" id="star4" name="rating" value="4" />
													<label class="full" for="star4" title="Pretty good - 4 stars"></label>
													<input type="radio" id="star3half" name="rating" value="3 and a half" />
													<label class="half" for="star3half" title="Meh - 3.5 stars"></label>
													<input type="radio" id="star3" name="rating" value="3" />
													<label class="full" for="star3" title="Meh - 3 stars"></label>
													<input type="radio" id="star2half" name="rating" value="2 and a half" />
													<label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>
													<input type="radio" id="star2" name="rating" value="2" />
													<label class="full" for="star2" title="Kinda bad - 2 stars"></label>
													<input type="radio" id="star1half" name="rating" value="1 and a half" />
													<label class="half" for="star1half" title="Meh - 1.5 stars"></label>
													<input type="radio" id="star1" name="rating" value="1" />
													<label class="full" for="star1" title="Sucks big time - 1 star"></label>
													<input type="radio" id="starhalf" name="rating" value="half" />
													<label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>
												</fieldset>
											</div>
										</div> -->
										<div class="row">
											<div class="input-field col s6">
												<input id="re_name" type="text" name="fname" class="validate" value=<%=resultSet.getString("firstname")%> readonly>
												<label for="re_name">Full Name</label>
											</div>
											<div class="input-field col s6">
												<input id="re_mob" type="text" name="lname"class="validate" value=<%=resultSet.getString("lastname")%> readonly>
												<label for="re_mob">Last Name</label>
											</div>
										</div>
										<div class="row">
											<div class="input-field col s6">
												<input id="re_mail" type="email" name="email" class="validate" value=<%=resultSet.getString("endemail")%> readonly>
												<label for="re_mail">Email id</label>
											</div>
											<div class="input-field col s6">
												<input id="re_city" type="text" name="con" class="validate" value=<%=resultSet.getString("contact")%> readonly>
												<label for="re_city">Contact Number</label>
											</div>
										</div>
											<%} %>
										<div class="row">
											<div class="input-field col s12">
												<textarea id="re_msg" name="review" class="materialize-textarea"></textarea>
												<label for="re_msg">Write review</label>
											</div>
										</div>
										<%String sql2 ="select * from listing l join category c on l.contact=c.contact where c.BusinessTitle='"+title+"'";
						System.out.println(sql2);
						resultSet = statement.executeQuery(sql2);
						if(resultSet.next()){
						%>
						
						<div class="row">
											<div class="input-field col s16">
												<input type="hidden"  name="custemail" value=<%=resultSet.getString("contact")%> readonly>
												
											</div>
										</div>
										<%} %>
										<div class="row" style="width: 40%;">
											<div class="input-field col s12" style="margin-left: 200px;">
											<input type="submit" value="Submit Review" style="background-color: #4db8ff;"></div>
										</div>
									</form>
									
								</div>
							</div>
						</div>
						<!--END LISTING DETAILS: LEFT PART 6-->
						<!--LISTING DETAILS: LEFT PART 5-->
						<div class="pglist-p3 pglist-bg pglist-p-com" id="ld-rer">
							<div class="pglist-p-com-ti">
								<h3><span>User</span> Reviews</h3> </div>
							<div class="list-pg-inn-sp">
								<div class="lp-ur-all">
									<div class="lp-ur-all-left">
										<div class="lp-ur-all-left-1">
											<div class="lp-ur-all-left-11">Excellent</div>
											<div class="lp-ur-all-left-12">
												<div class="lp-ur-all-left-13"></div>
											</div>
										</div>
										<div class="lp-ur-all-left-1">
											<div class="lp-ur-all-left-11">Good</div>
											<div class="lp-ur-all-left-12">
												<div class="lp-ur-all-left-13 lp-ur-all-left-Good"></div>
											</div>
										</div>
										<div class="lp-ur-all-left-1">
											<div class="lp-ur-all-left-11">Satisfactory</div>
											<div class="lp-ur-all-left-12">
												<div class="lp-ur-all-left-13 lp-ur-all-left-satis"></div>
											</div>
										</div>
										<div class="lp-ur-all-left-1">
											<div class="lp-ur-all-left-11">Below Average</div>
											<div class="lp-ur-all-left-12">
												<div class="lp-ur-all-left-13 lp-ur-all-left-below"></div>
											</div>
										</div>
										<div class="lp-ur-all-left-1">
											<div class="lp-ur-all-left-11">Below Average</div>
											<div class="lp-ur-all-left-12">
												<div class="lp-ur-all-left-13 lp-ur-all-left-poor"></div>
											</div>
										</div>
									</div>
									<div class="lp-ur-all-right">
										<h5>Overall Ratings</h5>
										<p><span>4.5 <i class="fa fa-star" aria-hidden="true"></i></span> based on 242 reviews</p>
									</div>
								</div>
								<div class="lp-ur-all-rat">
									<h5>Reviews</h5>
									<ul>
										<li>
											<div class="lr-user-wr-img"> <img src="images/users/2.png" alt=""> </div>
											<div class="lr-user-wr-con">
												<h6>Jacob Michael <span>4.5 <i class="fa fa-star" aria-hidden="true"></i></span></h6> <span class="lr-revi-date">19th January, 2017</span>
												<p>Good service... nice and clean rooms... very good spread of buffet and friendly staffs. Located in heart of city and easy to reach any places in a short distance. </p>
												<ul>
													<li><a href="#!"><span>Like</span><i class="fa fa-thumbs-o-up" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><span>Dis-Like</span><i class="fa fa-thumbs-o-down" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><span>Report</span> <i class="fa fa-flag-o" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><span>Comments</span> <i class="fa fa-commenting-o" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><span>Share Now</span>  <i class="fa fa-facebook" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><i class="fa fa-google-plus" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><i class="fa fa-twitter" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><i class="fa fa-linkedin" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><i class="fa fa-youtube" aria-hidden="true"></i></a> </li>
												</ul>
											</div>
										</li>
										<li>
											<div class="lr-user-wr-img"> <img src="images/users/3.png" alt=""> </div>
											<div class="lr-user-wr-con">
												<h6>Gabriel Elijah <span>5.0 <i class="fa fa-star" aria-hidden="true"></i></span></h6> <span class="lr-revi-date">21th July, 2016</span>
												<p>The hotel is clean, convenient and good value for money. Staff are courteous and helpful. However, they need more training to be efficient.</p>
												<ul>
													<li><a href="#!"><span>Like</span><i class="fa fa-thumbs-o-up" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><span>Dis-Like</span><i class="fa fa-thumbs-o-down" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><span>Report</span> <i class="fa fa-flag-o" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><span>Comments</span> <i class="fa fa-commenting-o" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><span>Share Now</span>  <i class="fa fa-facebook" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><i class="fa fa-google-plus" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><i class="fa fa-twitter" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><i class="fa fa-linkedin" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><i class="fa fa-youtube" aria-hidden="true"></i></a> </li>
												</ul>
											</div>
										</li>
										<li>
											<div class="lr-user-wr-img"> <img src="images/users/4.png" alt=""> </div>
											<div class="lr-user-wr-con">
												<h6>Luke Mason <span>4.2 <i class="fa fa-star" aria-hidden="true"></i></span></h6> <span class="lr-revi-date">21th March, 2018</span>
												<p>Too much good experience with hospitality, cleanliness, facility and privacy and good value for money... To keep mind relaxing... Keep it up... </p>
												<ul>
													<li><a href="#!"><span>Like</span><i class="fa fa-thumbs-o-up" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><span>Dis-Like</span><i class="fa fa-thumbs-o-down" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><span>Report</span> <i class="fa fa-flag-o" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><span>Comments</span> <i class="fa fa-commenting-o" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><span>Share Now</span>  <i class="fa fa-facebook" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><i class="fa fa-google-plus" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><i class="fa fa-twitter" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><i class="fa fa-linkedin" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><i class="fa fa-youtube" aria-hidden="true"></i></a> </li>
												</ul>
											</div>
										</li>
										<li>
											<div class="lr-user-wr-img"> <img src="images/users/5.png" alt=""> </div>
											<div class="lr-user-wr-con">
												<h6>Kevin Jack <span>3.6 <i class="fa fa-star" aria-hidden="true"></i></span></h6> <span class="lr-revi-date">21th Aug, 2018</span>
												<p>I am deaf. Bar is closed and Restaurant is okay ... It should be more decoration as beautiful. I enjoyed swimming top floor and weather is good</p>
												<ul>
													<li><a href="#!"><span>Like</span><i class="fa fa-thumbs-o-up" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><span>Dis-Like</span><i class="fa fa-thumbs-o-down" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><span>Report</span> <i class="fa fa-flag-o" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><span>Comments</span> <i class="fa fa-commenting-o" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><span>Share Now</span>  <i class="fa fa-facebook" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><i class="fa fa-google-plus" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><i class="fa fa-twitter" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><i class="fa fa-linkedin" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><i class="fa fa-youtube" aria-hidden="true"></i></a> </li>
												</ul>
											</div>
										</li>
										<li>
											<div class="lr-user-wr-img"> <img src="images/users/6.png" alt=""> </div>
											<div class="lr-user-wr-con">
												<h6>Nicholas Tyler <span>4.4 <i class="fa fa-star" aria-hidden="true"></i></span></h6> <span class="lr-revi-date">21th Aug, 2018</span>
												<p>Overall, it was good experience. Rooms were spacious and they were kept very clean and tidy. Room service was good.</p>
												<ul>
													<li><a href="#!"><span>Like</span><i class="fa fa-thumbs-o-up" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><span>Dis-Like</span><i class="fa fa-thumbs-o-down" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><span>Report</span> <i class="fa fa-flag-o" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><span>Comments</span> <i class="fa fa-commenting-o" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><span>Share Now</span>  <i class="fa fa-facebook" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><i class="fa fa-google-plus" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><i class="fa fa-twitter" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><i class="fa fa-linkedin" aria-hidden="true"></i></a> </li>
													<li><a href="#!"><i class="fa fa-youtube" aria-hidden="true"></i></a> </li>
												</ul>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<!--END LISTING DETAILS: LEFT PART 5-->
					</div>
					<div class="list-pg-rt">
						<!--LISTING DETAILS: LEFT PART 7-->
						<div class="pglist-p3 pglist-bg pglist-p-com">
							<div class="pglist-p-com-ti pglist-p-com-ti-right">
								<h3><span>Listing</span> Guarantee</h3> </div>
							<div class="list-pg-inn-sp">
								<div class="list-pg-guar">
									<ul>
										<li>
											<div class="list-pg-guar-img"> <img src="images/icon/g1.png" alt="" /> </div>
											<h4>Service Guarantee</h4>
											<p>Upto 6 month of service</p>
										</li>
										<li>
											<div class="list-pg-guar-img"> <img src="images/icon/g2.png" alt="" /> </div>
											<h4>Professionals</h4>
											<p>100% certified professionals</p>
										</li>
										<li>
											<div class="list-pg-guar-img"> <img src="images/icon/g3.png" alt="" /> </div>
											<h4>Insurance</h4>
											<p>Upto $5,000 against damages</p>
										</li>
									</ul> <a class="waves-effect waves-light btn-large full-btn list-pg-btn" href="#!" data-dismiss="modal" data-toggle="modal" data-target="#list-quo">Quick Enquiry</a> </div>
							</div>
						</div>
						<!--END LISTING DETAILS: LEFT PART 7-->
						<!--LISTING DETAILS: LEFT PART 7-->
						<div class="pglist-p3 pglist-bg pglist-p-com">
							<div class="pg-list-user-pro"> <img src="images/users/8.png" alt=""> </div>
							<div class="list-pg-inn-sp">
								<div class="list-pg-upro">
									<h5>Year Of Establishment</h5>
									<p><%=resultSet.getString("year") %></p> <a class="waves-effect waves-light btn-large full-btn list-pg-btn" href="tel:<%=resultSet.getString(5) %>">Contact User</a> </div>
							</div>
						</div>
						<!--END LISTING DETAILS: LEFT PART 7-->
						<!--LISTING DETAILS: LEFT PART 8-->
						<div class="pglist-p3 pglist-bg pglist-p-com">
							<div class="pglist-p-com-ti pglist-p-com-ti-right">
								<h3><span>Our</span> Location</h3> </div>
							<div class="list-pg-inn-sp">
								<div class="list-pg-map">
									<!-- <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6290413.804893654!2d-93.99620524741552!3d39.66116578737809!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x880b2d386f6e2619%3A0x7f15825064115956!2sIllinois%2C+USA!5e0!3m2!1sen!2sin!4v1469954001005" allowfullscreen></iframe>
								 -->
								 <%=resultSet.getString("map") %>
								 </div>
							</div>
						</div>
						<!--END LISTING DETAILS: LEFT PART 8-->
						<!--LISTING DETAILS: LEFT PART 9-->
						<div class="pglist-p3 pglist-bg pglist-p-com">
							<div class="pglist-p-com-ti pglist-p-com-ti-right">
								<h3><span>Other</span> Informations</h3> </div>
							<div class="list-pg-inn-sp">
								<div class="list-pg-oth-info">
									<ul>
										<li>Today Shop <span class="green-bg"><%=resultSet.getString("day") %></span> </li>
										<li>Experience <span>16</span> </li>
										<li>Parking <span>yes</span> </li>
										<li>Smoking <span>yes</span> </li>
										<li>Pool Table <span>yes</span> </li>
										<li>Take Out <span>yes</span> </li>
										<li>Good for Groups <span>yes</span> </li>
										<li>Accepts All Cards <span>yes</span> </li>
										<li>Open Time <span><%=resultSet.getString("open") %></span> </li>
										<li>Close Time <span><%=resultSet.getString("close") %></span> </li>
									</ul>
								</div>
							</div>
						</div>
						<!--END LISTING DETAILS: LEFT PART 9-->
						<!--LISTING DETAILS: LEFT PART 10-->
						<div class="list-mig-like">
							<div class="list-ri-spec-tit">
								<h3><span>You might</span> like this</h3> </div>
							<a href="#!">
								<div class="list-mig-like-com">
									<div class="list-mig-lc-img"> <img src="images/listing/1.jpg" alt="" /> <span class="home-list-pop-rat list-mi-pr">$720</span> </div>
									<div class="list-mig-lc-con">
										<div class="list-rat-ch list-room-rati"> <span>4.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
										<h5>Holiday Inn Express</h5>
										<p>Illinois City,</p>
									</div>
								</div>
							</a>
							<a href="#!">
								<div class="list-mig-like-com">
									<div class="list-mig-lc-img"> <img src="images/listing/2.jpg" alt="" /> <span class="home-list-pop-rat list-mi-pr">$420</span> </div>
									<div class="list-mig-lc-con">
										<div class="list-rat-ch list-room-rati"> <span>3.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
										<h5>InterContinental</h5>
										<p>Illinois City,</p>
									</div>
								</div>
							</a>
							<a href="#!">
								<div class="list-mig-like-com">
									<div class="list-mig-lc-img"> <img src="images/listing/3.jpg" alt="" /> <span class="home-list-pop-rat list-mi-pr">$380</span> </div>
									<div class="list-mig-lc-con">
										<div class="list-rat-ch list-room-rati"> <span>5.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> </div>
										<h5>Staybridger Suites</h5>
										<p>Illinois City,</p>
									</div>
								</div>
							</a>
						</div>
						<!--END LISTING DETAILS: LEFT PART 10-->
					</div>
				</div>
			</div>
		</div>
	</section>
	<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
	<!--MOBILE APP-->
	<%@include file="footer.html" %>
	<!--QUOTS POPUP-->
	<section>
		<!-- GET QUOTES POPUP -->
		<div class="modal fade dir-pop-com" id="list-quo" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header dir-pop-head">
						<button type="button" class="close" data-dismiss="modal">�</button>
						<h4 class="modal-title">Get a Quotes</h4>
						<!--<i class="fa fa-pencil dir-pop-head-icon" aria-hidden="true"></i>-->
					</div>
					<div class="modal-body dir-pop-body">
						<form method="post" class="form-horizontal">
							<!--LISTING INFORMATION-->
							<div class="form-group has-feedback ak-field">
								<label class="col-md-4 control-label">Full Name *</label>
								<div class="col-md-8">
									<input type="text" class="form-control" name="fname" placeholder="" required> </div>
							</div>
							<!--LISTING INFORMATION-->
							<div class="form-group has-feedback ak-field">
								<label class="col-md-4 control-label">Mobile</label>
								<div class="col-md-8">
									<input type="text" class="form-control" name="mobile" placeholder=""> </div>
							</div>
							<!--LISTING INFORMATION-->
							<div class="form-group has-feedback ak-field">
								<label class="col-md-4 control-label">Email</label>
								<div class="col-md-8">
									<input type="text" class="form-control" name="email" placeholder=""> </div>
							</div>
							<!--LISTING INFORMATION-->
							<div class="form-group has-feedback ak-field">
								<label class="col-md-4 control-label">Message</label>
								<div class="col-md-8 get-quo">
									<textarea class="form-control"></textarea>
								</div>
							</div>
							<!--LISTING INFORMATION-->
							<div class="form-group has-feedback ak-field">
								<div class="col-md-6 col-md-offset-4">
									<input type="submit" value="SUBMIT" class="pop-btn"> </div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- GET QUOTES Popup END -->
	</section>
		
<!--  -->
</body>
</html>