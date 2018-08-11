<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.sql.*" %>
<% 
                    String sn=request.getParameter("ver");
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/localsearchengine","root","root");
                    Statement st=con.createStatement();
                    ResultSet rs; // this is for name
                    String sql="select * from endusersignup where contact='"+sn+"'";
                    System.out.println(sql);
          		  rs = st.executeQuery(sql);
          		
                    
                    
                    if(rs.next())
                    {   %>
                     <font color=green>
                        <input type="hidden" id="actual" name="actual" value="taken">
                        You Can Login! 
                        </font>
                        <!-- <input type="submit" value="submit"> -->
                       

                   <% }else {%>
                    <font color=red>
                        Contact Number is Not Registered
                        <input type="hidden" id="actual" name="actual" value="available">
                        <!-- <input type="submit" value="submit"> -->
                        </font>
                       
                   <% }%>
                    
     <%               
rs.close();
st.close();
con.close();
%>


<%-- <% 
                    String sn1=request.getParameter("ver1");
                    /* Class.forName("com.mysql.jdbc.Driver");
                    Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/localsearchengine","root","root");
                    Statement st=con.createStatement();
                    ResultSet rs; // this is for name */
                    String sql1="select * from endusersignup where contact='"+sn1+"'";
                    System.out.println(sql1);
          		  rs = st.executeQuery(sql1);
          		
                    
                    
                    if(rs.next())
                    {   %>
                     <font color=green>
                        <input type="hidden" id="actual1" name="actual1" value="taken">
                        You Can Register! 
                        </font>
                        <!-- <input type="submit" value="submit"> -->
                       

                   <% }else {%>
                    <font color=red>
                        Contact Number is Already Exist
                        <input type="hidden" id="actual1" name="actual1" value="available">
                        <!-- <input type="submit" value="submit"> -->
                        </font>
                       
                   <% }%>
                    
     <%               
rs.close();
st.close();
con.close();
%>

 --%>

