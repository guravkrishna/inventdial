<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><style type="text/css">
        legend {
        color: #fff;
        padding: 3px 6px;
        }

        .output {
         font: 1rem 'Fira Sans', sans-serif;
         }

         input {
         margin: .4rem;
         }

         label {
         display: inline-block;
         text-align: right;
         width: 10%;
     }

   </style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- META TAGS --><%@include file="Admin-header.jsp" %>
			<!--== BODY INNER CONTAINER ==-->
			<div class="sb2-2">
				<!--== breadcrumbs ==-->
				<div class="sb2-2-2">
					<ul>
						<li><a href="main.jsp"><i class="fa fa-home" aria-hidden="true"></i> Home</a> </li>
						<li class="active-bre"><a href="#">User Export Order</a> </li>
						<li class="page-back"><a href="admin.jsp"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
				<html>  
                  <head>  
                    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
                     <title>View Users</title>  
                        </head>  
                         <body>  
                           
				
				      <div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
						<h4>Export Order</h4>
						<!-- Dropdown Structure -->
						<div class="split-row">
							<div class="col-md-12">
								<div class="box-inn-sp ad-inn-page">
									<div class="tab-inn ad-tab-inn">
										<div class="table-responsive">
											<table class="table table-hover">
													<tr>
										
                                                          <form action="/Local/ExcelExportDateOrder" method="get">
                                                          <table>
                                                             <fieldset>
                                                        <legend>Choose Order dates</legend>
                                                          
                                                          <div>
                                                            <label for="start">From</label>
                                                            <input type="date" id="start" name="sdate"
                                                             min="2010-01-01" max="2020-12-31" />
                                                           </div>
                                                           
                                                           <div>
                                                            <label for="end">To</label>
                                                            <input type="date" id="end" name="edate"
                                                            min="2010-01-01" max="2020-12-31"/ >
                                                           </div>
                                                           <div>
                                                          <table>
                                                              <tr><td><input type="submit" value="View and Download"></td></tr>
                                                              </table>
                                                           </div>
                                                          </fieldset>
                                                          </table>
                                                          </form>   
                                                          
                                                          <form action="/Local/ExcelExportOrder" method="get">
                                                           <table>
                                                              <tr><td><input type="submit" value="View and Download All Export Order List"></td></tr>
                                                              </table>
                                                          </form>  
                                                             						 
													</tr>
											</table>
										</div>
									</div>
								</div>
                              </table>  
                            </body>  
                           </html>  
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!--== BOTTOM FLOAT ICON ==-->
	<%@include file="Admin_footer.html" %>
</body>
</html>
