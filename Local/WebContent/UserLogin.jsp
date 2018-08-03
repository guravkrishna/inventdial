<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from rn53themes.net/themes/demo/directory/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 02 Jul 2018 05:07:44 GMT -->
<!-- <head>
	<title>World Best Local Directory Website template</title>
	META TAGS
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	FAV ICON(BROWSER TAB ICON)
	<link rel="shortcut icon" href="images/fav.ico" type="image/x-icon">
	GOOGLE FONT
	<link href="https://fonts.googleapis.com/css?family=Poppins%7CQuicksand:500,700" rel="stylesheet">
	FONTAWESOME ICONS
	<link rel="stylesheet" href="css/font-awesome.min.css">
	ALL CSS FILES
	<link href="css/materialize.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
	RESPONSIVE.CSS ONLY FOR MOBILE AND TABLET VIEWS
	<link href="css/responsive.css" rel="stylesheet">
	HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries
	WARNING: Respond.js doesn't work if you view the page via file://
	[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
	<![endif]-->
	   <script src="https://apis.google.com/js/platform.js" async defer></script>
   <meta name="google-signin-client_id" content="385893468268-dh0j2ng5po7n2e0jlna70pi76htmv06a.apps.googleusercontent.com">
	
	<script type="text/javascript">
	
	history.pushState(null,null,'UserLogin');
	  window.addEventListener('popstate',function(event){
	  history.pushState(null,null,'UserLogin');
	  });
 // This is called with the results from from FB.getLoginStatus().
 function statusChangeCallback(response) {
 console.log('statusChangeCallback');
 console.log(response);
 // The response object is returned with a status field that lets the
 // app know the current login status of the person.
 // Full docs on the response object can be found in the documentation
 // for FB.getLoginStatus().
 if (response.status === 'connected') {
 // Logged into your app and Facebook.
 testAPI();
 } else if (response.status === 'not_authorized') {
 // The person is logged into Facebook, but not your app.
 document.getElementById('status').innerHTML = 'Login with Facebook ';
 } else {
 // The person is not logged into Facebook, so we're not sure if
 // they are logged into this app or not.
 document.getElementById('status').innerHTML = 'Login with Facebook ';
 }
 }
 // This function is called when someone finishes with the Login
 // Button. See the onlogin handler attached to it in the sample
 // code below.
 function checkLoginState() {
 FB.getLoginStatus(function(response) {
 statusChangeCallback(response);
 });
 }
 window.fbAsyncInit = function() {
 FB.init({ 
 appId : '2075970972618608',
 cookie : true, // enable cookies to allow the server to access 
 // the session
 xfbml : true, // parse social plugins on this page
 version : 'v2.2' // use version 2.2
 });
 // Now that we've initialized the JavaScript SDK, we call 
 // FB.getLoginStatus(). This function gets the state of the
 // person visiting this page and can return one of three states to
 // the callback you provide. They can be:
 //
 // 1. Logged into your app ('connected')
 // 2. Logged into Facebook, but not your app ('not_authorized')
 // 3. Not logged into Facebook and can't tell if they are logged into
 // your app or not.
 //
 // These three cases are handled in the callback function.

 FB.getLoginStatus(function(response) {
 statusChangeCallback(response);
 });
 };
 // Load the SDK asynchronously
 (function(d, s, id) {
 var js, fjs = d.getElementsByTagName(s)[0];
 if (d.getElementById(id)) return;
 js = d.createElement(s); js.id = id;
 js.src = "//connect.facebook.net/en_US/sdk.js";
 fjs.parentNode.insertBefore(js, fjs);
 }(document, 'script', 'facebook-jssdk')); 

 // Here we run a very simple test of the Graph API after login is
 // successful. See statusChangeCallback() for when this call is made.
 function testAPI() { 
 console.log('Welcome! Fetching your information.... ');
 FB.api('/me?fields=name,email', function(response) {
 console.log('Successful login for: ' + response.name); 
 
 document.getElementById("status").innerHTML = '<p>Welcome '+response.name+'! <a href=fblogincontroller.jsp?user_name='+ response.name.replace(" ", "_") +'&user_email='+ response.email +'>Continue with facebook login</a></p>'
 });
 } 
</script> 
<!--
 Below we include the Login Button social plugin. This button uses
 the JavaScript SDK to present a graphical Login button that triggers
 the FB.login() function when clicked.
-->
<br><br>
</head>

<body data-ng-app="">
	
	<!--TOP SEARCH SECTION-->
	
	 <%@include file="header.jsp" %> 
	<section class="tz-register">
			<div class="log-in-pop">
			<!-- 	<div class="log-in-pop-left">
					<h1>Hello... <span>{{ name1 }}</span></h1>
					<p>Don't have an account? Create your account. It's take less then a minutes</p>
					<h4>Login with social media</h4>
					<ul>
						<li onlogin="checkLoginState();"><i class="fa fa-facebook"></i> Facebook
						</li>
						<li><a href="#"><i class="fa fa-google"></i> Google+</a>
						</li>
						<li><a href="#"><i class="fa fa-twitter"></i> Twitter</a>
						</li>
					</ul>
					<fb:login-button scope="public_profile,email" onlogin="checkLoginState();">
						</fb:login-button>
						<div id="status">
					</div>
					<div class="g-signin2" data-onsuccess="onSignIn" id="myP"></div>
				      <img id="myImg"><br>
				      <p id="name"></p>
				      <div id="status1">
				   </div> 
				    <script type="text/javascript">
      function onSignIn(googleUser) {
    	// window.location.href='success.jsp';
      var profile = googleUser.getBasicProfile();
      var imagurl=profile.getImageUrl();
      var name=profile.getName();
      var email=profile.getEmail();
      System.out.println(email);
      document.getElementById("myImg").src = imagurl;
      document.getElementById("name").innerHTML = name;
      document.getElementById("myP").style.visibility = "hidden";
      document.getElementById("status").innerHTML = 'Welcome'+name+'!<a href=success.jsp?'
    		  email='+email+'&name='+name+'/>Continue with Google login</a></p>}
   </script>
   <button onclick="myFunction()">Sign Out</button>
   <script>
      function myFunction() {
      gapi.auth2.getAuthInstance().disconnect();
      location.reload();}
   </script>
				</div> -->
				<div class="log-in-pop-right">
					<a href="#" class="pop-close" data-dismiss="modal"><img src="images/cancel.html" alt="" />
					</a>
					<h4>Login</h4>
					<p>Don't have an account? Create your account. It's take less then a minutes</p>
					<form class="s12" action="UserSession.jsp" method="">
						<div>
							<div class="input-field s12">
							<input id="email" type="email" class="validate" name="email" required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$">
								<label for="email">User Name<span style="color:red">*</span></label>
							</div>
						</div>
						<div>
							<div class="input-field s12">
								<input type="password" name="passw" class="validate" minlength="4" maxlength="8" required>
								<label>Password<span style="color:red">*</span></label>
							</div>
						</div>
						<div>
							<div class="input-field s4">
								<input type="submit" value="Login" class="waves-effect waves-light log-in-btn">
								<p><span style="color:red">*</span> represents mandatory.</p>
								 </div>
						</div>
						<div>
							<div class="input-field s12"> <a href="forgot-pass.html">Reset password</a> | <a href="register.jsp"><input type="button" value="New Register"></a></div>
						</div>
					</form>
					
				</div>
			</div>
	</section>
	<!--MOBILE APP-->
	<%@include file="footer.html" %>

	
</body>

</html>