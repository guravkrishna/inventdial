<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="images/fav.ico" type="image/x-icon">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Us</title>
</head>
<body>

<%@include file="header.jsp" %>

	<section>
		<div class="con-page">
			<div class="con-page-ri">
				<div class="con-com">
					<h4 class="con-tit-top-o" style="text-align:center">Address & Contact Info</h4>
					<p>#461, 3rd floor, 4th Main Road, Chennakeshava Nagar, Hosa Road, Parappana Agrahara, Bengaluru.</p> <span><img src="images/icon/phone.png" alt="" /> <a href="tel:08048908490">08048908490</a> </span> <span><img src="images/icon/mail.png" alt="" /><a href="http://trickyglobalsolutions.com/">Tricky Global Solutions</a></span>
					<p><div class="cpn-pag-form">
						<form>
							<h3 style="text-align:center">Support and Contact Enquiry</h3>
							<div>
								<div class="input-field col s12">
									<input id="gfc_name" type="text" class="validate" required>
									<label for="gfc_name">Name</label>
								</div>
							</div>
							<div>
								<div class="input-field col s12">
									<input id="gfc_mob" type="number" class="validate">
									<label for="gfc_mob">Mobile</label>
								</div>
							</div>
							<div>
								<div class="input-field col s12">
									<input id="gfc_mail" type="email" class="validate">
									<label for="gfc_mail">Email</label>
								</div>
							</div>
							<div>
								<div class="input-field col s12">
									<textarea id="gfc_msg" class="validate"></textarea>
									<label for="gfc_msg">Message</label>
								</div>
							</div>
							<div>
								<div class="input-field col s12">
									<input type="submit" value="SUBMIT" class="waves-effect waves-light btn-large full-btn list-red-btn"> </div>
							</div>
						</form>
					</div>
					</p>
					
					<h4 style="text-align:center">Follow us on</h4>
					<div class="share-btn">
						<ul>
							<li><a href="#"><i class="fa fa-facebook fb1"></i> Share On Facebook</a> </li>
							<li><a href="#"><i class="fa fa-twitter tw1"></i> Share On Twitter</a> </li>
							<li><a href="#"><i class="fa fa-google-plus gp1"></i> Share On Google Plus</a> </li>
						</ul>
					</div>
				</div>
				<div class="con-com con-pag-map con-com-mar-bot-o">
					<h4 class="con-tit-top-o" style="text-align:center">Touch with us</h4>
					<p>#461, 3rd floor, 4th Main Road, Chennakeshava Nagar, Hosa Road, Parappana Agrahara, Bengaluru.</p>
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3889.551165342294!2d77.65270761442255!3d12.87224059092116!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae6ca9c77438d3%3A0x258146333ae679b5!2sTricky+Global+Solutions+Pvt.+Ltd.!5e0!3m2!1sen!2sin!4v1530338557707" width="256" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
						<i class="fa fa-map-marker contact_widget_address_icon"></i>4th Floor, Office 387<br><a href="https://www.google.com/maps/place/Tricky+Global+Solutions+Pvt.+Ltd./@12.872241,77.654896,15z/data=!4m5!3m4!1s0x0:0x258146333ae679b5!8m2!3d12.8722406!4d77.6548963?hl=en-US" class="listing-address-directions" target="_blank">Get Direction<i class="fa fa-angle-right"></i></a>
				</div>
			</div>
		</div>
	</section>
	

<%@include file="footer.html"%>

</body>
</html>