<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<script src="https://apis.google.com/js/platform.js" async defer></script>
   <meta name="google-signin-client_id" content="385893468268-dh0j2ng5po7n2e0jlna70pi76htmv06a.apps.googleusercontent.com">
	
	<script type="text/javascript">
	
	history.pushState(null,null,'EndUserLogin');
	  window.addEventListener('popstate',function(event){
	  history.pushState(null,null,'EndUserLogin');
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
<script type="text/javascript">
          function validateForm()
            {  
            var x=document.forms["login"]["contact"].value;
            var y=document.getElementById('actual').value;            
            
                if (y=="taken")
                {
                      /*  alert("Contact Number is Correct!");  
                    return true; */
                }
                else{
                	 alert("Contact Number is InCorrect!");  
                     return false;
                	
                }
                    
                    
             }
        </script>
        <script type="text/javascript">
function loadXMLDoc()
{
var xmlhttp;
var k=document.getElementById("contact").value;
var urls="checkendusercontact.jsp?ver="+k;

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

<body data-ng-app="" onload="password(4)">
	
	<!--TOP SEARCH SECTION-->
	
	<%@include file="header.jsp" %>
	<% session.getAttribute("subcategory");
	String subcategory=(String)request.getParameter("subcategory");
	System.out.println(subcategory); 
	String title=request.getParameter("BusinessTitle");
	System.out.println(title); 
	/* String email=request.getParameter("email");
	System.out.println(email);
	session.setAttribute("email",email); */%>
	<section class="tz-register">
			<div class="log-in-pop">
				 <div class="log-in-pop-left"> 
			     <img src="images/userlogin.jpg" style="width:227px;height:299px;""> 
			     </div>
				<div class="log-in-pop-right">
					<!-- <a href="#" class="pop-close" data-dismiss="modal"><img src="uploadimg/20.jpg"  width=320 height=240 alt="" />
					</a> -->
					<h3>Welcome to Invent Dial</h3></br></br>
					<h4>Please Login</h4>
					
					<!-- <p>Don't have an account? Create your account. It's take less then a minutes</p> -->
					<form class="s12" action="SendEndUserOtp.jsp" name="login" onsubmit="return validateForm();">
						<div>
							<div class="input-field s12">
							<input type="hidden" name="pwd" id="pwd" for="pwd">
		
				 <input type="hidden" id="id" name="id"/>
				 <input type="hidden" id="id" name="title" value='<%=title%>'/>
								<input type="text" name="contact" id="contact"  onkeyup="loadXMLDoc()" required>
 								<label>Contact Number</label>
 								<span id="err"> </span> 
							</div>
						</div>
						<div>
							<div class="input-field s4">
								<input type="submit" value="Login" class=" log-in-btn" >
							</div>
						</div><br>
						<h4> Not Register ? </h4><div class="input-field s12"><a href="EndUserRegister.jsp"><input type="button" value="Register"></a></div>
						<div>
							<a href="main.jsp"><span style="color:Blue">Go to Home</span></a>
						</div>
					</form>
				</div>
			</div>s
	</section>
	<!--MOBILE APP-->
	<%@include file="footer.html" %>
	
</body>

</html>