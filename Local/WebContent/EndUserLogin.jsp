<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<script src="https://apis.google.com/js/platform.js" async defer></script>
   <meta name="google-signin-client_id" content="385893468268-dh0j2ng5po7n2e0jlna70pi76htmv06a.apps.googleusercontent.com">
	
	<script type="text/javascript">
	
	history.pushState(null,null,'EndUserLogin.jsp');
	  window.addEventListener('popstate',function(event){
	  history.pushState(null,null,'EndUserLogin.jsp');
	  });
 
</script> 
<!--
 Below we include the Login Button social plugin. This button uses
 the JavaScript SDK to present a graphical Login button that triggers
 the FB.login() function when clicked.
-->
<br><br>

	<script type="text/javascript">
function password(length, special) {
  var iteration = 0;
  var password = "";
  var randomNumber;
  if(special == undefined){
      var special = false;
  }
  while(iteration < length){
    randomNumber = (Math.floor((Math.random() * 100)) % 94) + 33;
    if(!special){
      if ((randomNumber >=33) && (randomNumber <=47)) { continue; }
      if ((randomNumber >=58) && (randomNumber <=64)) { continue; }
      if ((randomNumber >=91) && (randomNumber <=96)) { continue; }
      if ((randomNumber >=123) && (randomNumber <=126)) { continue; }
    }
    iteration++;
    password += String.fromCharCode(randomNumber);
  }
  document.getElementById('pwd').innerHTML=password;
  document.getElementById("id").value=password;
 	return password;
}
</script>
</head>

<body data-ng-app="" onload="password(4)">
	
	<!--TOP SEARCH SECTION-->
	
	<%@include file="header.jsp" %>
	<section class="tz-register">
			<div class="log-in-pop">
				<!-- <div class="log-in-pop-left">
					
				</div> -->
				<div class="log-in-pop-right">
					<!-- <a href="#" class="pop-close" data-dismiss="modal"><img src="uploadimg/20.jpg"  width=320 height=240 alt="" />
					</a> -->
					<h3>Welcome To Our Website</h3></br></br>
					<h4>Please Login</h4>
					
					<!-- <p>Don't have an account? Create your account. It's take less then a minutes</p> -->
					<form class="s12" action="SendEndUserOtp.jsp" method="post">
						<div>
							<div class="input-field s12">
							<input type="hidden" name="pwd" id="pwd" for="pwd">
		
				 <input type="hidden" id="id" name="id"/>
								<input type="text" name="contact" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"  maxlength="10" class="validate" autocomplete="off" required/>
 								<label>Contact Number</label>
							</div>
						</div>
						<div>
							<div class="input-field s4">
								<input type="submit" value="Login" class="waves-effect waves-light log-in-btn">
							</div>
						</div><br>
						<h4>If Not Register Click On Register</h4>
						<div>
							<div class="input-field s12"><a href="EndUserRegister.jsp"><input type="button" value="Register"></a></div>
						</div>
					</form>
				</div>
			</div>s
	</section>
	<!--MOBILE APP-->
	<%@include file="footer.html" %>
	
</body>

</html>