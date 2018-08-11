<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="images/fav.ico" type="image/x-icon">
<script type="text/javascript">
	  history.pushState(null,null,'admin_login');
	  window.addEventListener('popstate',function(event){
	  history.pushState(null,null,'admin_login');
	  });
	</script>
</head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login</title>
<body>

<%@include file="header.jsp" %>


	<section class="tz-register">
			<div class="log-in-pop">
				<!-- <div class="log-in-pop-left">
					<h1>Hello... <span>{{ name1 }}</span></h1>
					<p>Don't have an account? Create your account. It's take less then a minutes</p>
					<h4>Login with social media</h4>
					<ul>
						<li><a href="#"><i class="fa fa-facebook"></i> Facebook</a>
						</li>
						<li><a href="#"><i class="fa fa-google"></i> Google+</a>
						</li>
						<li><a href="#"><i class="fa fa-twitter"></i> Twitter</a>
						</li>
					</ul>
				</div> -->
				<div class="log-in-pop-right">
					<a href="#" class="pop-close" data-dismiss="modal"><img src="images/cancel.html" alt="" />
					</a>
					<h4>Admin Login</h4>
					<!-- <p>Don't have an account? Create your account. It's take less then a minutes</p> -->
					<form class="s12" action="LoginServlet" method="post">
						<div>
							<div class="input-field s12">
								<input type="email" name="uname" data-ng-model="name1" title="Enter Correct User name" class="validate" required>
								<label>User name</label>
							</div>
						</div>
						<div>
							<div class="input-field s12">
								<input type="password" name="pwd" class="validate" required>
								<label>Password</label>
							</div>
						</div>
						<div>
							<div class="input-field s4">
								<input type="submit" value="Login" class="waves-effect waves-light log-in-btn"> </div>
						</div>
						<!-- <div>
							<div class="input-field s12"><a href="forgot-pass.html">Forgot password</a></div>| <a href="register.html">Create a new account</a>  
						</div> -->
					</form>
				</div>
			</div>
	</section>
	<!--MOBILE APP-->


<%@include file="footer.html" %>

</body>
</html>