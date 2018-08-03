
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Security and Services</title>
</head>
<body>

	<%@include file="header.jsp" %>

	<section class="dir-pa-sp-top14 dir-pa-sp-top-bg14 v4-pri-bg14">
		<div class="rows">
			<div class="container" style="width:70%;">
					<center>
						<br><br>
						<h1 style="color:#ffffff">List Of Security Services</h1>
							
					</center>
				<div class="home-list-pop"style="margin-top: 100px;background:transparent;">
				<% 
				       try
				      {
					   connection = DriverManager.getConnection(connectionUrl+database, userid, password);
					   statement=connection.createStatement();
						String sql1 ="select subcategory from category where category='Security Services' group by subcategory";
						
						resultSet = statement.executeQuery(sql1);
						while(resultSet.next()){
						%>
						<div class="col-md-6 home-list-pop-desc">
							<div class="pg-revi-re"><img src="images/sec/b1.png" alt="">
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
						<div class="pg-revi-re"><img src="images/sec/cc.png" alt="">
							<a href="hotelgrid.jsp"><p Style="color:white;font-size:28px;">CCTV Cameras</p></a>
						</div>
					</div>
					<div class="col-md-6 home-list-pop-desc">
						<div class="pg-revi-re"><img src="images/sec/ss3.png" alt="">
							<a href="hotelgrid.jsp"><p Style="color:white;font-size:28px;">Hire detectives</p></a>
						</div>
					</div>
					<div class="col-md-6 home-list-pop-desc">
						<div class="pg-revi-re"><img src="images/sec/lock.png" alt="">
							<a href="hotelgrid.jsp"><p Style="color:white;font-size:28px;">Lock</p></a>
						</div>
					</div>
					<div class="col-md-6 home-list-pop-desc">
						<div class="pg-revi-re"><img src="images/sec/s4.png" alt="">
							<a href="hotelgrid.jsp"><p Style="color:white;font-size:28px;"> Security Services</p></a>
						</div>
					</div>
					<div class="col-md-6 home-list-pop-desc">
						<div class="pg-revi-re"><img src="images/sec/s5.png" alt="">
							<a href="hotelgrid.jsp"><p Style="color:white;font-size:28px;">Lock Repair Services</p></a>
						</div>
					</div>
					<div class="col-md-6 home-list-pop-desc">
						<div class="pg-revi-re"><img src="images/sec/val.png" alt="">
							<a href="hotelgrid.jsp"><p Style="color:white;font-size:28px;">  Valet Parking Services</p></a>
						</div>
					</div>
					<div class="col-md-6 home-list-pop-desc">
						<div class="pg-revi-re"><img src="images/sec/wak.png" alt="">
							<a href="hotelgrid.jsp"><p Style="color:white;font-size:28px;">Walkie Talkie</p></a>
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