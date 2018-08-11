<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.sql.*" %>
<% 
                    String sn=request.getParameter("ver");
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/localsearchengine","root","root");
                    Statement st=con.createStatement();
                    ResultSet rs = st.executeQuery("select * from signup where contact='"+sn+"'");  // this is for name
                    if(rs.next())
                    {   %>
                        <font color=red>
                        Contact Number already taken!
                        <input type="hidden" id="actual" name="actual" value="taken">
                        <!-- <input type="submit" value="submit"> -->
                        </font>

                   <% }else {%>
                        <font color=green>
                        <input type="hidden" id="actual" name="actual" value="available">
                       
                        </font>
                        <!-- <input type="submit" value="submit"> -->
                   <% }%>
                    
     <%               
rs.close();
st.close();
con.close();
%>