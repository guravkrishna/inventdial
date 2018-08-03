 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Quiz de JavaScript</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
    /* Padding - just for asthetics on Bootsnipp.com */
body { margin-top:20px; }

/* CSS for Credit Card Payment form */
.credit-card-box .panel-title {
    display: inline;
    font-weight: bold;
}
.credit-card-box .form-control.error {
    border-color: red;
    outline: 0;
    box-shadow: inset 0 1px 1px rgba(0,0,0,0.075),0 0 8px rgba(255,0,0,0.6);
}
.credit-card-box label.error {
  font-weight: bold;
  color: red;
  padding: 2px 8px;
  margin-top: 2px;
}
.credit-card-box .payment-errors {
  font-weight: bold;
  color: red;
  padding: 2px 8px;
  margin-top: 2px;
}
.credit-card-box label {
    display: block;
}
/* The old "center div vertically" hack */
.credit-card-box .display-table {
    display: table;
}
.credit-card-box .display-tr {
    display: table-row;
}
.credit-card-box .display-td {
    display: table-cell;
    vertical-align: middle;
    width: 50%;
}
/* Just looks nicer */
.credit-card-box .panel-heading img {
    min-width: 180px;
}
.customwidth{
	max-width: 480px
}
    </style>
  </head>
  <body>
    <%@include file="Admin-header.jsp" %> 
    <%
