<!DOCTYPE html>
<html lang="en">
<head>
<script type="text/javascript">
history.pushState(null,null,'EndUserRegister.jsp');
window.addEventListener('popstate',function(event){
history.pushState(null,null,'EndUserRegister.jsp');
});
</script>
<title>End User Signup</title>
</head>
<body>

	<%@include file="header.jsp" %>
	
	<section class="tz-register">
			<div class="log-in-pop">
			<!--  	<div class="log-in-pop-left">
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
				</div>-->
				<div class="log-in-pop-right">
					<a href="#" class="pop-close" data-dismiss="modal"><img src="images/cancel.html" alt="" />
					</a>
					<h4>Create An Account</h4>
					<p>Please Register To Get Accurate Information</p>
					<form class="s12" action="./EndUserRegister" method="post">
						<div>
							<div class="input-field s12">
								<input type="text"  class="validate" name="fname" pattern="[a-zA-Z]+" required>
								<label>First name <span style="color:red">*</span></label>
							</div>
						</div>
							<div>
							<div class="input-field s12">
								<input type="text"  name="lname" class="validate"   pattern="[a-zA-Z]+"  required>
								<label>Last name <span style="color:red">*</span></label>
							</div>
						</div>
							<div>
							<div class="input-field s12">
								<input type="text" name="con" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"  maxlength="10" class="validate" required/>
 								<label>Contact Number <span style="color:red">*</span></label>
							</div>
						</div>
						<div>
							<div class="input-field s4">
								<input type="submit" value="Register" class="waves-effect waves-light log-in-btn"> </div>
						</div>
						<div>
							<div class="input-field s12"> <a href="EndUserLogin.jsp">Already Have An Account ? Click To Login</a></div>
							<p><h5><span style="color:red">*</span> represents mandatory.</h5></p>
						</div>
					</form>
				</div>
			</div>
	</section>
	
	<!-- <!--MOBILE APP-->
	
		<!-- GET QUOTES Popup END -->
	<%@ include file="footer.html"%>
</body>


<!-- Mirrored from rn53themes.net/themes/demo/directory/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 02 Jul 2018 05:07:43 GMT -->
</html>