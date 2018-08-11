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
	
	<%String subcategory=(String)session.getAttribute("subcategory");
	System.out.println(subcategory);%>
	
	<section class="tz-register">
			<div class="log-in-pop">
			 <div class="log-in-pop-left"> 
			  <img src="images/login.jpg" style="width:240px;height:409px;"">
			  </div>
				<div class="log-in-pop-right">
					<a href="#" class="pop-close" data-dismiss="modal"><img src="images/cancel.html" alt="" />
					</a>
					<h4>Create An Account</h4>
					<p>Please Register To Get Accurate Information</p>
					<form class="s12" action="./EndUserRegister" method="post">
						<div>
							<div class="input-field s12">
								<input type="hidden"  name="subcategory" class="validate" value='<%=subcategory %>' readonly required >
								
							</div>
						</div>
						<div>
							<div class="input-field s12">
								<input type="text"  name="fname" class="validate" required oninput="this.value = this.value.replace(/[^a-zA-Z.]/g, '').replace(/(\..*)\./g,'$1');" required  Maxlength="20" minlength="3" title="enter  valid name" >
								<label>First name <span style="color:red">*</span></label>
							</div>
						</div>
							<div>
							<div class="input-field s12">
								<input type="text"  name="lname" class="validate" required oninput="this.value = this.value.replace(/[^a-zA-Z.]/g, '').replace(/(\..*)\./g,'$1');" required  Maxlength="20" minlength="3" title="enter  valid name" >
								<label>Last name <span style="color:red">*</span></label>
							</div>
						</div>
							<div>
							<div class="input-field s12">
								<input type="text" name="contact" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"  pattern="[6789][0-9]{9}" Maxlength="10" minlength="10" class="validate" required/>
 								<label>Contact Number<span style="color:red">*</span></label>
							</div>
						</div>
						<div>
							<div class="input-field s12">
								<input type="email" class="validate" name="endemail" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$">
								<label>Email id</label>
							</div>
						</div>
						<div>
							<div class="input-field s12">
								<input type="password"  name="password" id="password" oncopy="return false" onkeyup='check();' onpaste="return false" minlength="4" maxlength="8" title="4 to 8 characters" required>
								<label>Password<span style="color:red">*</span></label>
							</div>
						</div>
						<div>
							<div class="input-field s12">
								<input type="password" name="confirmpass" id="confirm_password" oncopy="return false" onpaste="return false"  onkeyup='check();' minlength="4" maxlength="8" title="4 to 8 characters" required>
								<label>Confirm password<span style="color:red">*</span></label>
								<span id='message'></span>
							</div>
						</div>
						<div>
							<div class="input-field s4">
								<input type="submit" value="Register" class=" log-in-btn"> </div>
								<p><span style="color:red">*</span> represents mandatory.</p>
						</div>
						<div>
							<div class="input-field s12"> <a href="EndUserLogin.jsp">Already Have An Account ?<span style="color:red">Click to Login</span></a></div>
						</div>
					</form>
				</div>
			</div>
	</section>
	<script>
	var check = function() {
		  if (document.getElementById('password').value ==
		    document.getElementById('confirm_password').value) {
		    document.getElementById('message').style.color = 'green';
		    document.getElementById('message').innerHTML = 'matching';
		  } else {
		    document.getElementById('message').style.color = 'red';
		    document.getElementById('message').innerHTML = 'not matching';
		  }
		}
	</script>
	<!-- <!--MOBILE APP-->
	
		<!-- GET QUOTES Popup END -->
	<%@ include file="footer.html"%>
</body>


<!-- Mirrored from rn53themes.net/themes/demo/directory/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 02 Jul 2018 05:07:43 GMT -->
</html>