try{ 
	String ptype=request.getParameter("ptype");
	System.out.println(ptype);
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="SELECT * FROM category c join package1 p on c.package=p.package where p.package='"+ptype+"'";
System.out.println(sql);
resultSet = statement.executeQuery(sql);%>
 
								
   
    <div class="container" style="margin-top: 100px;">
    	<!-- CREDIT CARD FORM STARTS HERE -->
            <div class="panel panel-default credit-card-box customwidth center-block">
                <div class="panel-heading display-table" >
                    <div class="row display-tr" >
                        <h3 class="panel-title display-td" >Payment Details</h3>
                        <div class="display-td" >                            
                            <img class="img-responsive pull-right" src="https://i.imgur.com/gIMFDbp.png">
                            <!-- <img class="img-responsive pull-right" src="https://i.imgur.com/WluzPvZ.png">
                            <img class="img-responsive pull-right" src="https://i.imgur.com/H5lJRwk.png">
                            <img class="img-responsive pull-right" src="https://i.imgur.com/1U8OBnM.png">
                            <img class="img-responsive pull-right" src="https://i.imgur.com/iqIDYfz.png">
                        	-->
                        </div>
                    </div>                    
                </div>
                <div class="panel-body">
             		<form role="form" id="payment-form" action="./AddPayment" method="post">
                      <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                 <%   while(resultSet.next()){ %> 
                                    <label for="couponCode">Amount</label>
                                    <input type="text" class="form-control" name="amount" value="<%=resultSet.getString("amount")%>" readonly />
                                </div>
                                  <%
//**Should I input the codes here?**
        }
}
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
                            </div>                        
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="cardNumber">CARD NUMBER</label>
                                    <div class="input-group">
                                        <input 
                                            type="text" class="validate" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g,'$1');" required pattern="[0123456789][0-9]{15}" Maxlength="16" title="enter digits only"
                                            class="form-control"
                                            name="cardNumber"
                                            placeholder="Valid Card Number"
                                             autocomplete="cc-number" 
                                              required autofocus />
                                          <!--   pattern="^(?:4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|6(?:011|5[0-9]{2})[0-9]{12}|(?:2131|1800|35\d{3})\d{11})$" -->
                                          <span class="input-group-addon"><i class="fa fa-credit-card" id="cardlogo" style="color:purple;font-size:2rem;"></i></span>
                                    </div>
                                </div>                            
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-7 col-md-7">
                                <div class="form-group">
                                    <label for="cardExpiry"><span class="hidden-xs">EXPIRATION</span><span class="visible-xs-inline">EXP</span> DATE</label>
                                    <input 
                                        type="tel" oninput="this.value = this.value.replace(/[^0-9.][/g], '').replace(/(\..*)\./g,'$1');"
                                        class="form-control" 
                                        name="cardExpiry"
                                        placeholder="MM / YY"  Maxlength="5" 
                                        autocomplete="cc-exp"
                                        required 
                                    />
                                </div>
                            </div>
                            <div class="col-xs-5 col-md-5 pull-right">
                                <div class="form-group">
                                    <label for="cardCVC">CV CODE</label>
                                    <input 
                                        type="tel" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g,'$1');" 
                                        required pattern="[0123456789][0-9]{2}" Maxlength="3" class="validate"
                                        class="form-control"
                                        name="cardCVC"
                                        placeholder="CVC"
                                        autocomplete="cc-csc"
                                        required
                                    />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="couponCode">COUPON CODE</label>
                                    <input type="text" class="form-control" 
                                    class="validate" name="couponCode" 
                                      Maxlength="10" 
                                    required />
                                    <!-- oninput="this.value = this.value.replace(/[^0-9.]/[a-zA-Z]/g, '').replace(/(\..*)\./g,'$1');"  -->
                                   
                                </div>
                            </div>                        
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <button class="btn btn-success btn-lg btn-block" type="submit">Pay</button>
                            </div>
                        </div>
                        <div class="row" style="display:none;">
                            <div class="col-xs-12">
                                <p class="payment-errors"></p>
                            </div>
                        </div>
                    </form>
                </div>
            </div>            
            <!-- CREDIT CARD FORM ENDS HERE -->
    </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script type="text/javascript">
    $("[name='cardNumber']").change(function(){
    	var input = $("[name='cardNumber']");
    	if(input.val().substring(0, 1) == 4) {
    		$('#cardlogo').addClass('fa-cc-visa');
    	}
    	if(input.val().substring(0, 2) == 34 || input.val().substring(0, 2) == 37) {
    		$('#cardlogo').addClass('fa-cc-amex');
    	}
    	if(input.val().substring(0, 2) == 51 || input.val().substring(0, 2) == 52 || input.val().substring(0, 2) == 53 || input.val().substring(0, 2) == 54 || input.val().substring(0, 2) == 55) {
    		$('#cardlogo').addClass('fa-cc-mastercard');
    	}
    	if(input.val().substring(0, 4) == 6011 || input.val().substring(0, 2) == 65) {
    		$('#cardlogo').addClass('fa-cc-discover');
    	}
    	else if(input.val().length === 0) {
    		$('#cardlogo').removeClass('fa-cc-visa fa-cc-amex fa-cc-mastercard fa-cc-discover');
    	};
    });
    </script>
</body>
</html>

<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Quiz de JavaScript</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
    /* Padding - just for asthetics on Bootsnipp.com */
body { margin-top:20px; }

