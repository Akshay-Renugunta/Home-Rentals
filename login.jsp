<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import = "java.sql.*" %>
 <%@ page import = "p1.DB" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
DB.connect();
int choice = Integer.parseInt(request.getParameter("D"));

switch(choice){
case 1: 
	int id = Integer.parseInt(request.getParameter("d1"));
	String password = request.getParameter("d2");
	String in = "insert into owner values("+id+", '"+password+"');";
	DB.st.executeUpdate(in);
	response.sendRedirect("owner.html");
	break;

case 2:
	int id1 = Integer.parseInt(request.getParameter("e1"));
	String password1 = request.getParameter("e2");
	String in1 = "insert into renter values("+id1+",'"+password1+"');";
	DB.st.executeUpdate(in1);
	response.sendRedirect("renter.html");
	break;
	
case 3:
	int id2 = Integer.parseInt(request.getParameter("b1"));
	String password2 = request.getParameter("b2");
	String in2 = "select * from owner where id="+id2;
	ResultSet rs = DB.st.executeQuery(in2);
	if(rs.next()){
		if(rs.getString("password").equals(password2)){
			response.sendRedirect("addPro.html");
		}else
			out.println("Password Incorrect!!");
	}else
		out.println("Account not found!!");
	break;
	
case 4:
	int id3 = Integer.parseInt(request.getParameter("c1"));
	String password3 = request.getParameter("c2");
	
	String in3 = "select * from renter where id1="+id3;
	
	ResultSet rs1 = DB.st.executeQuery(in3);
	if(rs1.next()){
		if(rs1.getString("password1").equals(password3)){
			response.sendRedirect("viewRentals.jsp");
		}else
			out.println("Password Incorrect!!");
	}else
		out.println("Account not found!!");
	break;
	
}

%>
</body>
</html>