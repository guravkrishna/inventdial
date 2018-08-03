<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Educations List</title>
</head>
<body>

	<%@include file="header.jsp" %>

<!-- <section class="dir-pa-sp-top dir-pa-sp-top-bg v4-pri-bg">
		<div class="rows">
			<div class="container">
				<div class="v4-price-list com-padd">
					<div class="col-md-12">
						<div class="v4-pril-inn">
							<div class="v4-pril-inn-top">
								<h1> Educations</h1>
							</div>
							<div class="v4-pril-inn-bot">
								<ul><center>
								<li><i class="fa fa-check"></i><a href="educationgrid.html"> Schools</a></li><br>
								<li><i class="fa fa-check"></i><a href="educationgrid.html">Colleges</a></li><br>
								<li><i class="fa fa-check"></i><a href="educationgrid.html">Acting classes</a></li><br>
								<li><i class="fa fa-check"></i><a href="educationgrid.html"> Art and Craft classes</a></li><br>
								<li><i class="fa fa-check"></i><a href="educationgrid.html">Coaching classes and tutorials</a></li><br>
								<li><i class="fa fa-check"></i><a href="educationgrid.html"> Music classes</a></li><br>
								<li><i class="fa fa-check"></i><a href="educationgrid.html"> Language classes</a></li><br>
								<li><i class="fa fa-check"></i><a href="educationgrid.html">Painting classes</a></li><br>
								<li><i class="fa fa-check"></i><a href="educationgrid.html">Photography</a></li><br>
								<li><i class="fa fa-check"></i><a href="educationgrid.html">Training Institutions</a></li><br>
								</center>
								</ul>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section> -->
	<section class="dir-pa-sp-top8 dir-pa-sp-top-bg8 v4-pri-bg8">
		<div class="rows">
			<div class="container" style="width:70%;">
					<center>
						<br><br>
						<h1 style="color:#ffffff">Schools & Institute Centers</h1>
							
					</center>
				<div class="home-list-pop"style="margin-top: 100px;background:transparent;">
				<% 
				       try
				      {
					   connection = DriverManager.getConnection(connectionUrl+database, userid, password);
					   statement=connection.createStatement();
						String sql1 ="select subcategory from category where category='Education' group by subcategory";
						
						resultSet = statement.executeQuery(sql1);
						while(resultSet.next()){
						%>
						<div class="col-md-6 home-list-pop-desc">
							<div class="pg-revi-re"><img src="images/education/1.png" alt="">
								<a href="list_perticular.jsp?subcategory=<%=resultSet.getString("subcategory")%>"><p Style="color:#fff;font-size:28px;"><%=resultSet.getString("subcategory")%></p></a>
							</div>
						</div>
					    <%
						  }
						%>
<%
} catch (Exception e) {
e.printStackTrace();
}
finally
{
	connection.close();
}
%>
				</div>
				
			</div>
		</div>
		
	</section>
	
	<%@include file="footer.html" %>

</body>
</html>