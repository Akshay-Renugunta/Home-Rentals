<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ page import = "java.sql.*" %>
 <%@ page import = "p1.DB" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="./style.css">

</head>
<style>
img{
max-width: 300px;
    max-height: 300px;
}
.prop{
padding:10px 20px;
	background-color:#265073;
	margin-bottom:10px;
	color:white;
	border-radius:10px;
}
</style>
<body>
    <h1><b><i>Home Rentals</i></b></h1>
    <h4>Sabse Sasta Ghar</h4>
   <div class="main">
<%
DB.connect();

String s="select * from property";

ResultSet rs = DB.st.executeQuery(s);
String path="", name="", address="";
int id=0;
String dirPath="./Home Rentals/images/";
while(rs.next()){
	id=rs.getInt(1);
	path=rs.getString("path");
		name=rs.getString("name");
	address=rs.getString("address");
	out.println("<form action='viewPro.jsp' method='post'>");
	out.println("<div class='card'>");
	out.println("<img class='rentimg' src='"+path+"' >");
	out.println("<h1>"+name+"</h1>");
	out.println("<p>"+address+"</p>");
	out.println("<input type='hidden' name='D'  value='"+id+"'/>");
	out.println("<input class='prop' type='submit' value='View Property'/>");
	out.println("</div>");
	out.println("</form>");    
}
%>

 </div>
   
    
        
        
        
        
        
    
 
</body>
</html>