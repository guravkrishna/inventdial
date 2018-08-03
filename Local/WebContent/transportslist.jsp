
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Transports List</title>
</head>
<body>

	<%@include file="header.jsp" %>

	<section class="dir-pa-sp-top12 dir-pa-sp-top-bg12 v4-pri-bg12">
		<div class="rows">
			<div class="container" style="width:70%;">
					<center>
						<br><br>
						<h1 style="color:#ffffff">List Of Transportation Agencies</h1>
							
					</center>
				<div class="home-list-pop"style="margin-top:100px;background:transparent;">
				<% 
				       try
				      {
					   connection = DriverManager.getConnection(connectionUrl+database, userid, password);
					   statement=connection.createStatement();
						String sql1 ="select subcategory from category where category='Transportation' group by subcategory";
						
						resultSet = statement.executeQuery(sql1);
						while(resultSet.next()){
						%>
						<div class="col-md-6 home-list-pop-desc">
							<div class="pg-revi-re"><img src="images/transport/er.png" alt="">
								<a href="list_perticular.jsp?subcategory=<%=resultSet.getString("subcategory")%>"><p Style="color:white;font-size:28px;"><%=resultSet.getString("subcategory")%></p></a>
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
					<!-- <div class="col-md-6 home-list-pop-desc">
						<div class="pg-revi-re"><img src="images/transport/t2.png" alt="">
							<a href="hotelgrid.jsp"><p Style="color:white;font-size:28px;">Business and Industrial goods</p></a>
						</div>
					</div>
					<div class="col-md-6 home-list-pop-desc">
						<div class="pg-revi-re"><img src="images/transport/ta2.png" alt="">
							<a href="hotelgrid.jsp"><p Style="color:white;font-size:28px;">Food and Agriculture Products</p></a>
						</div>
					</div>
					<div class="col-md-6 home-list-pop-desc">
						<div class="pg-revi-re"><img src="images/transport/ta4.png" alt="">
							<a href="hotelgrid.jsp"><p Style="color:white;font-size:28px;">Full Container Load Freight</p></a>
						</div>
					</div>
					<div class="col-md-6 home-list-pop-desc">
						<div class="pg-revi-re"><img src="images/transport/t5.png" alt="">
							<a href="hotelgrid.jsp"><p Style="color:white;font-size:28px;"> Vehicles Transporters</p></a>
						</div>
					</div>
					<div class="col-md-6 home-list-pop-desc">
						<div class="pg-revi-re"><img src="images/transport/ta6.png" alt="">
							<a href="hotelgrid.jsp"><p Style="color:white;font-size:28px;"> Low Containers Load Freight</p></a>
						</div>
					</div>
					<div class="col-md-6 home-list-pop-desc">
						<div class="pg-revi-re"><img src="images/transport/ta7.png" alt="">
							<a href="hotelgrid.jsp"><p Style="color:white;font-size:28px;">Antiques and Special Care Items</p></a>
						</div>
					</div>
					<div class="col-md-6 home-list-pop-desc">
						<div class="pg-revi-re"><img src="images/transport/ta8.png" alt="">
							<a href="hotelgrid.jsp"><p Style="color:white;font-size:28px;">Plants and Heavy Equipments</p></a>
						</div>
					</div> -->
					<!-- <div class="col-md-6 home-list-pop-desc">
						<div class="pg-revi-re"><img src="images/users/8.png" alt="">
							<a href="hotelgrid.jsp"><h2> Heritage Hotels</h2></a>
						</div>
					</div> -->
					
				</div>
				
			</div>
		</div>
		
	</section>
	
	
	<%@include file="footer.html" %>

</body>
</html>