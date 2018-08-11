<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!DOCTYPE html>
<html lang="en">
<head>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>INVENT DIAL</title>
        <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
        <link type="text/css" href="css/theme.css" rel="stylesheet">
        <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
        <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
            rel='stylesheet'>
            <link href="css/multiselect.css" rel="stylesheet"/>
<script src="js/multiselect.min.js"></script>
    </head>
    <body>
    <%@page import="java.sql.DriverManager"%>
	<%@page import="java.sql.ResultSet"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.Connection"%>
	<%
		String id = request.getParameter("id");
		String driver = "com.mysql.jdbc.Driver";
		String connectionUrl = "jdbc:mysql://localhost:3306/";
		String database = "localsearchengine";
		String userid = "root";
		String password = "root";
		try {
				Class.forName(driver);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
				}
			Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
	%>                 
        <div class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
                        <i class="icon-reorder shaded"></i></a><a class="brand" href="Useradmin.jsp">INVENT DIAL </a>
                    <div class="nav-collapse collapse navbar-inverse-collapse">
                        <!-- <ul class="nav nav-icons">
                            <li class="active"><a href="#"><i class="icon-envelope"></i></a></li>
                            <li><a href="#"><i class="icon-eye-open"></i></a></li>
                            <li><a href="#"><i class="icon-bar-chart"></i></a></li>
                        </ul> -->
                      <!--   <form class="navbar-search pull-left input-append" action="#">
                        <input type="text" class="span3">
                        <button class="btn" type="button">
                            <i class="icon-search"></i>
                        </button>
                        </form> -->
                        	<%
					    try{
					    	String name=(String)session.getAttribute("name");
					       
					        System.out.println(name);
							connection = DriverManager.getConnection(connectionUrl+database, userid, password);
							request.getSession(true);
							statement=connection.createStatement();
							String sql ="select * from signup where contact='"+name+"'";
							System.out.println(sql);
							// select * from listing where id='"+search+"' or first_name like '%"+search+"%' ; 
							resultSet = statement.executeQuery(sql);
							if(resultSet.next()){												
	                 %>  
                        <ul class="nav pull-right">
                            <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Welcome:<%= resultSet.getString("firstname")%>
                                <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="logoutuser.jsp">Logout</a></li>
                                    <li><a href="Useradmin.jsp">Back to Account</a></li>
                                   <!--  <li class="divider"></li>
                                    <li class="nav-header">Example Header</li>
                                    <li><a href="#">A Separated link</a></li> -->
                                </ul>
                            </li>
                            <% 
}

													}
													catch (Exception e) {
													e.printStackTrace();
													}
													
													%>
                                           
                           <!--  <li><a href="#">Support </a></li>
                            <li class="nav-user dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <img src="images/user.png" class="nav-avatar" />
                                <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Your Profile</a></li>
                                    <li><a href="#">Edit Profile</a></li>
                                    <li><a href="#">Account Settings</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#">Logout</a></li>
                                </ul>
                            </li> -->
                        </ul> 
                    </div>
                    <!-- /.nav-collapse -->
                </div>
            </div>
            <!-- /navbar-inner -->
        </div>
        <!-- /navbar -->

        <div class="wrapper">
            <div class="container">
                <div class="row">
                    
                    <!--/.span3-->
                  
                    <div class="span12">
                             
                        <div class="content">
                         
                            <div class="module message">
                                <div class="module-head">
                                    <h3>
                                        Message</h3>
                                </div>
                                <div class="module-option clearfix">
                                    <table>
                                     <form class="" action="SendMsgToAll.jsp" method=""><div class="pull-left">
                                        <div class="btn-group">
                                       
							
								<%
								 String subcategory=request.getParameter("subcategory");
								System.out.println(subcategory); 
