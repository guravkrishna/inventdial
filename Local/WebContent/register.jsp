<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
	
<script type="text/javascript">
	history.pushState(null,null,'register.jsp');
	  window.addEventListener('popstate',function(event){
	  history.pushState(null,null,'register.jsp');
	  });
</script>	
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
   <script type="text/javascript">
          function validateForm()
            {  
            var x=document.forms["login"]["mail"].value;
            var y=document.getElementById('actual').value;            
            
                if (y=="taken")
                {
                       alert("Email Id already exist in database");
                    return false;
                }
                    
                    
             }
        </script>
        <script type="text/javascript">
function loadXMLDoc()
{
var xmlhttp;
var k=document.getElementById("email").value;
var urls="checkusername.jsp?ver="+k;

if (window.XMLHttpRequest)
  {
  xmlhttp=new XMLHttpRequest();
  }
else
  {
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4)
    {
        document.getElementById("err").innerHTML=xmlhttp.responseText;
     }
  }
xmlhttp.open("GET",urls,true);
xmlhttp.send();
}
</script>

	
</head>

<body data-ng-app=""  onload="password(4)">

	
	<section class="tz-register">
			  <div class="log-in-pop">
			  <div class="log-in-pop-right">  
			  <a href="#" class="pop-close" data-dismiss="modal"><img src="images/cancel.html" alt="" />
					</a>
					<h4>Create an Account</h4>
					<p>Don't have an account? Create your account. It's take less then a minutes</p>
					<form class="s12" action="InsertServlet"  method="post"  name="login" onsubmit="return validateForm();">
						
						<div class="row">
							  <div class="input-field col s6">
				                <input type="hidden" id="id" />
								<input id="first_name" type="text" class="validate" name="fname" required  pattern="[A-Za-z]{3,20}" title="enter valid name">
								<label>First name <span style="color:red">*</span></label>
							</div>
							<div class="input-field col s6" >
								<input id="last_name" type="text" class="validate" name="lname" required  pattern="[A-Za-z]{1,20}" title="enter valid name">
								<label for="last_name">Last Name<span style="color:red">*</span></label>
							</div>
						</div>
						<div class="row">
							<div class="input-field col s6">
								<input id="list_phone" type="text" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g,'$1');" class="validate"  name="phone" required pattern="[6789][0-9]{9}" Maxlength="10" minlength="10" title="enter digits only">
								<label for="list_phone">Contact Number<span style="color:red">*</span></label>
							</div>
							<div class="input-field col s6">
								<input id="list_phone" type="text" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g,'$1');" class="validate"  name="altphone" required pattern="[6789][0-9]{9}" Maxlength="10" minlength="10" title="enter digits only">
								<label for="list_phone">Alternative Number<span style="color:red">*</span></label>
							</div>
						</div>
						<div class="row">
							<div class="input-field col s6">
								<input id="email" oncopy="return false" onpaste="return false"  onkeyup="loadXMLDoc()" type="email" class="validate" name="email" required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$">
								<label for="email">Email Id<span style="color:red">*</span></label>
								 <span id="err"> </span> 
							</div>
							<div class="input-field col s6">
								<input id="conemail" oncopy="return false" onpaste="return false"  type="email" class="validate" name="conemail" required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$">
								<label for="email">Confirm Email Id<span style="color:red">*</span></label>
								 <span id="err"> </span> 
							</div>
						</div>
						<div class="row">
							<div class="input-field col s6">
							<table><tr>
							<td>
								<input type="password"  name="pass" id="password" oncopy="return false" onpaste="return false" onkeyup='check();' minlength="4" maxlength="8" title="4 to 8 characters" required>
								<label>Password<span style="color:red">*</span></label>
								</td>
								<!-- <td><button onclick="if (password.type == 'text') password.type = 'password'; else password.type = 'text';">Show</button>
 								</td> -->
			                    </tr>
								</table>
							</div>
							<div class="input-field col s6">
								<input type="password" name="confirmpass" id="confirm_password" oncopy="return false" onpaste="return false" onkeyup='check();' minlength="4" maxlength="8" title="4 to 8 characters" required>
								<label>Confirm password<span style="color:red">*</span></label>
								<span id='message'></span>
							</div>
						</div>
						<div>
							<div class="input-field s4">
								<input type="submit" value="Register" class="waves-effect waves-light log-in-btn"> </div>
								<p><span style="color:red">*</span> represents mandatory.</p>
						</div>
						<div>
							<div class="input-field s12"> <a href="UserLogin.jsp">Are you a already member ?<span style="color:red">Login   or</span></a> 
							<a href="main.jsp"><span style="color:red">Home</span></a>
							</div>
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
		    document.getElementById('message').innerHTML = 'matched';
		  } else {
		    document.getElementById('message').style.color = 'red';
		    document.getElementById('message').innerHTML = 'not matched';
		  }
		}
	</script>
	<script>
	var checkemail = function() {
		  if (document.getElementById('email').value ==
		    document.getElementById('conemail').value) {
		    document.getElementById('message').style.color = 'green';
		    document.getElementById('message').innerHTML = 'matched';
		  } else {
		    document.getElementById('message').style.color = 'red';
		    document.getElementById('message').innerHTML = 'not matched';
		  }
		}
	</script>
	<!--MOBILE APP-->
	
	<!--FOOTER SECTION-->

	
	<%@include file="footer.html" %>
	<!--COPY RIGHTS-->
	<section class="copy">
		<div class="container">
			<p>copyrights © 2017 RN53Themes.net. &nbsp;&nbsp;All rights reserved. </p>
		</div>
	</section>
	<!--QUOTS POPUP-->
	<section>
		<!-- GET QUOTES POPUP -->
		<div class="modal fade dir-pop-com" id="list-quo" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header dir-pop-head">
						<button type="button" class="close" data-dismiss="modal">×</button>
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
	<!--SCRIPT FILES-->
	<script src="js/jquery.min.js"></script>
	<script src="js/angular.min.js"></script>
	<script src="js/bootstrap.js" type="text/javascript"></script>
	<script src="js/materialize.min.js" type="text/javascript"></script>
	<script src="js/custom.js"></script>
	
</body>


<!-- Mirrored from rn53themes.net/themes/demo/directory/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 02 Jul 2018 05:07:43 GMT -->
</html>