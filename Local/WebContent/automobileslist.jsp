<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Automobiles List</title>
</head>
<body>

	<%@include file="header.jsp" %>

	<section class="dir-pa-sp-top10 dir-pa-sp-top-bg10 v4-pri-bg10">
		<div class="rows">
			<div class="container" style="width:70%;">
					<center>
						<br><br>
						<h1 style="color:#ffffff">List Of Automobile Centers</h1>
							
					</center>
				<div class="home-list-pop"style="margin-top: 100px;background:transparent;">
				<% 
				       try
				      {
					   connection = DriverManager.getConnection(connectionUrl+database, userid, password);
					   statement=connection.createStatement();
						String sql1 ="select subcategory from category where category='Automobiles' group by subcategory";
						
						resultSet = statement.executeQuery(sql1);
						while(resultSet.next()){
						%>
						<div class="col-md-6 home-list-pop-desc">
							<div class="pg-revi-re"><img src="images/automobile/1.png" alt="">
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