try{ 
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select distinct e.contact from endusersignup e join  category c on  e.subcategory=c.subcategory where c.subcategory='"+subcategory+"'";
System.out.println(sql);
resultSet = statement.executeQuery(sql);%>
								
						 			<tr>
						 				<td>
						 					<select id='testSelect1' name="contacts" multiple>
											
												 <%  while(resultSet.next()){ %>
											
											  <option value="<%= resultSet.getString("contact")%>"> <%= resultSet.getString("contact")%> </option>
                                  <% } %>
     									   </select>
									    </td>
         
	<script>
	document.multiselect('#testSelect1');
</script>	
                          			 <td>
	                          			<textarea  name="msg" style="margin-left: 80px;" title="Message"></textarea>
                      				
                      				</td> 
									
									
									<td>
									
									 <div class="pull-right">
                                     <!--    <a href="#" class="btn btn-primary">Compose</a> -->
                                     <div class="input-field col s12 v2-mar-top-40"><input type="submit" value="Send Message"></div>
										
                                    </div>
                                    
                                    </td>
                                    
									</tr>
									
									
									
                                         
                                        </div>
                                    </div>
                                    
                                    
                                    </form>
                                    
                                    </table>
                                  
                               
<div>

<button id="a">Add Contact</button>

<form method="post" action="./AddContact" id="a_form" name="a" style="display:none;">
<table>
<tr>
<td>
Contact Number:<input type="text" name="contact"></td></tr>
<tr><td>First Name:<input type="text" name="fname"></td></tr>
<tr><td>Last Name:<input type="text" name="lname"></td></tr>
<tr><td>Email Id:<input type="email" name="email"></td></tr>
<tr><td><input type="hidden" name="invent" value='By Invent Dial' readonly></td></tr>

<tr><td><input type="hidden" name="subcategory" value='<%=subcategory%>'></td></tr>
<!--   <div class="pull-right"> -->
                                     <!--    <a href="#" class="btn btn-primary">Compose</a> -->
     <tr><td><div class="input-field col s12 v2-mar-top-40"><input type="submit" value="Add Contact"></div></td></tr>
    <!--  </div> -->
 </table>
</form>

</div>
	
                                </div>
                                
                                      <%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
                                 <%
								 String subcategory1=request.getParameter("subcategory");
								System.out.println(subcategory); 
try{ 
	connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select e.firstname,e.lastname, e.contact ,e.endemail,c.BusinessTitle,e.invent from endusersignup e join  category c on  e.subcategory=c.subcategory  where c.subcategory='"+subcategory1+"'";
System.out.println(sql);
resultSet = statement.executeQuery(sql);
 %> 
                                <div class="module-body table">
                                    <table class="table table-message">
                                        <tbody>
                                            <tr class="heading">
                                                <!-- <td class="cell-check">
                                                    <input type="checkbox" class="inbox-checkbox">
                                                </td -->
                                                <!-- <td class="cell-icon">
                                                </td> -->
                                                <td class="cell-author hidden-phone hidden-tablet">
                                                    First Name
                                                </td>
                                                <td class="cell-title">
                                                      Last Name
                                                </td>
                                                <td class="cell-title">
                                                    Contact Number
                                                </td>
                                                <td class="cell-title">
                                                    Email Id
                                                </td>
                                                
                                                <td class="cell-title">
                                                    Business Title
                                                </td>
                                               <!--  <td class="cell-icon hidden-phone hidden-tablet">
                                                </td> -->
                                               <!--  <td class="cell-time align-right">
                                                    Date
                                                </td> -->
                                            </tr>
                                            <% while(resultSet.next()){%>
                                            <tr class="unread">
                                                <!-- <td class="cell-check">
                                                    <input type="checkbox" class="inbox-checkbox">
                                                </td>
                                                <td class="cell-icon">
                                                    <i class="icon-star"></i>
                                                </td> -->
                                                <td class="cell-author hidden-phone hidden-tablet">
                                                    <%=resultSet.getString("firstname") %>
                                                </td>
                                                <td class="cell-title">
                                            <%=resultSet.getString("lastname") %>
                                                </td>
                                                 <td class="cell-title">
                                                   <%=resultSet.getString("contact") %>
                                                </td>
                                                 <td class="cell-title">
                                                   <%=resultSet.getString("endemail") %>
                                                   <br>
                                                   <h6> <%=resultSet.getString("invent") %></h6>
                                                   
                                                   
                                                </td>
                                                
                                               
                                                <td class="cell-title">
                                                   <%=resultSet.getString("BusinessTitle") %>
                                                </td>
                                               
                                               
                                            </tr>
                                            	<% 
}

													}
													catch (Exception e) {
													e.printStackTrace();
													}
													
													%>
                                           
                                           
                                        </tbody>
                                    </table>
                                </div>
                               <!--  <div class="module-foot">
                                </div> -->
                            </div>
                       
                        </div>
                        
                        <!--/.content-->
                    </div>
                    
                    <!--/.span9-->
                </div>
            </div>
            <!--/.container-->
        </div>
       
        <!--/.wrapper-->
       <!--  <div class="footer">
            <div class="container">
                <b class="copyright">&copy; 2014 Edmin - EGrappler.com </b>All rights reserved.
            </div>
        </div> -->
        <script type="text/javascript">
        var a=document.getElementById('a');
      
        a.addEventListener('click',function(){
            a.style.display="none";
           
            document.getElementById('a_form').style.display="";
        });
        </script>
        <script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
        <script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    </body>


</body>
</html>