/* CSS for Credit Card Payment form */
.credit-card-box .panel-title {
    display: inline;
    font-weight: bold;
}
.credit-card-box .form-control.error {
    border-color: red;
    outline: 0;
    box-shadow: inset 0 1px 1px rgba(0,0,0,0.075),0 0 8px rgba(255,0,0,0.6);
}
.credit-card-box label.error {
  font-weight: bold;
  color: red;
  padding: 2px 8px;
  margin-top: 2px;
}
.credit-card-box .payment-errors {
  font-weight: bold;
  color: red;
  padding: 2px 8px;
  margin-top: 2px;
}
.credit-card-box label {
    display: block;
}
/* The old "center div vertically" hack */
.credit-card-box .display-table {
    display: table;
}
.credit-card-box .display-tr {
    display: table-row;
}
.credit-card-box .display-td {
    display: table-cell;
    vertical-align: middle;
    width: 50%;
}
/* Just looks nicer */
.credit-card-box .panel-heading img {
    min-width: 180px;
}
.customwidth{
	max-width: 480px
}
    </style>
  </head>
  <body>
    <%@include file="Admin-header.jsp" %> 
  				
   
    <div class="container" style="margin-top: 100px;">
    	<!-- CREDIT CARD FORM STARTS HERE -->
            <div class="panel panel-default credit-card-box customwidth center-block">
                <div class="panel-heading display-table" >
                    <div class="row display-tr" >
                        <h3 class="panel-title display-td" >Payment Details</h3>
                        <div class="display-td" >                            
                            <img class="img-responsive pull-right" src="https://i.imgur.com/gIMFDbp.png">
                            <!-- <img class="img-responsive pull-right" src="https://i.imgur.com/WluzPvZ.png">
                            <img class="img-responsive pull-right" src="https://i.imgur.com/H5lJRwk.png">
                            <img class="img-responsive pull-right" src="https://i.imgur.com/1U8OBnM.png">
                            <img class="img-responsive pull-right" src="https://i.imgur.com/iqIDYfz.png">
                        	-->
                        </div>
                    </div>                    
                </div>
                <div class="panel-body">
             
								
                    <form role="form" id="payment-form" action="./AddPayment" method="post">
                      <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="couponCode">Amount</label>
                                    <input type="text" class="form-control" name="amount" />
                                </div>
                            </div>                        
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="cardNumber">CARD NUMBER</label>
                                    <div class="input-group">
                                        <input type="text" class="form-control" name="cardNumber">
                                           
                                        
                                        <span class="input-group-addon"><i class="fa fa-credit-card" id="cardlogo" style="color:purple;font-size:2rem;"></i></span>
                                    </div>
                                </div>                            
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-7 col-md-7">
                                <div class="form-group">
                                    <label for="cardExpiry"><span class="hidden-xs">EXPIRATION</span><span class="visible-xs-inline">EXP</span> DATE</label>
                                    <input type="text" class="form-control" name="cardExpiry">
                                        
                                </div>
                            </div>
                            <div class="col-xs-5 col-md-5 pull-right">
                                <div class="form-group">
                                    <label for="cardCVC">CV CODE</label>
                                    <input type="text" class="form-control" name="cardCVC">
                                        
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="couponCode">COUPON CODE</label>
                                    <input type="text" class="form-control" name="couponCode" />
                                </div>
                            </div>                        
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <button class="btn btn-success btn-lg btn-block" type="submit">Pay</button>
                            </div>
                        </div>
                        <div class="row" style="display:none;">
                            <div class="col-xs-12">
                                <p class="payment-errors"></p>
                            </div>
                        </div>
                    </form>
                </div>
            </div>            
            <!-- CREDIT CARD FORM ENDS HERE -->
    </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
     <script type="text/javascript">
    $("[name='cardNumber']").change(function(){
    	var input = $("[name='cardNumber']");
    	if(input.val().substring(0, 1) == 4) {
    		$('#cardlogo').addClass('fa-cc-visa');
    	}
    	if(input.val().substring(0, 2) == 34 || input.val().substring(0, 2) == 37) {
    		$('#cardlogo').addClass('fa-cc-amex');
    	}
    	if(input.val().substring(0, 2) == 51 || input.val().substring(0, 2) == 52 || input.val().substring(0, 2) == 53 || input.val().substring(0, 2) == 54 || input.val().substring(0, 2) == 55) {
    		$('#cardlogo').addClass('fa-cc-mastercard');
    	}
    	if(input.val().substring(0, 4) == 6011 || input.val().substring(0, 2) == 65) {
    		$('#cardlogo').addClass('fa-cc-discover');
    	}
    	else if(input.val().length === 0) {
    		$('#cardlogo').removeClass('fa-cc-visa fa-cc-amex fa-cc-mastercard fa-cc-discover');
    	};
    });
    </script>
</body>
</html>















 --%>