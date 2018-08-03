<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">

history.pushState(null,null,'Useradmin.jsp');
window.addEventListener('popstate',function(event){
history.pushState(null,null,'Useradmin.jsp');
});

</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@include file="user_header.jsp" %>
			<!--== BODY INNER CONTAINER ==-->
		
			 <div class="sb2-2">
				<!-- == breadcrumbs == -->
				<div class="sb2-2-2">
					<ul>
						<li><a href="main.jsp"><i class="fa fa-home" aria-hidden="true"></i> Home</a> </li>
						<li class="active-bre"><a href="#"> Dashboard</a> </li>
						<li class="page-back"><a href="main.jsp"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
				<div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
						
						<h4>Manage Booking</h4>
					<div class="tz-2-main-com">
						<div class="tz-2-main-1">
							<div class="tz-2-main-2"> <img src="images/icon/d1.png" alt="" /><span>All Listings</span>
								<p>All the Lorem Ipsum generators on the</p>
								<h2>04</h2> </div>
						</div>
						<div class="tz-2-main-1">
							<div class="tz-2-main-2"> <img src="images/icon/d2.png" alt="" /><span>Review</span>
								<p>All the Lorem Ipsum generators on the</p>
								<h2>69</h2> </div>
						</div>
						<div class="tz-2-main-1">
							<div class="tz-2-main-2"> <img src="images/icon/d3.png" alt="" /><span>Messages</span>
								<p>All the Lorem Ipsum generators on the</p>
								<h2>53</h2> </div>
						</div>
					</div>
						<div class="split-row">
							<!-- == Country Campaigns == -->
								<div class="db-list-com tz-db-table">
						<div class="ds-boar-title">
							<h2>Listings</h2>
							<p>All the Lorem Ipsum generators on the All the Lorem Ipsum generators on the</p>
						</div>
						<table class="responsive-table bordered">
							<thead>
								<tr>
									<th>Listing Name</th>
									<th>Date</th>
									<th>Rating</th>
									<th>Status</th>
									<th>Edit</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Taj Luxury Hotel & Resorts</td>
									<td>12 May 2017</td>
									<td><span class="db-list-rat">4.2</span>
									</td>
									<td><span class="db-list-ststus">Active</span>
									</td>
									<td><a href="db-listing-edit.html" class="db-list-edit">Edit</a>
									</td>
								</tr>
								<tr>
									<td>Joney Health and Fitness</td>
									<td>12 May 2017</td>
									<td><span class="db-list-rat">3.4</span>
									</td>
									<td><span class="db-list-ststus-na">Non-Active</span>
									</td>
									<td><a href="db-listing-edit.html" class="db-list-edit">Edit</a>
									</td>
								</tr>
								<tr>
									<td>Effi Furniture Dealers</td>
									<td>12 May 2017</td>
									<td><span class="db-list-rat">5.0</span>
									</td>
									<td><span class="db-list-ststus-na">Non-Active</span>
									</td>
									<td><a href="db-listing-edit.html" class="db-list-edit">Edit</a>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="db-list-com tz-db-table">
						<div class="ds-boar-title">
							<h2>Payment & analytics</h2>
							<p>All the Lorem Ipsum generators on the All the Lorem Ipsum generators on the</p>
						</div>
						<table class="responsive-table bordered">
							<thead>
								<tr>
									<th>Listing Name</th>
									<th>Views(week)</th>
									<th>Payment</th>
									<th>Listing Type</th>
									<th>Make Payment</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Taj Luxury Hotel & Resorts</td>
									<td>142</td>
									<td><span class="db-list-rat">Done</span>
									</td>
									<td><span class="db-list-ststus">Premium</span>
									</td>
									<td><a href="db-payment.html" class="db-list-edit">Payment</a>
									</td>
								</tr>
								<tr>
									<td>Joney Health and Fitness</td>
									<td>53</td>
									<td><span class="db-list-rat">Done</span>
									</td>
									<td><span class="db-list-ststus-na">Free</span>
									</td>
									<td><a href="db-payment.html" class="db-list-edit">Payment</a>
									</td>
								</tr>
								<tr>
									<td>Effi Furniture Dealers</td>
									<td>76</td>
									<td><span class="db-list-ststus-na">No</span>
									</td>
									<td><span class="db-list-ststus-na">Free</span>
									</td>
									<td><a href="db-payment.html" class="db-list-edit">Payment</a>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="db-list-com tz-db-table">
						<div class="ds-boar-title">
							<h2>Messages</h2>
							<p>All the Lorem Ipsum generators on the All the Lorem Ipsum generators on the</p>
						</div>
						<div class="tz-mess">
							<ul>
								<li class="view-msg">
									<h5><img src="images/users/1.png" alt="" />Listing Enquiry <span class="tz-msg-un-read">unread</span></h5>
									<p>Nulla egestas leo elit, eu sollicitudin diam suscipit non. Nunc imperdiet hendrerit mi, mollis sagittis risus accumsan ac.</p>
									<div class="hid-msg"><a href="#"><i class="fa fa-eye" title="view"></i></a><a href="#"><i class="fa fa-trash" title="delete"></i></a>
									</div>
								</li>
								<li class="view-msg">
									<h5><img src="images/users/4.png" alt="" />Request for meet <span class="tz-msg-read">unread</span></h5>
									<p>Duis nulla ligula, interdum porta nulla sed, efficitur tempus lacus. Quisque facilisis, sapien tempor mollis sollicitudin, urna ligula vulputate nulla, rhoncus faucibus justo mauris eget elit.Pellentesque eget pellentesque dolor.</p>
									<div class="hid-msg"><a href="#"><i class="fa fa-eye" title="view"></i></a><a href="#"><i class="fa fa-trash" title="delete"></i></a>
									</div>
								</li>
							</ul>
						</div>
					</div>
					<div class="db-list-com tz-db-table">
						<div class="ds-boar-title">
							<h2>Reviews</h2>
							<p>All the Lorem Ipsum generators on the All the Lorem Ipsum generators on the</p>
						</div>
						<div class="tz-mess">
							<ul>
								<li class="view-msg">
									<h5><img src="images/users/1.png" alt="" />Jessica <span class="tz-revi-star"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-half-o"></i></span></h5>
									<p>Cras viverra ligula ut sem tincidunt, et volutpat dui facilisis. Nulla congue arcu vitae lectus cursus finibus. Pellentesque consequat ante eu elit tincidunt pharetra.</p>
									<div class="hid-msg"><a href="#!"><i class="fa fa-check" title="approve this review"></i></a><a href="#!"><i class="fa fa-edit" title="edit"></i></a><a href="#!"><i class="fa fa-trash" title="delete"></i></a><a href="#!"><i class="fa fa-reply edit-replay" title="replay"></i></a>
										<form class="col s12 hide-box">
											<div class="">
												<div class="input-field col s12">
													<textarea class="materialize-textarea"></textarea>
													<label>Write your replay</label>
												</div>
												<div class="input-field col s12">
													<input type="submit" value="Submit" class="waves-effect waves-light btn-large"> </div>
											</div>
										</form>
									</div>
								</li>
								<li class="view-msg">
									<h5><img src="images/users/1.png" alt="" />	Christopher <span class="tz-revi-star"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-half-o"></i></span></h5>
									<p>Duis nulla ligula, interdum porta nulla sed, efficitur tempus lacus. Quisque facilisis, sapien tempor mollis sollicitudin, urna ligula vulputate nulla, rhoncus faucibus justo mauris eget elit.Pellentesque eget pellentesque dolor.</p>
									<div class="hid-msg"><a href="#!"><i class="fa fa-check" title="approve this review"></i></a><a href="#!"><i class="fa fa-edit" title="edit"></i></a><a href="#!"><i class="fa fa-trash" title="delete"></i></a><a href="#!"><i class="fa fa-reply edit-replay" title="replay"></i></a>
										<form class="col s12 hide-box">
											<div class="">
												<div class="input-field col s12">
													<textarea class="materialize-textarea"></textarea>
													<label>Write your replay</label>
												</div>
												<div class="input-field col s12">
													<input type="submit" value="Submit" class="waves-effect waves-light btn-large"> </div>
											</div>
										</form>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			
			</div>
		</div>
		
			
	<%@include file="user_footer.html" %>
</body>

</html>