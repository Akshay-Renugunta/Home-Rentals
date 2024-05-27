package p1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class DB {
	public static Connection con;
	public static Statement st;
	
	public static void connect() {
	try {
		 Class.forName("com.mysql.cj.jdbc.Driver");
		 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/practice","root","lion");
		 st=con.createStatement();}
	catch(Exception e) {}
	
}}
