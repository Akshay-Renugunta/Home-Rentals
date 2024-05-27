<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "p1.DB" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.button{
color:#265073;
}
</style>
</head>
<body>
<%
DB.connect();

int id=Integer.parseInt(request.getParameter("a1"));
String name=request.getParameter("a2");
String addr=request.getParameter("a3");
String desc=request.getParameter("a4");
int rent=Integer.parseInt(request.getParameter("a5"));
String ownername=request.getParameter("a6");
String ownerno=request.getParameter("a7");
String path=request.getParameter("a8");

String s2="insert into property values("+id+",'"+name+"','"+addr+"','"+desc+"',"+rent+",'"+ownername+"','"+ownerno+"', '"+path+"');";
DB.st.executeUpdate(s2);
out.println("Added Successfully!!<br><br>");
out.println("<a href='./viewRentals.jsp'><input type='button' value='View Properties'></a>");
%>
</body>
</html>