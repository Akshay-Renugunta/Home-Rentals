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

<body>
<%
DB.connect();

int id = Integer.parseInt(request.getParameter("D"));

String t = "select * from property where id="+id;

ResultSet rs = DB.st.executeQuery(t);
int price=0;
String path="", name="", address="", dis="", oname="",no="";

if (rs.next()){
	name=rs.getString("name");
	address=rs.getString("address");
	path=rs.getString("path");
	oname=rs.getString("ownerName");
	no=rs.getString("ownerNo");
	dis=rs.getString("description");
	price=rs.getInt("rent");
	
	
	out.println("<img class='rent' src='"+path+"' >");
	out.println("<h1>"+name+"</h1>");
	out.println("<p><b>Rent</b>: "+price+"</p>");
	out.println("<p><b>Address</b>: "+address+"</p>");
	out.println("<h3>About Property</h3>");
	out.println("<p class='discri'>"+dis+"</p>");
	out.println("<p><b>Owner Name</b>: "+oname+"</p>");
	out.println("<p><b>Contact</b>: "+no+"</p>");
	
}

%>
</body>
</html>