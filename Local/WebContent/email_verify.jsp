<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Indias Largest Local Search Engine</title>
</head>
<body>
  <%@include file="header.jsp" %>
  <%
	  String mail=request.getParameter("email"); 
	  System.out.println(mail);
	  String pass=request.getParameter("pass"); 
	  System.out.println(pass);
  %>
     <section>
		<div class="email-tem">
			<div class="email-tem-inn">
				<div class="email-tem-main">
					<div class="email-tem-head">
						<h2><img src="images/mail/letter.png" alt=""> Email Verification</h2>
					</div>
					<div class="email-tem-body">
						<h3>Congratulations!</h3>
						<p>Verify you email id variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. </p>
						<div class="email-list">
							<ul>
							
								<li><b>User Name</b>: '<%=mail %>'</li>
								<li><b>Password</b>:  '<%=pass %>'</li>
							</ul>
						</div>
						<a href="UserLogin.jsp">Verify and confirm</a>
					</div>
				</div>
				<!-- <div class="email-tem-foot">
					<h4>Stay in touch</h4>
					<ul>
						<li><a href="#"><img src="images/mail/s1.png" alt=""></a></li>
						<li><a href="#"><img src="images/mail/s2.png" alt=""></a></li>
						<li><a href="#"><img src="images/mail/s3.png" alt=""></a></li>
						<li><a href="#"><img src="images/mail/s4.png" alt=""></a></li>
						<li><a href="#"><img src="images/mail/s5.png" alt=""></a></li>
					</ul>
					<p>Email send by Rn53themes</p>
					<p>copyrights © 2017 RN53Themes.net.   All rights reserved.</p>
				</div> -->
			</div>
		</div>
	</section>
  <%@include file="footer.html" %>
</body>
</html>